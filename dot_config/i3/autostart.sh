#!/bin/sh


AUTOSTART_DIR=/home/stefano/.config/autostart

this_file=$(basename $0)

for file in $AUTOSTART_DIR/*.sh
do
	if [ $(basename $file) != $this_file ]; then
		. "$file"
		#echo $file
		#notify-send 111 &
	fi
done


exit
