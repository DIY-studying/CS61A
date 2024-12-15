VPATH = pdf:tex
%.pdf:%.tex
	pdflatex $<
	mv $@ pdf/
	rm $*.aux $*.log
