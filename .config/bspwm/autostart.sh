#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#$HOME/.config/polybar/launch.sh &
$HOME/polybar/launch.sh &

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
numlockx on &
blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
run dropbox &
run discord &
run dunst &
wal -R &
