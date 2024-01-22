#!/usr/bin/env bash

screenshot_file=/tmp/screelock.png

maim -u -m 2 $screenshot_file
#env MAGICK_OCL_DEVICE=true convert -scale 10% -resize 1000% $screenshot_file $screenshot_file
env MAGICK_OCL_DEVICE=true convert -blur 0x3 $screenshot_file $screenshot_file
echo $screenshot_file



#current_wallpaper="$HOME/Pictures/wallpapers/current_wallpaper" 
#screenlock_file="/tmp/screenlock.png"

#image_info=$(identify -format "%w-%h" "$current_wallpaper")

#IFS='-' read -r width height <<< "$image_info"
#echo aaa
#image_aspect_ratio=$(echo "scale=2; $width / $height" | bc)

#if [ $(echo "$image_aspect_ratio > 1.78" | bc) ]
#then
#	convert "$current_wallpaper" -resize 1366x "$screenlock_file"
#else
#	#new_height=$()
#	convert $current_wallpaper -resize x768 $screenlock_file
#fi

#echo $screenlock_file
