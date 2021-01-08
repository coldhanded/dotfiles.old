#!/bin/bash

WP_DIR=/home/cold/Dropbox/
DESK=Wallpaper

BG_LIST=($WP_DIR/$DESK/*)
N=${#BG_LIST[@]}
((N=RANDOM%N))
RAND_BG=$(basename ${BG_LIST[$N]})


feh --bg-scale $WP_DIR/$DESK/$RAND_BG
wal -i $WP_DIR/$DESK/$RAND_BG
reload_dunst.sh
