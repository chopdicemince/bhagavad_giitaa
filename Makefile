all: gita.dvi
	xdg-open gita.dvi

gita.dvi:
	latex gita.tex

gita.tex:
	devnag gita.dn

clean:
	rm --force *.aux *.log *.dvi *~ .*~ *.*~
