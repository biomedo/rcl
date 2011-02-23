#!/usr/bin/env bash

# Time-stamp: <2011-02-23 19:32:29 Wednesday by lian>

# @version 1.0
# @author lian

texdoc=$1
pdfdoc=$2
pdflatex ${texdoc}
bibtex ${texdoc}
# makeindex master.nlo -s nomencl.ist -o master.nls
pdflatex ${texdoc}
pdflatex ${texdoc}
# okular master.pdf --unique
evince ${pdfdoc}
