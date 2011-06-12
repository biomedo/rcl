cd $DEVROOT/tools/source/imagemagick
export IMAGEMAGIC_DIR=$PWD
export IMAGEMAGIC_ARCH=x86_64_linux
./configure --prefix=$DEVROOT/tools/install/imagemagickbin --without-perl 
make -j1

