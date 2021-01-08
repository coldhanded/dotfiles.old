#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

if [systemd-detect-virt = "oracle"];
	/usr/bin/VBoxClient-all
fi

#xset +fp /home/cold/.local/share/fonts
#xset fp rehash

#make fontdir
#xset +fp /usr/share/fonts/misc

make fontdir
for dir in /home/cold/.local/share/fonts/ /usr/share/fonts/misc/; do xset +fp $dir; done && xset fp rehash