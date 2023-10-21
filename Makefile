all: pdf

pdf:
	xelatex tex/FR/french_resume.tex
	xelatex tex/EN/english_resume.tex
	make clean

FR:
	xelatex tex/FR/french_resume.tex
	make clean
	make seeFR

EN:
	xelatex tex/EN/english_resume.tex
	make clean
	make seeEN

seeFR:
	evince french_resume.pdf

seeEN:
	evince english_resume.pdf

clean:
	rm -f *aux *log