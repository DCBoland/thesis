R_LIBS_USER="~/R/library"

thesis: data/SPUD.sqlite
	Rscript dependencies.R
	Rscript -e "library(knitr); knit(\"thesis.Rnw\")"
	
data/SPUD.sqlite: 
	wget -P ./data/ -nc http://www.dcs.gla.ac.uk/~daniel/spud/spud.zip
	unzip ./data/SPUD.zip
	
clean:
	rm -f *.pdf *.toc *.log *.cb *.cb2 *.aux *.lot *.tex
	
deep-clean: clean
	rm -rf cache
	rm -rf figure
