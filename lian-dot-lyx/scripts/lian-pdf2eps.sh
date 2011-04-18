#!/usr/bin/env bash

# Time-stamp: <2011-04-13 13:48:31 Wednesday by lian>

# @version 1.0
# @author lian
input=$1
output=$2

pdftops -eps -f 1 -l 1 ${input} ${output}
ps2eps -f ${output}
rm ${output} -f
mv ${output}.eps ${output}
