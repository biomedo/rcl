#!/usr/bin/env bash

# Time-stamp: <2013-04-28 00:19:17 Sunday by lian>

# @version 1.0
# @author lian

# this script is mainly used to merge lian's emacs config into ahei's emacs.
# ahei-lian-patch.diff is modification based on ahei

lianemacspath=$(pwd)
aheiemacspath=$1
dateTime=`date '+%F_%T'`

# auctex depends on the system, e.g. x86_linux, x86_64_linux
auctex=./lian-lisps/auctex
if [[ -d "$auctex" && ! -L "$auctex" ]]; then
    mv "$auctex" "./auctex-backup-$dateTime-by-install"
elif [[ -d "$auctex" && -L "$auctex" ]]; then
    rm -f "$auctex"
fi
osauctex="../multi-platform/auctex/$(../lian-dot-bash/getarch)"
ln -sf "$osauctex" "$auctex"

# firstly go to ahei's path and revert all the modification and then apply
# ahei-lian-patch.diff
cd ${aheiemacspath}
# ./clean.sh
# svn revert -R *
# svn revert .emacs
# patch -p0 < ${lianemacspath}/ahei-lian-patch.diff

# ln my lian-emacs-lisp and lian-lisps to the ahei subdirectory
# ln -sf ${lianemacspath}/lian-lisps-settings ${aheiemacspath}/my-lisps
# ln -sf ${lianemacspath}/lian-lisps ${aheiemacspath}/lisps

# ln my.emacs to home directory
ln -sf ${lianemacspath}/my.emacs ~/

# install emacs of ahei
./install




