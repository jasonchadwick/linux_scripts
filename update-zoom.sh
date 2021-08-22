#!/bin/sh
# update zoom to latest version. I had issues with it being out of date often so this is my solution.

wget https://zoom.us/client/latest/zoom_amd64.deb -P /home/jchad/Downloads
apt install /home/jchad/Downloads/zoom_amd64.deb
rm /home/jchad/Downloads/zoom_amd64.deb
