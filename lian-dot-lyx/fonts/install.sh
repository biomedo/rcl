#!/usr/bin/env bash

# Time-stamp: <2011-06-20 10:59:28 Monday by lian>

# @version 1.0
# @author lian

# please download chinese fonts from
# http://code.google.com/p/rcl/downloads/list
# if you are going to compile chinese
# documents in latex, then you copy
# these fonts to ~/.fonts, finally
# invoke this script to build fonts
# cache.
cd ~/.fonts

mkfontscale
mkfontdir
fc-cache
