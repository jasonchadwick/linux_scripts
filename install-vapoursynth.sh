# common build tools
sudo apt install autoconf automake libtool nasm cython3

# zimg library
git clone https://github.com/sekrit-twc/zimg.git
cd zimg   
./autogen.sh
./configure
make #-j4
sudo checkinstall --pkgversion=3.0.2

cd ..

# build Vapoursynth
git clone https://github.com/vapoursynth/vapoursynth.git
cd vapoursynth
./autogen.sh
./configure
make
sudo checkinstall
cd ..

sudo ldconfig

# make Python find the Vapoursynth module
# there MUST be a better way to do this!
#sudo ln -s /usr/local/lib/python3.8/site-packages/vapoursynth.so /usr/lib/python3.8/lib-dynload/vapoursynth.so
