#!/bin/sh
# set German keyboard layout
#setxkbmap -layout gb
xset +fp /usr/share/fonts/local
xset fp rehash
/usr/bin/urxvt256c-mld -q -o -f

{ sleep 3; xmodmap ~/.Xmodmap; } &
exec ck-launch-session i3
