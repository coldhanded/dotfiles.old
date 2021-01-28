#!/bin/bash

. "${HOME}/.cache/wal/colors.sh"
IMG_PATH=/home/cold/pics/screenshots/
TIME=3000 #Miliseconds notification should remain visible
prog="Quick
Delayed
Region"
cmd=$(dmenu -nf "$color15" -nb "$color0" -sf "$color15" -sb "$color1" -p ' Choose Screenshot Type '<<< "$prog")
cd $IMG_PATH
case ${cmd%% *} in
	Quick)	scrot -d 1 '%Y-%m-%d-@%H-%M-%S-scrot.png'  && notify-send -u low -t $TIME 'Scrot' 'Fullscreen screenshot saved'  ;;
	Delayed)	scrot -d 4 '%Y-%m-%d-@%H-%M-%S-scrot.png'  && notify-send -u low -t $TIME 'Scrot' 'Fullscreen screenshot saved'    ;;
	Region)	scrot -s '%Y-%m-%d-@%H-%M-%S-scrot.png' && notify-send -u low -t $TIME 'Scrot' 'Screenshot of region saved'    ;;
  	*)		exec "'${cmd}'"  ;;
esac