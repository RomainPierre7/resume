FR_DOCUMENT_NAME=Romain_PIERRE_CV.tex
EN_DOCUMENT_NAME=Romain_PIERRE_resume.tex

all: pdf

pdf:
	xelatex tex/FR/$(FR_DOCUMENT_NAME)
	xelatex tex/EN/$(EN_DOCUMENT_NAME)
	make clean

FR:
	xelatex tex/FR/$(FR_DOCUMENT_NAME)
	make clean
	make seeFR

EN:
	xelatex tex/EN/$(EN_DOCUMENT_NAME)
	make clean
	make seeEN

seeFR:
	evince french_resume.pdf

seeEN:
	evince english_resume.pdf

clean:
	rm -f *aux *log