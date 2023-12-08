#!/bin/sh

COMMAND=$1

brightness_max=$(brightnessctl m)

case $COMMAND in
	up)
		brightnessctl set +10%
		;;
	down)
		brightness=$(brightnessctl g)
		if [ $brightness -gt 300 ]; then
			brightnessctl set 10%-
		elif [ $brightness -gt 150 ]; then
			brightnessctl set 150
		fi
		;;
esac

pkill --signal SIGRTMIN+12 i3blocks

brightness=$(brightnessctl g)
brightness=$(echo "scale=1; $brightness / $brightness_max * 100" | bc)
brightness=$(printf "%.0f" $brightness)

notify-send -a "brightness_notify" -u low "Brightness: ${brightness}%"
