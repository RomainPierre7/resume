FR_DOCUMENT_NAME=Romain_PIERRE_CV
EN_DOCUMENT_NAME=Romain_PIERRE_resume

all: pdf

pdf:
	xelatex tex/FR/$(FR_DOCUMENT_NAME).tex
	xelatex tex/EN/$(EN_DOCUMENT_NAME).tex
	make clean

FR:
	xelatex tex/FR/$(FR_DOCUMENT_NAME).tex
	make clean
	make seeFR

EN:
	xelatex tex/EN/$(EN_DOCUMENT_NAME).tex
	make clean
	make seeEN

seeFR:
	evince $(FR_DOCUMENT_NAME).pdf

seeEN:
	evince $(EN_DOCUMENT_NAME).pdf

clean:
	rm -f *aux *log