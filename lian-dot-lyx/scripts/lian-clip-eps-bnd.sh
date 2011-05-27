#!/usr/bin/env bash

# Time-stamp: <2011-05-20 20:01:48 Friday by lian>

# @version 1.0
# @author lian


input=$1
output=$2

if [ -z $output ]; then output=${input}; fi

echo ${input}
echo ${output}

cat ${input} | ps2eps -f > ${output}tmp.eps
mv -f ${output}tmp.eps ${output}

# pdftops -eps -f 1 -l 1 ${input} ${output}
# ps2eps -f ${output}
# rm ${output} -f
# mv ${output}.eps ${output}


