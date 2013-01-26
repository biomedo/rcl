#!/usr/bin/env bash

# Time-stamp: <2013-01-26 16:29:22 Saturday by lian>

# @version 1.0
# @author lian

# please download chinese fonts from
# http://code.google.com/p/rcl/downloads/list
# if you are going to compile chinese
# documents in latex, then you copy
# these fonts to ~/.fonts, finally
# invoke this script to build fonts
# cache.
# Norammly if your ubuntu is English version, then for Asian fonts the system will use an ugly Chinese fonts as default.
# Two settings are available to tackle this issue:
# 1. sudo ln -s ../conf.avail/69-language-selector-zh-cn.conf
# 2. sudo nano /etc/fonts/conf.d/65-nonlatin.conf, then find san-serif and add the following line after <prefer>
#    <family>Microsoft YaHei</family> or <family>WenQuanYi Micro Hei</family>
#    find momospace and then add <family>Microsoft YaHei</family> or <family>WenQuanYi Micro Hei Mono</family>

cd ~/.fonts

mkfontscale
mkfontdir
fc-cache -fv

cd /etc/fonts/conf.d/
sudo ln -s ../conf.avail/69-language-selector-zh-cn.conf
