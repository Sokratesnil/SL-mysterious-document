#LaTeX用MakeFile
TARGET = SL.pdf
LATEX = latexmk -c -gg -lualatex
MAINFILE = SL
SETTINGS = mysettings.sty

.DEFAULT_GOAL = all

.PHONY: all
all: $(TARGET)
$(TARGET): $(MAINFILE).ltx $(SECTIONFILES) $(SETTINGS)
	$(LATEX) $<
	make clean

.PHONY: clean
clean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg
