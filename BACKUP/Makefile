
###############################################################################
#   Mike Pierce (mapierce271@gmail.com)
#   Makefile (LaTeX)
###############################################################################



MAIN = main
POST = post
OBJS = $(wildcard ./*.tex) $(wildcard ./*/*.tex)
JOB = enchiridion
COMPILER = pdflatex
OPTIONS = -file-line-error -halt-on-error -jobname $(JOB)
VIEWER = mupdf 



all : $(JOB).pdf

carter : carter-sed all

higginson : higginson-sed all

carter-sed :
	sed -e 's/AUTHORFULL/Elizabeth Carter' -e 's/AUTHOR/Carter' <$(MAIN).tex >$(POST).tex

higginson-sed :
	sed -e 's/AUTHORFULL/Thomas Wentworth Higginson' -e 's/AUTHOR/Higginson' <$(MAIN).tex >$(POST).tex

$(JOB).pdf : $(OBJS)
	$(COMPILER) $(OPTIONS) $(POST).tex
	$(COMPILER) $(OPTIONS) $(POST).tex
	rm $(POST).tex
	rm -f $(JOB).aux
	rm -f $(JOB).log
	rm -f $(JOB).out

.PHONY: open clean

open : all
	$(VIEWER) $(JOB).pdf &

clean :
	rm -f $(JOB).aux
	rm -f $(JOB).log
	rm -f $(JOB).out
	rm -f $(JOB).dvi
	rm -f $(JOB).pdf
	rm -f $(JOB).bbl
	rm -f $(JOB).blg
	rm -f $(JOB).toc



