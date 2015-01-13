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


# Disable Mouse when typing.
syndaemon -t -k -i 2 &

# Start window manager i3
exec /usr/bin/awesome
#exec /usr/bin/i3
