run:	graphs
	pdflatex i2b2-fhir.tex && bibtex i2b2-fhir.aux && pdflatex i2b2-fhir.tex

graphs:	graph1.pdf graph2.pdf

%.pdf:	%.R
	R --no-save <$<
