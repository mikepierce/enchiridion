
###############################################################################
#   Mike Pierce (mapierce271@gmail.com)
#   Makefile (LaTeX)
###############################################################################



MAIN = main
POST = post
OBJS = $(wildcard ./*.tex) $(wildcard ./translation/*/*.tex)
JOB = enchiridion
BOOKSDIR = all-versions
COMPILER = pdflatex
OPTIONS = -file-line-error -halt-on-error -jobname $(JOB)
VIEWER = mupdf 



all : carter

todos: clean
	mkdir -p $(BOOKSDIR)
	make carter
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-carter.pdf
	make higginson
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-higginson.pdf
	make matheson
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-matheson.pdf
	make clean



carter : carter-sed $(JOB).pdf

carter-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHOR_FULL/Elizabeth Carter/g' \
		-e 's/AUTHOR_LAST/Carter/g' <$(MAIN).tex >$(POST).tex



higginson : higginson-sed $(JOB).pdf

higginson-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHOR_FULL/Thomas Wentworth Higginson/g' \
		-e 's/AUTHOR_LAST/Higginson/g' <$(MAIN).tex >$(POST).tex



matheson : matheson-sed $(JOB).pdf

matheson-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHOR_FULL/P. E. Matheson/g' \
		-e 's/AUTHOR_LAST/Matheson/g' <$(MAIN).tex >$(POST).tex



$(JOB).pdf : $(OBJS)
	$(COMPILER) $(OPTIONS) $(POST).tex
	$(COMPILER) $(OPTIONS) $(POST).tex
	rm $(POST).tex
	rm -f $(JOB).aux
	rm -f $(JOB).log
	rm -f $(JOB).out

.PHONY: clean

clean :
	rm -f $(JOB).aux
	rm -f $(JOB).log
	rm -f $(JOB).out
	rm -f $(JOB).dvi
	rm -f $(JOB).pdf
	rm -f $(JOB).bbl
	rm -f $(JOB).blg
	rm -f $(JOB).toc



