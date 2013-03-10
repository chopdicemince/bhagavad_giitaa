all: gita.pdf
	xdg-open gita.pdf

gita.pdf: gita.tex
	pdflatex gita.tex # Run 1.
	pdflatex gita.tex # Run 2. For any references.

gita.tex: gita.dn chapter1.tex chapter2.tex
	devnag gita.dn

chapter1.tex: chapter1.dn
	devnag chapter1.dn

chapter2.tex: chapter2.dn
	devnag chapter2.dn

clean:
	rm --force *.aux *.log *.dvi *.tex *~ .*~ *.*~
