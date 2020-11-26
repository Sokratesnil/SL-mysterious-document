#LaTeX用MakeFile
MAINFILENAME = SL
MAINFILE = $(MAINFILENAME).tex
TARGET = $(MAINFILENAME).pdf
LATEX = latexmk -c -gg -lualatex
SETTINGS = mysettings.sty

.DEFAULT_GOAL = all

.PHONY: all
all: $(TARGET)
$(TARGET): $(MAINFILE) $(SETTINGS)
	$(LATEX) $<
	make clean

.PHONY: clean
clean:; rm -f *.aux *.nav *.out *.snm *.toc *~ *.dvi *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg
