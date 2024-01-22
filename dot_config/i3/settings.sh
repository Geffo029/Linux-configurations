#!/usr/bin/env sh


terminal=$1
case $terminal in 
	alacritty)
		terminal="$1 --title "Settings" --command"
		;;
	*)
		terminal="$1 -e sh -c"
		;;
esac

#dmenu_run -fn 'monospace-11' -nf '#FFFFFF' -nb '#111111' -sf '#000000' -sb '#69c924' -b
#choise=$(echo "Volume|Network" | rofi -dmenu -sep '|' -p "Settings")
choise=$(echo "Volume|Network" | rofi -dmenu -sep '|' -p "Settings")
case $choise in
	Volume)
		cmd=pulsemixer
		;;
	Network)
		cmd=nmtui
		;;
	*)
		;;
esac

if [ -n "$cmd" ]
then
	$terminal $cmd
else
	echo "no"
fi


exit 0
