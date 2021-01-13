#!/bin/bash
#   _________  __   ___  __ _____   _  _____  ____
#  / ___/ __ \/ /  / _ \/ // / _ | / |/ / _ \/ __/
# / /__/ /_/ / /__/ // / _  / __ |/    / // /\ \  
# \___/\____/____/____/_//_/_/ |_/_/|_/____/___/ 
# coldhands.xyz
# 2021

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

$HOME/.config/polybar/launch.sh &

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
blueberry-tray &
picom --config $HOME/.config/picom/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
sleep 5 && run dropbox &
wal -R &
$HOME/.scripts/reload_dunst.sh &