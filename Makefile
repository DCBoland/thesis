thesis:
	Rscript -e "library(knitr); knit(\"thesis.Rnw\")"
	
dependencies:
	Rscript dependencies.R
	wget -P ./data/ -nc http://www.dcs.gla.ac.uk/~daniel/spud/SPUD.sqlite
	
clean:
	rm -f *.pdf *.toc *.log *.cb *.cb2 *.aux *.lot *.tex
	
deep-clean: clean
	rm -rf cache
	rm -rf figure
