OUT = wp

all: clean
	rm -f '$(OUT).pdf'
	aspell check 'body.tex'
	pdflatex template.tex
	pdflatex template.tex
	mv -f template.pdf '$(OUT).pdf'
	open '$(OUT).pdf'

clean:
	rm -f template.{aux,log,toc,dvi,out,lof,lot,pdf}
