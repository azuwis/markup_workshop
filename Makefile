RST2XETEX=rst2xetex
RST2XETEXOPTS=
XELATEX=xelatex
XELATEXOPTS=
RST2HTML=rst2html
RST2HTMLOPTS=--stylesheet=style.css

RSTS=$(wildcard **.rst **/*.rst)
TEXS=$(RSTS:.rst=.tex)
PDFS=$(TEXS:.tex=.pdf)
HTMLS=$(RSTS:.rst=.html)

LOGS=$(RSTS:.rst=.log)
OUTS=$(RSTS:.rst=.out)
AUXS=$(RSTS:.rst=.aux)
TOCS=$(RSTS:.rst=.toc)

pdf: $(PDFS)

html: $(HTMLS)

.SUFFIXES: .rst .tex .pdf .html

.rst.tex:
	$(RST2XETEX) $(RST2XETEXOPTS) $< $@

.tex.pdf:
	test -e $(<D)/docutils.tex || cp docutils.tex $(<D)
	cd $(<D) && $(XELATEX) $(XELATEXOPTS) $(<F)
	cd $(<D) && $(XELATEX) $(XELATEXOPTS) $(<F)

.rst.html:
	$(RST2HTML) $(RST2HTMLOPTS) $< $@

preview: html
	livereload -b

clean:
	rm -f $(TEXS) $(PDFS) $(LOGS) $(OUTS) $(AUXS) $(TOCS) $(HTMLS) $(wildcard **/docutils.tex) missfont.log $(wildcard **/missfont.log)
