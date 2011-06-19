#!/usr/bin/env bash

# Time-stamp: <2011-04-05 03:37:19 Tuesday by lian>

# @version 1.0
# @author lian

# this script is mainly used to merge lian's emacs config into ahei's emacs.
# ahei-lian-patch.diff is modification based on ahei

lianemacspath=$(pwd)
aheiemacspath=$1

# firstly go to ahei's path and revert all the modification and then apply
# ahei-lian-patch.diff
cd ${aheiemacspath}
./clean.sh
svn revert -R *
svn revert .emacs
patch -p0 < ${lianemacspath}/ahei-lian-patch.diff

# ln my lian-emacs-lisp and lian-lisps to the ahei subdirectory
ln -sf ${lianemacspath}/lian-lisps-settings ${aheiemacspath}/my-lisps
ln -sf ${lianemacspath}/lian-lisps ${aheiemacspath}/lisps

# ln my.emacs to home directory
ln -sf ${lianemacspath}/my.emacs ~/

# install emacs of ahei
./install




