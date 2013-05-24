all: gita.pdf
	xdg-open gita.pdf
# ------------------------------------------------------------------------------
gita.pdf: gita.tex
	pdflatex gita.tex # Run 1.
	pdflatex gita.tex # Run 2. For any references.

gita.tex: gita.dn \
  chapter_about_the_bhagavad_gita.tex \
  chapter_about_sanskrit.tex \
  chapter_transliteration.tex \
  chapter_alphabet.tex \
  chapter_organization.tex \
  chapter_melody.tex \
  chapter1.tex \
  chapter2.tex \
  chapter3.tex \
  chapter10.tex \
  chapter_grammar.tex \
  mymacros.sty \

	devnag gita.dn
# ------------------------------------------------------------------------------
chapter_about_the_bhagavad_gita.tex: chapter_about_the_bhagavad_gita.dn
	devnag chapter_about_the_bhagavad_gita.dn

chapter_about_sanskrit.tex: chapter_about_sanskrit.dn
	devnag chapter_about_sanskrit.dn

chapter_transliteration.tex: chapter_transliteration.dn
	devnag chapter_transliteration.dn

chapter_alphabet.tex: chapter_alphabet.dn
	devnag chapter_alphabet.dn

chapter_organization.tex: chapter_organization.dn
	devnag chapter_organization.dn

chapter_melody.tex: chapter_melody.dn
	devnag chapter_melody.dn

chapter1.tex: chapter1.dn
	devnag chapter1.dn

chapter2.tex: chapter2.dn
	devnag chapter2.dn

chapter3.tex: chapter3.dn
	devnag chapter3.dn

chapter10.tex: chapter10.dn
	devnag chapter10.dn

chapter_grammar.tex: chapter_grammar.dn
	devnag chapter_grammar.dn
# ------------------------------------------------------------------------------
clean:
	rm --force *.aux *.log *.dvi *.tex *~ .*~ *.*~
