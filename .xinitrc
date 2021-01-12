#!/bin/sh
#   _________  __   ___  __ _____   _  _____  ____
#  / ___/ __ \/ /  / _ \/ // / _ | / |/ / _ \/ __/
# / /__/ /_/ / /__/ // / _  / __ |/    / // /\ \  
# \___/\____/____/____/_//_/_/ |_/_/|_/____/___/ 
# coldhands.xyz
# 2021

make fontdir
for dir in /home/cold/.local/share/fonts/ /usr/share/fonts/misc/; do xset +fp $dir; done && xset fp rehash