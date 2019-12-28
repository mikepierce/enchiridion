###############################################################################
#   Mike Pierce (mapierce271@gmail.com)
#   The Enchiridion of Epictetus
#   Makefile (LaTeX)
###############################################################################

MAIN = main
POST = post
OBJS = $(wildcard ./*.tex) $(wildcard ./translations/*/*.tex)
JOB = enchiridion
BOOKSDIR = all-versions
COMPILER = pdflatex
OPTIONS = -file-line-error -halt-on-error -jobname $(JOB)


all : carter

todos: clean
	mkdir -p $(BOOKSDIR)
	make carter
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-carter.pdf
	make higginson
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-higginson.pdf
	make matheson
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-matheson.pdf
	make long
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-long.pdf
	make rolleston
	mv $(JOB).pdf $(BOOKSDIR)/$(JOB)-rolleston.pdf
	make clean



carter : carter-sed $(JOB).pdf

carter-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHORFULL/Elizabeth~Carter/g' \
		-e 's/AUTHORLAST/Carter/g' <$(MAIN).tex >$(POST).tex



higginson : higginson-sed $(JOB).pdf

higginson-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHORFULL/T.~W.~Higginson/g' \
		-e 's/AUTHORLAST/Higginson/g' <$(MAIN).tex >$(POST).tex



matheson : matheson-sed $(JOB).pdf

matheson-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHORFULL/P.~E.~Matheson/g' \
		-e 's/AUTHORLAST/Matheson/g' <$(MAIN).tex >$(POST).tex



long : long-sed $(JOB).pdf

long-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHORFULL/George~Long/g' \
		-e 's/AUTHORLAST/Long/g' <$(MAIN).tex >$(POST).tex



rolleston : rolleston-sed $(JOB).pdf

rolleston-sed :
	touch $(MAIN).tex
	sed -e 's/AUTHORFULL/T.~W.~Rolleston/g' \
		-e 's/AUTHORLAST/Rolleston/g' <$(MAIN).tex >$(POST).tex



$(JOB).pdf : $(OBJS)
	$(COMPILER) $(OPTIONS) $(POST).tex
	$(COMPILER) $(OPTIONS) $(POST).tex
	rm $(POST).tex

.PHONY: clean

clean :
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f $(JOB).bbl
	rm -f $(JOB).blg
	rm -f $(JOB).toc
	rm -f $(JOB).dvi
	rm -f $(JOB).pdf



