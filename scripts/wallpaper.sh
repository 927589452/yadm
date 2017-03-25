#!/bin/sh
WALLPAPERS="/usr/home/jens/wallpapers"
#WALLPAPERS="/usr/home/jens/Pictures"
while true; do
	feh --draw-filename --draw-tinted   --recursive --randomize --bg-fill $WALLPAPERS
	sleep  60
done
