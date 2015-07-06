
###############################################################################
#   Mike Pierce (mapierce271@gmail.com)
#   Makefile (LaTeX)
###############################################################################



MAIN = main
OBJS = $(wildcard ./*.tex) $(wildcard ./*/*.tex)
JOB = enchiridion
COMPILER = pdflatex
OPTIONS = -file-line-error -halt-on-error -jobname $(JOB)
VIEWER = mupdf 



all: $(JOB).pdf

$(JOB).pdf: $(OBJS)
	$(COMPILER) $(OPTIONS) $(MAIN).tex
	$(COMPILER) $(OPTIONS) $(MAIN).tex
	rm -f $(JOB).aux
	rm -f $(JOB).log
	rm -f $(JOB).out

.PHONY: open clean

open: all
	$(VIEWER) $(JOB).pdf &

clean:
	rm -f $(JOB).aux
	rm -f $(JOB).log
	rm -f $(JOB).out
	rm -f $(JOB).dvi
	rm -f $(JOB).pdf
	rm -f $(JOB).bbl
	rm -f $(JOB).blg
	rm -f $(JOB).toc



