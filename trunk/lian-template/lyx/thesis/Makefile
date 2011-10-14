# Makefile for managing your project, this file should put
# in the same directory with your tex files. Still, you can
# put it anywhere for your usage by readapting the path in
# this script
# Time-stamp: <2011-10-14 15:46:13 Friday by lian>


doc=Thesis
source=$(doc).lyx
dest=output/$(doc).pdf

all: thesis_pdf2

thesis_pdf2: $(dest)

$(dest): $(source)
	lyx200 -e pdf2 $(source)
	mv $(doc).pdf $(dest)



