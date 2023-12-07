#!/bin/sh

COMMAND=$1

SINK=@DEFAULT_SINK@
#SINK=1

volume=$(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}' | sed 's/[^0-9]*//g')

case $COMMAND in
        up)
                if [ $volume -le 140 ]; then
			pactl set-sink-volume $SINK "+10%" > /dev/null
		elif [ $volume -lt 150 ]; then
			pactl set-sink-volume $SINK "150%" > /dev/null
		fi
                ;;
        down)
                pactl set-sink-volume $SINK "-10%" > /dev/null
                ;;
        mute)
                pactl set-sink-mute $SINK toggle > /dev/null
                ;;
esac

pkill --signal SIGRTMIN+12 i3blocks

# Query pactl for the current volume and whether or not the speaker is muted
volume=$(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}' | sed 's/[^0-9]*//g')
mute=$(pactl list sinks | grep 'Mute:' | head -n 1 | awk '{print $2}')

case $COMMAND in
        up | down)
                notify-send -a "volume_notify" -u low \
			--icon audio-volume-high \
			"Volume: ${volume}%"
		;;
	mute)
		notify-send -a "volume_notify" -u low -i audio-volume-high "Volume: $([[ $mute = no ]] && echo unmuted || echo muted)"
		;;
	show)
		echo $volume
esac
