#!/bin/sh
xrdb -merge ~/.Xresources

export LANG=zh_CN.UTF-8
export QT_SCALE_FACTOR=1.25

# start some nice programs
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrandr --output Virtual-1 --mode 2560x1440
xsetroot -cursor_name left_ptr

exec i3
