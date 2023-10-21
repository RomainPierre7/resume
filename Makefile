all: FR EN

FR:
	xelatex tex/FR/french_resume.tex
	make clean

EN:
	xelatex tex/EN/english_resume.tex
	make clean

seeFR:
	evince french_resume.pdf

seeEN:
	evince english_resume.pdf

clean:
	rm -f *aux *log