#!/bin/bash



declare options=("bash
bspwm
picom
polybar
sxhkd
termite
xresources
zsh
quit")

. "${HOME}/.cache/wal/colors.sh"
choice=$(echo -e "${options[@]}" | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	picom)
		choice="$HOME/.config/picom/picom.conf"
	;;
	polybar)
		choice="$HOME/polybar/config"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	termite)
		choice="$HOME/.config/termite/config"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
 subl3 "$choice"
# termite -e nano "$choice"
# emacsclient -c -a emacs "$choice"
