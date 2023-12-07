#!/bin/bash

# Arbitrary but unique message tag
msgTag="myvolume"

# Change the volume using pactl
pactl set-sink-volume @DEFAULT_SINK@ "$@" > /dev/null

# Query pactl for the current volume and whether or not the speaker is muted
volume=$(pactl list sinks | grep 'Volume:' | head -n 1 | awk '{print $5}' | sed 's/[^0-9]*//g')
mute=$(pactl list sinks | grep 'Mute:' | head -n 1 | awk '{print $2}')

if [[ $volume -eq 0 || "$mute" == "yes" ]]; then
	# Show the sound muted notification
	notify-send -a "volume_notify" -u low -i audio-volume-muted "Volume muted" 
else
	# Show the volume notification
	notify-send -a "volume_notify" -u low -i audio-volume-high "Volume: ${volume}%"
fi

# Play the volume changed sound
#canberra-gtk-play -i audio-volume-change -d "changeVolume"
