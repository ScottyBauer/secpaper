TEXSRC = $(wildcard ./*.tex)

sig-alternate-sample: paper.pdf

all: paper.pdf

pdf: paper.pdf

paper.pdf: sigproc.bib $(TEXSRC)
	pdflatex sig-alternate-sample
	bibtex sig-alternate-sample
	pdflatex sig-alternate-sample
	pdflatex sig-alternate-sample

clean: 
	\rm -f *.dvi *.aux *.ps *~ *.log *.blg *.bbl *.pdf
