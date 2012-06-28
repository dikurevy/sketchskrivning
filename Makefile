BASENAME=sketchskrivning

default: compile view
compile:
	pdflatex $(BASENAME).tex && pdflatex $(BASENAME).tex

view: compile
	xpdf $(BASENAME).pdf

print:
	cat $(BASENAME).pdf | ssh ask.diku.dk lpr -P m1a

clean:
	rm $(BASENAME).aux $(BASENAME).log $(BASENAME).toc

