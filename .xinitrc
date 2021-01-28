#!/bin/sh

# Bitmap fonts
make fontdir
for dir in /home/cold/.local/share/fonts/ /usr/share/fonts/misc/; do xset +fp $dir; done && xset fp rehash

# Xorg cleanup
USERXSESSION="$XDG_CACHE_HOME/x11/xsession"
USERXSESSIONRC="$XDG_CACHE_HOME/x11/xsessionrc"
ALTUSERXSESSION="$XDG_CACHE_HOME/x11/Xsession"
ERRFILE="$XDG_CACHE_HOME/x11/xsession-errors"