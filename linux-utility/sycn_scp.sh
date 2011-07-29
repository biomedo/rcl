#!/usr/bin/env bash

# Time-stamp: <2011-07-29 16:12:26 Friday by lian>

# @version 1.0
# @author ahei

rsync --exclude-from=/cassini/struct/lian/develop/BatchCalculation/Homog_Random_Checkerboard_10240_Xfem/exclude.txt -e ssh -avz  lian@titan:/cassini/struct/lian/develop/BatchCalculation/Homog_Random_Checkerboard_10240_Xfem /cassini/struct/lian/develop/BatchCalculation/aa
