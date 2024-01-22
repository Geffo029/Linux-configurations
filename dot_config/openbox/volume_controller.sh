#!/usr/bin/env bash

COMMAND=$1

SINK=@DEFAULT_SINK@
#SINK=1

#volume=$(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}' | sed 's/[^0-9]*//g')

case $COMMAND in
	up)
		wpctl set-volume -l 1.5 $SINK "10%+" > /dev/null
		;;
	down)
		wpctl set-volume $SINK "10%-" > /dev/null
		;;
	mute)
		wpctl set-mute $SINK toggle > /dev/null
		;;
esac
# case $COMMAND in
# 	up)
# 		if [ $volume -le 140 ]; then
# 			pactl set-sink-volume $SINK "+10%" > /dev/null
# 		elif [ $volume -lt 150 ]; then
# 			pactl set-sink-volume $SINK "150%" > /dev/null
# 		fi
# 		;;
# 	down)
# 		pactl set-sink-volume $SINK "-10%" > /dev/null
# 		;;
# 	mute)
# 		pactl set-sink-mute $SINK toggle > /dev/null
# 		;;
# esac

#pkill --signal SIGRTMIN+12 i3blocks

# Query pactl for the current volume and whether or not the speaker is muted
# volume=$(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}' | sed 's/[^0-9]*//g')
# mute=$(pactl list sinks | grep 'Mute:' | head -n 1 | awk '{print $2}')

#volume=$(echo "$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}')*100" | bc)
#volume_info=($(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2, $3}'))
read -r volume muted <<< "$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2, $3}')"
volume=$(printf "%.0f" $(echo $volume*100 | bc))

case $COMMAND in
	up | down)
		notify-send -a "volume_notify" -u low \
			--icon audio-volume-high \
			"Volume: ${volume}%"
		;;
	mute)
		notify-send -a "volume_notify" -u low \
			-i audio-volume-high \
			"Volume: $([[ $muted = "[MUTED]" ]] && echo muted || echo unmuted)"
		;;
	show)
		echo $volume
esac
