all: gita.dvi
	xdg-open gita.dvi

gita.dvi: gita.tex
	latex gita.tex # Run 1.
	latex gita.tex # Run 2. For any references.

gita.tex: gita.dn
	devnag gita.dn

clean:
	rm --force *.aux *.log *.dvi *.tex *~ .*~ *.*~
