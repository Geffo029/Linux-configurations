#!/bin/sh

if [[ -z $1 ]];
then
	# echo "$0: !!PASS ONE PARAMETER!!"
	BRIGHTNESS=0.8
else
	BRIGHTNESS=$1
fi


xrandr --output eDP-1 --brightness $BRIGHTNESS || xrandr --output eDP1 --brightness $BRIGHTNESS
