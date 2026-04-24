#!/bin/bash

h=$(date +"%H")

if [ -s /home/jchad/scripts/nightshift/fixed-temp.txt ]; then
    zenity --notification --text="Enabling default nightshift"
    rm /home/jchad/scripts/nightshift/fixed-temp.txt
    /home/jchad/scripts/nightshift/update-screen-temp.sh
else
    if [ $h -ge 6 ] && [ $h -le 19 ]; then
        zenity --notification --text="Nightshift disabled. No effect"
    else
        zenity --notification --text="Enabling fixed nightshift"
        echo 2500 > /home/jchad/scripts/nightshift/fixed-temp.txt
        /home/jchad/scripts/nightshift/update-screen-temp.sh
    fi
fi