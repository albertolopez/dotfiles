#!/bin/sh
# set German keyboard layout
#setxkbmap -layout gb
xset +fp /usr/share/fonts/local
xset fp rehash
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

{ sleep 3; xmodmap ~/.Xmodmap; } &
exec ck-launch-session i3
