#!/bin/sh
# ~/.xinitrc

# load .Xresources
xrdb ~/.Xresources &

# starts the urxvt daemon
urxvtd -q -o -f

# ensures deafault cursor
xsetroot -cursor_name left_ptr &

# if screens get swapped
xrandr --output HDMI1 --right-of HDMI2 &

#compton
compton -b &

# if using ibus-daemon uncomment
#ibus-daemon -drx

# lemon bar for time and such
$HOME/bin/bar.sh | lemonbar -p -f "Termsyn" -g 40x15+940+0 &

# set background
feh --bg-scale $HOME/walls/building.jpg &

# window managers
# exec gnome-session --session=gnome-wayland
exec 2bwm
