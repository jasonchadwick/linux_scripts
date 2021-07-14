#!/bin/bash
# make the wallpaper file a random picture from the folder

cp $(find /home/jchad/Pictures/Backgrounds/ -type f | shuf -n 1) /home/jchad/Pictures/wallpaper.jpg