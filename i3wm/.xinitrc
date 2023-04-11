#!/bin/sh
xrdb -merge ~/.Xresources

if [ -f ~/.xprofile ] ; then
	source ~/.xprofile
fi

exec bspwm
