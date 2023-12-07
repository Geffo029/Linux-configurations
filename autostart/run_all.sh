#!/bin/sh

AUTOSTART_DIR=$HOME/.config/autostart

this_file=$(basename $0)

for file in $AUTOSTART_DIR/*.sh
do
	#file=$(basename $file)
	#echo $file
	#echo $this_file
	if [ $(basename $file) != $this_file ]; then
		. $file
		# echo $file
	fi
done
