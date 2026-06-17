#!/bin/bash

#Lista
if [ -z "$1" ]; then
echo " Lock"
echo " Shutdown"
echo "󰓦 Reboot"
echo " Hibernate"
echo "󰍃 Logout"

else
case "$1" in
	*Lock)
	i3lock -i ~/Imagenes/oni-mask-cyborg.png ;;
	*Shutdown)
	systemctl poweroff ;;
	*Reboot)
	systemctl reboot ;;
	*Suspend)
	systemctl suspend ;;
	*Hibernate)
	systemctl hibernate ;;
	*Logout)
	bspc quit ;;
esac
fi
