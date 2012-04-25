#!/bin/sh
# set German keyboard layout
#setxkbmap -layout gb
xset +fp /usr/share/fonts/local
xset fp rehash
/usr/bin/urxvt256c-mld -q -o -f

{ sleep 3; xmodmap ~/.Xmodmap; } &
xrandr --output LVDS1 --mode 1280x800 --output VGA1 --mode 1280x1024 --left-of LVDS1
exec ck-launch-session i3
