#!/bin/sh
xrdb -merge ~/.Xresources

export LANG=zh_CN.UTF-8
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_STYLE_OVERRIDE=gtk2
#XDG_CURRENT_DESKTOP=GNOME
# start some nice programs
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
# Keyring
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
#mkdir -p "$HOME"/.local/share/keyrings

xrandr --output Virtual-1 --mode 2560x1440
exec bspwm
