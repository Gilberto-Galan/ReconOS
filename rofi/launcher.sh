#!/bin/bash
if [ -f "$HOME/.config/dotfiles/language" ]; then
    LANGUAGE=$(cat "$HOME/.config/dotfiles/language")
else
    LANGUAGE=$(echo "$LANG" | cut -c1-2)
fi

case "$LANGUAGE" in
    es) prompt="Buscar" ;;
    pt) prompt="Buscar" ;;
    fr) prompt="Rechercher" ;;
    ru) prompt="Поиск" ;;
    *) prompt="Search" ;;
esac

rofi -show drun -modi drun,run,window,Power:~/.config/rofi/rofi-power.sh -p "$prompt"
