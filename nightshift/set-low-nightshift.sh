#!/bin/bash

if [ -s /home/jchad/scripts/nightshift/fixed-temp.txt ]; then
    rm /home/jchad/scripts/nightshift/fixed-temp.txt
    /home/jchad/scripts/nightshift/update-screen-temp.sh
else
    echo 2500 > /home/jchad/scripts/nightshift/fixed-temp.txt
    /home/jchad/scripts/nightshift/update-screen-temp.sh
fi