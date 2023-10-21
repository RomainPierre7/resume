all: FR EN

FR:
	pdflatex tex/french_resume.tex
	rm -f *aux *log

EN:
	pdflatex tex/english_resume.tex
	rm -f *aux *log

seeFR:
	evince french_resume.pdf

seeEN:
	evince english_resume.pdf