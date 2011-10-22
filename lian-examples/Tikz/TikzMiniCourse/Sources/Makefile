# Makefile for managing your project, this file should put
# in the same directory with your tex files. Still, you can
# put it anywhere for your usage by readapting the path in
# this script
# Time-stamp: <2011-10-22 21:21:38 Saturday by lian>

TEX = pdflatex
doc = main
BiTex = bibtex
source = $(doc).tex
pdf = $(doc).pdf


all: pdf
cleanall: realclean
view: view-by-evince

pdf: $(pdf)
env = TEXINPUTS=./:./config:${TEXINPUTS}; export TEXINPUTS;

$(pdf): $(source)
	$(env) $(TEX) $<
	# $(env) $(BiTex) $(doc)
	# $(env) $(TEX) $<
	# $(env) $(TEX) $<

view-by-evince:
	evince ${pdf} # add new options if you have a higher version evince

view-by-okular:
	okular ${pdf} # add your own okular options for openning one relalization pdf file

clean:
	rm -f *.spl *.bbl *.aux *.log *.blg *.toc *.out *.lot tex4ht.ps *.4*
	rm -f *.xref* *.lg *.idv *.out *.otc *.tmp tmp.*
	rm -f $(doc).dvi $(doc).ps

realclean: clean
	rm -f $(doc).pdf
