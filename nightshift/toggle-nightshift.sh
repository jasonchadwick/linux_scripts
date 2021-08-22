#!/bin/bash

enabled=$(gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled)
if [ $enabled = true ]
then
    opposite=false
    echo "Toggling off nightshift"
else
    opposite=true
    echo "Toggling on nightshift"
fi
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled $opposite