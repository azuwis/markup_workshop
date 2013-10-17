RST2XETEX=rst2xetex
RST2XETEXOPTS=
XELATEX=xelatex
XELATEXOPTS=
RST2HTML=rst2html
RST2HTMLOPTS=--stylesheet=style.css

RSTS=$(wildcard *.rst)
TEXS=$(RSTS:.rst=.tex)
PDFS=$(TEXS:.tex=.pdf)
HTMLS=$(RSTS:.rst=.html)

LOGS=$(RSTS:.rst=.log)
OUTS=$(RSTS:.rst=.out)
AUXS=$(RSTS:.rst=.aux)

pdf: $(PDFS)

html: $(HTMLS)

.SUFFIXES: .rst .tex .pdf .html

.rst.tex:
	$(RST2XETEX) $(RST2XETEXOPTS) $< $@

.tex.pdf:
	$(XELATEX) $(XELATEXOPTS) $< || true
	$(XELATEX) $(XELATEXOPTS) $< || true

.rst.html:
	$(RST2HTML) $(RST2HTMLOPTS) $< $@

preview: html
	livereload -b

clean:
	rm -rf $(TEXS) $(PDFS) $(LOGS) $(OUTS) $(AUXS) $(HTMLS) missfont.log
