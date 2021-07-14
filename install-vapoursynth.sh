#!/bin/bash

# common build tools
sudo apt-get install g++ make autoconf automake libtool pkg-config nasm git

# zimg library
git clone https://github.com/sekrit-twc/zimg.git
cd zimg   
./autogen.sh
./configure
make -j4
sudo make install

cd ..

# Cython for Python3. !!! Vapoursynth requires Cython >= 0.28 !!!
sudo apt-get install cython3

# build Vapoursynth (note: master branch may be broken, use latest release tag instead)
git clone --branch R52 https://github.com/vapoursynth/vapoursynth.git
cd vapoursynth
./autogen.sh
./configure
make -j4
sudo make install
cd ..

sudo ldconfig

# make Python find the Vapoursynth module
# there MUST be a better way to do this!
sudo ln -s /usr/local/lib/python3.8/site-packages/vapoursynth.so /usr/lib/python3.8/lib-dynload/vapoursynth.so
