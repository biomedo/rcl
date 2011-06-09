#!/usr/bin/env bash

# Time-stamp: <2011-06-09 11:43:20 Thursday by lian>

# @version 1.0
# @author lian

texdoc=$1
pdfdoc=$2
texdoc_name=${texdoc%.*}
# echo "${texdoc} and ${pdfdoc}" > lian-latex.debug
pdflatex ${texdoc}
bibtex ${texdoc_name}
# makeindex master.nlo -s nomencl.ist -o master.nls
pdflatex ${texdoc}
pdflatex ${texdoc}
# okular master.pdf --unique
# evince -w ${pdfdoc}
