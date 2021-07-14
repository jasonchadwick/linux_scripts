#!/bin/bash
# download random wallpaper (url given by random_wallpaper.py)

wgetreturn=1
while [ $wgetreturn -ne 0 ]
do
    source /home/jchad/miniconda3/etc/profile.d/conda.sh
    conda activate py38
    output=$(python /home/jchad/Scripts/random_wallpaper.py)
    IFS=' ' read -ra output_array <<< "$output"
    idx=${output_array[0]}
    url=${output_array[1]}
    wget -O /tmp/wallpaper.jpg $url
    wgetreturn=$?
    if [ $wgetreturn -ne 0 ]
    then
        continue
    fi
    cp /tmp/wallpaper.jpg "/home/jchad/Pictures/Backgrounds/wallpaper_$idx"

    unset newest

    for filename in /home/jchad/Pictures/Google_Backgrounds/
    do
        [ -f "$filename" ] && [ "$filename" -nt "$newest" ] && newest=$filename
    done

    #gsettings set org.gnome.desktop.background picture-uri $newest
done
