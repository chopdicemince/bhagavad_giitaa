all: gita.dvi
	xdg-open gita.dvi

gita.dvi: gita.tex
	latex gita.tex

gita.tex: gita.dn
	devnag gita.dn

clean:
	rm --force *.aux *.log *.dvi *.tex *~ .*~ *.*~
