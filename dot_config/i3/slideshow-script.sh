#!/bin/bash

DIR=$HOME/Pictures/wallpapers/

#DISPLAY=:0 feh --bg-max --image-bg "#111111" --randomize $DIR/*


#new_wallpaper=$HOME/Pictures/wallpapers/current_wallpaper.png
#convert $PIC -vignette "0x20+10%+10%" $new_wallpaper



PIC=$(ls $DIR/*.jpg $DIR/*.jpeg $DIR/*.png | shuf -n 1)

DISPLAY=:0 feh --bg-max "$PIC" --image-bg "#111111" 

#convert $PIC $HOME/Pictures/wallpapers/current_wallpaper.png

ln -sf "$PIC" $HOME/Pictures/wallpapers/current_wallpaper


# notify-send "sfondo: $PIC" -a "Sta facendo??"

exit 0
