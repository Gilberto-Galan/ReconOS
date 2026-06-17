#!/bin/bash

echo "🚀 Iniciando la instalacion del entorno personalizado ReconOS..."

#* 1. Actualizar el sistema e instalar absolutamente todas las herramientas
echo "📦 Instalando herramientas de sistema e interfaz grafica..."
sudo apt update && sudo apt install -y \
    bspwm sxhd kitty rofi polybar \
    unzip ssh btop curl git feh fastfetch

#* 2. Crear la carpeta .config si no existe
mkdir -p ~/.config

#* 3. Copiar todas las configuraciones personalizadas al sistema
echo "🎨 Aplicando el diseño y personalizaciones..."
cp -r bspwm ~/.config/
cp -r sxhd ~/.config/
cp -r kitty ~/.config/
cp -r rofi ~/.config/
cp -r polybar ~/.config/
cp -r btop ~/.config/

#* 4. Banner de bienvenida
echo "🎨 Configurando banner de bienvenida personalizado..."

cat << 'EOF' >> ~/.bashrc

# =========================================================
# BANNER DE BIENVENIDA - ENTORNO PERSONALIZADO
# =========================================================
if [ -x "$(command -v fastfetch)" ]; then
    fastfetch
fi

# Imprimir el logo ASCII de ReconOS en color Cian
echo -e "\e[1;36m"
cat << 'BANNER'
______                      _____ _____ 
| ___ \                    |  _  /  ___|
| |_/ /___  ___ ___  _ __  | | | \ `--. 
|    // _ \/ __/ _ \| '_ \ | | | |`--. \
| |\ \  __/ (_| (_) | | | |\ \_/ /\__/ /
\_| \_\___|\___\___/|_| |_| \___/\____/  
BANNER
echo -e "\e[0m"

echo -e "\e[1;34m┌────────────────────────────────────────────────────────┐\e[0m"
echo -e "\e[1;32m  🚀 ¡Bienvenido a tu nuevo entorno de desarrollo!       \e[0m"
echo -e "\e[1;36m  👤 Customizado por: Gilberto Galan                     \e[0m"
echo -e "\e[1;36m  🐙 GitHub: https://github.com/Gilberto-Galan           \e[0m"
echo -e "\e[1;34m└────────────────────────────────────────────────────────┘\e[0m"
echo ""
EOF

