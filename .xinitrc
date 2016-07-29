#!/bin/sh
# ~/.xinitrc

# load .Xresources
xrdb ~/.Xresources &

# starts the urxvt daemon
urxvtd -q -o -f
# ensures deafault cursor
xsetroot -cursor_name left_ptr &

# if screens get swapped
xrandr --output HDMI-1 --right-of HDMI-2 &

# start mpd daemon for using ncmpcpp (music player)
mpd &

#compton
compton -b &

# if using ibus-daemon uncomment
#ibus-daemon -drx

# window managers
# exec gnome-session --session=gnome-wayland
exec 2bwm
