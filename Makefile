export R_LIBS_USER="~/R/library"

thesis: data/SPUD.sqlite
	mkdir -p ~/R/library
	Rscript dependencies.R
	Rscript -e "library(knitr); knit(\"thesis.Rnw\")"
	pdflatex thesis.tex
	
data/SPUD.sqlite:
	wget -P ./data/ -nc http://www.dcs.gla.ac.uk/~daniel/spud/spud.zip
	unzip ./data/spud.zip -d data/
	
clean:
	rm -f *.pdf *.toc *.log *.cb *.cb2 *.aux *.lot *.tex
	
deep-clean: clean
	rm -rf cache
	rm -rf figure
