
# The Enchiridion of Epictetus

A handbook of basic practices of stoicism typeset in LaTeX.
A notable feature of this project is that the translation of the Enchiridion
can be chosen at compile time using GNU Make. 
For example, running `make carter` will compile using Carter's translation.
Currently only the translations of Elizabeth Carter and Thomas Wentworth Higginson
are supported. Carter's translation is the default.

This projects exists because I wanted a digital copy of the Enchiridion
to read on my tablet.



# ToDo
 
 - Do something about the cause of the `Overfull \hbox` errors. 
   (play with the value of `\tolerance` and some other stuff)
 - Justify the plain text in the files for the chapters. (because why not?)
 - Make a few changes to Carter's translation. There are too many commas 
   and a few other wonky things.
 - Create a book cover and/or title page.
 - Add more translations.



# Sources for Various Translations
 
 - [Elizabeth Carter](http://classics.mit.edu/Epictetus/epicench.html)
 - [Thomas Wentworth Higginson](http://www.perseus.tufts.edu/hopper/text?doc=urn:cts:greekLit:tlg0557.tlg002.perseus-eng2:1)
 - [Matheson](http://www.sacred-texts.com/cla/dep/dep102.htm)
 - [another Matheson](http://www.letsreadgreek.com/epictetus/mattheson.htm)
 - [George Long](http://www.ptypes.com/enchiridion.html)
 - [another George Long](https://en.wikisource.org/wiki/Enchiridion)
 - [Stephen Walton](http://www.ideonautics.com/manual2.htm)
 - [Rolleston](http://www.letsreadgreek.com/epictetus/rolleston.htm)



# Change Log

### 16 Aug 2015
 - Added a feature to choose the translation at compile time with `make`.
   For example, compiling with the command `make higginson` 
   will compile Higginson's translation. The default translation is Carter's.

### 14 Aug 2015
 - Changed page dimensions to 6 by 9 inches for tablet.
 - Added Elizabeth Carter's translation and made it the default.
 - Added GNU GPLv2 License.



