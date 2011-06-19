#!/usr/bin/env bash

# Time-stamp: <2011-06-18 08:42:43 Saturday by lian>

# @version 1.0
# @author lian

rootdir=$(pwd)
# 安装过程中走了些弯路，其实很容易在8.04上编译通过，不过首先要有编译环境，也许能用到的依赖关系：
sudo apt-get install python-enchant 
sudo apt-get install python-gtk2-dev 
sudo apt-get install libgtk2.0-dev 
sudo apt-get install libdbus-1-dev libdbus-glib-1-dev

# 1.编译dubs-python：到 http://dbus.freedesktop.org/releases/dbus-python/ 下载dbus-python 0.83源码编译，依赖libdbus-1-dev libdbus-glib-1-dev两个文件。
# 解压缩源代码，进入目录执行：
# ./configure --prefix=/usr
# make
# sudo make install

# I have installed this dbus-python package, it's done.

# 2.编译ibus：
# 到 http://code.google.com/p/ibus/downloads/list 下载ibus 和你需要到输入法，解压缩，进入相应目录，执行
cd ${rootdir}/ibus
./configure --prefix=/usr/local/stow    --with-gtk-im-module-dir=/usr/lib/gtk-2.0/2.10.0/immodules/
make
sudo make install

# 3.编译拼音输入法：
# 到 http://code.google.com/p/ibus/downloads/list 下载ibus-pinyin，解压缩
# 可以用下载工具下载 http://ibus.googlecode.com/files/pinyin ... .6.tar.bz2 拼音输入法词库，复制到ibus-pinyin/engine/下，不这么做的话程序也会启用wget到这里自动下载，故网速快就不必了。（这个地址在今后可能还会变，可以看ibus-pinyin/engine/目录的makefile.am中查找）
# 编译也只需要执行
cd ${rootdir}/ibus-pinyin
./configure --prefix=/usr/local/stow
make
sudo make install
# 编译拼音词库索引时间稍长。
# 4.编译五笔输入法：
# 到 http://code.google.com/p/ibus/downloads/list 下载ibus-table包，还要下载对应的码表输入法，如ibus-table-wubi ibus-table-erbi解压缩，进入目录执行
# ./configure --prefix=/usr 具体可先执行 ./configure --help查看有哪些选项）
# make 
# sudo make install

# cd /usr/local/stow

# 5.测试（参考http://code.google.com/p/ibus/wiki/ReadMe 官方文档）：
# Test ibus
# Run ibus

# use ibus-setup to enable ibus and engines
# /usr/bin/ibus-setup

# Run gnome, kde or old X applications

# gtk application
# $ GTK_IM_MODULE=ibus gedit
# kde application
# $ QT_IM_MODULE=ibus kwrite
# 上面如果不行，可以再：
# $ XMODIFIERS="@im=ibus" gedit

# 如果正常，可以把
# export XMODIFIERS=@im=ibus
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# 写入到 ~/.bashrc中就可以正常启动ibus了。
# 现在变成ibus-deamon了

# =====================20080905=====================

# 6.补充：
# 如果出现能启动ibus 但不能激活输入法或者输入法没有光标跟随到情况，可以下载新的包重新安装或者如下设置：
# sudo cp /usr/lib/gtk-2.0/immodules/* /usr/lib/gtk-2.0/2.10.0/immodules/
# 编辑/usr/lib/gtk-2.0/2.10.0/immodule-files.d/libgtk2.0-0.immodules
# sudo vi /usr/lib/gtk-2.0/2.10.0/immodule-files.d/libgtk2.0-0.immodules
# 在文件到最后添加两行：
# "/usr/lib/gtk-2.0/2.10.0/immodules/im-ibus.so"
# "ibus" "X Input Method" "gtk20" "/usr/share/locale" "zh"
# 重新登录即可。
# ************1016**感谢33楼bus387 *****
# 引用:
# 如果./autogen.sh --prefix=/usr --with-gtk-im-module-dir=/usr/lib/gtk-2.0/2.10.0/immodules/ --enable-pygconf

# sudo apt-get install libgconf2-dev
# enable-pygconf这个选项打开后，没有上面这个包，无法编译。

# ibus开发很活跃，更新比较频繁，感谢作者Shawn.P.Huang 的辛勤劳动。
