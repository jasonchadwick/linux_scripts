#!/bin/bash
# gradually redshift the screen over time (currently: starts at 8pm, max at 10pm)

h=$(date +"%H")
m=$(date +"%M")

if [ -s /home/jchad/scripts/nightshift/fixed-temp.txt ]; then
    t=$(cat /home/jchad/scripts/nightshift/fixed-temp.txt)
else
    t=6000
    if [ $h -ge 20 ] && [ $h -le 21 ]; then
        time=$( bc <<< "scale=2; $h + $m / 60" )
        t=$( printf "%.0f" $( bc <<< "scale=0; 6000 - 2250 * ($time - 20)" ) )
        echo $time
    elif [ $h -ge 22 ] || [ $h -le 5 ]; then
        t=1500
    fi
fi

echo $t

gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature $t
