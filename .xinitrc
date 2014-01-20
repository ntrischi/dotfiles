#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Disable system beep
xset -b

# xrdb -merge ~/.i3/xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Set background
feh --bg-scale ~/Pictures/pcb.jpg

# Autolock 
xautolock -time 3 -locker slock -corners ----&

# Start window manager
exec /usr/bin/i3
