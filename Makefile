thesis:
	R -e "library(knitr); knit(\"thesis.Rnw\")
	
dependencies:
	R deps.R
	wget -P ./data/ http://www.dcs.gla.ac.uk/~daniel/spud/SPUD.sqlite
	
clean:
	rm -f *.pdf *.toc *.log *.cb *.cb2 *.aux *.lot *.tex
	
deep-clean: clean
	rm -rf cache
	rm -rf figure