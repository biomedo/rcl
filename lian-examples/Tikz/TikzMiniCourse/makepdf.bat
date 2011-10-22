@set OUTPUT_FILENAME="MyLaTeXOutput.pdf"



@echo.---------------------------------------------------
@echo.cambio di directory
cd sources\



@echo.---------------------------------------------------
@echo.compilazione del sorgente
pdflatex	main.tex
bibtex		main
pdflatex	main.tex
pdflatex	main.tex
thumbpdf	main
pdflatex	main.tex



@echo.---------------------------------------------------
@echo.eliminazione dei files ausiliari
del *.dvi
del *.aux
del *.log
del *.blg
del *.bbl
del *.toc
del *.lof
del *.lot
del *.out
del *.idx
del *.ilg
del *.ind
del *.tpt
del *.brf



@echo.---------------------------------------------------
@echo.spostamento del file pdf sulla cartella precedente
cd ..
move sources\main.pdf %OUTPUT_FILENAME%



@echo.---------------------------------------------------
@echo.effettuo un backup di tutto
makebackup.bat


