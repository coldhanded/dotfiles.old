#!/bin/bash

. "${HOME}/.cache/wal/colors.sh"
IMG_PATH=/home/cold/Pictures/
TIME=3000 #Miliseconds notification should remain visible

prog="
1.quick_fullscreen
2.delayed_fullscreen
3.section
"

cmd=$(dmenu  -l 20  -nf "$color15" -nb "$color0" -sf "$color15" -sb "$color1" -p 'Choose Screenshot Type'   <<< "$prog")

cd $IMG_PATH
case ${cmd%% *} in

	1.quick_fullscreen)	scrot -d 1 '%Y-%m-%d-@%H-%M-%S-scrot.png'  && notify-send -u low -t $TIME 'Scrot' 'Fullscreen taken and saved'  ;;
	2.delayed_fullscreen)	scrot -d 4 '%Y-%m-%d-@%H-%M-%S-scrot.png'  && notify-send -u low -t $TIME 'Scrot' 'Fullscreen Screenshot saved'    ;;
	3.section)	scrot -s '%Y-%m-%d-@%H-%M-%S-scrot.png' && notify-send -u low -t $TIME 'Scrot' 'Screenshot of section saved'    ;;
  	*)		exec "'${cmd}'"  ;;
esac
