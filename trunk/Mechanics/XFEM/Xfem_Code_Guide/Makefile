# Makefile for managing your project, this file should put
# in the same directory with your tex files. Still, you can
# put it anywhere for your usage by readapting the path in
# this script

TEX = xelatex
doc = xfem_guide_cn

source = $(doc).tex
pdf = $(doc).pdf


all: pdf
cleanall: realclean
view: view-by-evince

pdf: $(pdf)
env = TEXINPUTS=./:./config:${TEXINPUTS}; export TEXINPUTS;

$(pdf): $(source) ./config/*.*
	$(env) $(TEX) $<
	$(env) $(TEX) $<

view-by-evince:
	evince ${pdf} # add new options if you have a higher version evince

view-by-okular:
	okular ${pdf} # add your own okular options for openning one relalization pdf file

clean:
	rm -f *.aux *.log *.blg *.toc *.out *.lot tex4ht.ps *.4*
	rm -f *.xref* *.lg *.idv *.out *.otc *.tmp tmp.*
	rm -f $(doc).dvi $(doc).ps

realclean: clean
	rm -f $(doc).pdf
	rm -f *.html *.htm $(doc).css *.gif *.jpg
