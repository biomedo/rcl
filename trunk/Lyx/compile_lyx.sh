cd ./source/lyx
sudo apt-get build-dep lyx
sudo apt-get install stow
sudo apt-get install automake
sudo apt-get install autoconf
./autogen.sh
./configure --with-version-suffix=200
make
sudo make install prefix=/usr/local/stow/lyx200
cd /usr/local/stow
sudo stow lyx200
