sudo apt-get build-dep emacs23
sudo apt-get install libgtk2.0-dev
sudo apt-get install xserver-xorg-dev
sudo apt-get install xorg-dev
sudo apt-get install libncurses5 libncurses5-dev
sudo apt-get install libidl.dev
sudo apt-get install texinfo
sudo apt-get install libxpm-dev libgif-dev libtiff-dev

cd source/emacs
#./configure --prefix=/glouton/lian/develop/tools/install/emacsbin/ --with-xft --with-x-toolkit=gtk
./configure --with-xft --with-x-toolkit=gtk
make -j2
#sudo make install
