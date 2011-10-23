#!/usr/bin/env bash

# Time-stamp: <2011-10-23 22:39:06 Sunday by lian>

# @version 1.0
# @author ahei


echo "Are you sure to convert all eps to pdf in this directory? Press ENTER to contine, Or Ctrl+c to exit."

read

for epsfile in `ls *.eps`;
do
    echo "converting ${epsfile} to ${epsfile%.*}.pdf ..."
    epstopdf ${epsfile}
done


echo "Convertion is done!"
