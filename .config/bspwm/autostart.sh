#   _________  __   ___  __ _____   _  _____  ____
#  / ___/ __ \/ /  / _ \/ // / _ | / |/ / _ \/ __/
# / /__/ /_/ / /__/ // / _  / __ |/    / // /\ \  
# \___/\____/____/____/_//_/_/ |_/_/|_/____/___/ 
# coldhands.xyz
# 2021

#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Polybar
#$HOME/.config/polybar/launch.sh &
$HOME/polybar/launch.sh &

# Autostarts
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
numlockx on &
picom --config $HOME/.config/bspwm/picom.conf &
run dropbox &
run discord &
run dunst &
wal -R &
$HOME/.scripts/reload_dunst.sh &

