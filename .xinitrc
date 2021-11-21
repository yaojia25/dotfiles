#!/bin/sh
xrdb -merge ~/.Xresources

export LANG=zh_CN.UTF-8
export QT_SCALE_FACTOR=1.25
export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_STYLE_OVERRIDE=gtk2
#XDG_CURRENT_DESKTOP=GNOME
# start some nice programs

# Keyring
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
#mkdir -p "$HOME"/.local/share/keyrings

xrandr --output Virtual-1 --mode 2560x1440

exec i3
