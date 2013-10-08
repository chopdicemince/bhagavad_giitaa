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
  chapter4.tex \
  chapter5.tex \
  chapter6.tex \
  chapter7.tex \
  chapter8.tex \
  chapter9.tex \
  chapter10.tex \
  chapter11.tex \
  chapter12.tex \
  chapter13.tex \
  chapter14.tex \
  chapter15.tex \
  chapter16.tex \
  chapter17.tex \
  chapter18.tex \
  chapter_grammar.tex \
  chapter_examples_of_cases.tex \
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

chapter4.tex: chapter4.dn
	devnag chapter4.dn

chapter5.tex: chapter5.dn
	devnag chapter5.dn

chapter6.tex: chapter6.dn
	devnag chapter6.dn

chapter7.tex: chapter7.dn
	devnag chapter7.dn

chapter8.tex: chapter8.dn
	devnag chapter8.dn

chapter9.tex: chapter9.dn
	devnag chapter9.dn

chapter10.tex: chapter10.dn
	devnag chapter10.dn

chapter11.tex: chapter11.dn
	devnag chapter11.dn

chapter12.tex: chapter12.dn
	devnag chapter12.dn

chapter13.tex: chapter13.dn
	devnag chapter13.dn

chapter14.tex: chapter14.dn
	devnag chapter14.dn

chapter15.tex: chapter15.dn
	devnag chapter15.dn

chapter16.tex: chapter16.dn
	devnag chapter16.dn

chapter17.tex: chapter17.dn
	devnag chapter17.dn

chapter18.tex: chapter18.dn
	devnag chapter18.dn

chapter_grammar.tex: chapter_grammar.dn
	devnag chapter_grammar.dn

chapter_examples_of_cases.tex: chapter_examples_of_cases.dn
	devnag chapter_examples_of_cases.dn
# ------------------------------------------------------------------------------
clean:
	rm --force *.aux *.log *.dvi *.tex *~ .*~ *.*~
