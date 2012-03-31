#!/bin/sh
# set German keyboard layout
#setxkbmap -layout gb
xmodmap ~/.speedswapper
exec ck-launch-session i3
#exec ck-launch-session xmonad
xset +fp /usr/share/fonts/local
xset fp rehash
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
