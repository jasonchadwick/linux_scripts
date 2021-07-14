#!/bin/bash

# install dependencies: add more if you want additional ffmpeg/mpv codecs and features
sudo apt-get install libssl-dev libfribidi-dev libluajit-5.1-dev libx264-dev xorg-dev libegl1-mesa-dev libfreetype-dev libfontconfig-dev
# you need at least one of these to enable audio output
sudo apt-get install libasound2-dev libpulse-dev

# Ubuntu 20.04
sudo apt-get install python-is-python3
# Ubuntu <= 19.04
sudo apt-get install python-minimal

git clone https://github.com/mpv-player/mpv-build.git
cd mpv-build

# minimal install, feel free to add more options to ffmpeg_options and mpv_options
echo --enable-libx264 >> ffmpeg_options
echo --enable-vapoursynth >> mpv_options
echo --enable-libmpv-shared >> mpv_options
./rebuild -j4
sudo ./install
cd ..
