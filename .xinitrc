#!/bin/sh
#
#~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# start urxvt daemon
urxvtd -q -o -f

xsetroot -cursor_name left_ptr &

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# set background
feh --bg-scale ~/Pictures/2.jpg &

# lemonbar
$HOME/scripts/bar.sh | lemonbar -p -F "#FFB5B2AF" -B "#FF282522" -g "1920x20+0+0" -f "tewi" -d &

mpd &

# ibus daemon starting
ibus-daemon -drx

#exec i3
#exec startlxqt
exec 2bwm
