#!/bin/sh
WALLPAPERS="$HOME/wallpapers"
#WALLPAPERS="$HOME/Pictures"
while true; do
	feh --draw-filename --draw-tinted   --recursive --randomize --bg-fill $WALLPAPERS
	sleep  60
done
