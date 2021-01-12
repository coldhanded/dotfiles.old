#!/bin/bash



declare options=("zsh
bspwm
picom
polybar
sxhkd
kitty
xresources
autostart
quit")

. "${HOME}/.cache/wal/colors.sh"
choice=$(echo -e "${options[@]}" | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	picom)
		choice="$HOME/.config/bspwm/picom.conf"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	sxhkd)
		choice="$HOME/.config/bspwm/sxhkd/sxhkdrc"
	;;
	kitty)
		choice="$HOME/.config/kitty/kitty.conf"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	autostart)
		choice="$HOME/.config/bspwm/autostart.sh"
	;;
	*)
		exit 1
	;;
esac
 subl3 "$choice"
# kitty -e nano "$choice"
