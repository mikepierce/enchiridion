
# The Enchiridion of Epictetus

> The Enchiridion or Manual of Epictetus ... is a short manual of Stoic ethical advice 
  compiled by Arrian, a 2nd-century disciple of the Greek philosopher Epictetus. 

> <p align="right">
>   - <a href=https://en.wikipedia.org/wiki/Enchiridion_of_Epictetus>Wikipedia</a>
> </p>

This projects presents the Enchiridion set in LaTeX as a pdf ebook.

A notable feature of this project is that the translation of the Enchiridion
can be chosen at compile time by running `make <translator's last name>`.
For example, compiling with `make higginson` will compile 
Thomas Wentworth Higginson's translation of the Enchiridion.
If no translator is specified with `make` then Carter's translation is used.
The following is a list of download links (pdf) for each 
currently available translation, 
along with a link to an online source for each: 

 - [Elizabeth Carter][carter-file] ([Source][carter-source])
 - [Thomas Wentworth Higginson][higginson-file] ([Source][higginson-source])
 - [P.E. Matheson][matheson-file] ([Source][matheson-source])
 - [George Long][long-file] ([Source][long-source])
 - [Thomas William Rolleston][rolleston-file] ([Source][rolleston-source])
 
  [carter-file]: https://raw.githubusercontent.com/mapierce271/Enchiridion/master/all-versions/enchiridion-carter.pdf
  [carter-source]: https://archive.org/details/enchiridion_librivox
  [higginson-file]: https://raw.githubusercontent.com/mapierce271/Enchiridion/master/all-versions/enchiridion-higginson.pdf
  [higginson-source]: http://www.perseus.tufts.edu/hopper/text?doc=urn:cts:greekLit:tlg0557.tlg002.perseus-eng2:1
  [matheson-file]: https://raw.githubusercontent.com/mapierce271/Enchiridion/master/all-versions/enchiridion-matheson.pdf
  [matheson-source]: http://www.sacred-texts.com/cla/dep/dep102.htm
  [long-file]: https://raw.githubusercontent.com/mapierce271/Enchiridion/master/all-versions/enchiridion-long.pdf
  [long-source]: http://www.ptypes.com/enchiridion.html
  [rolleston-file]: https://raw.githubusercontent.com/mapierce271/Enchiridion/master/all-versions/enchiridion-rolleston.pdf
  [rolleston-source]: http://www.letsreadgreek.com/epictetus/rolleston.htm



# ToDo
 
 - Create a book cover, or at least a title page.
 - Be open to suggestions/recommendations/requests.



# ChangeLog

###  5 Sep 2015
 - Proofread Matheson and made a few minor edits.
 - Added and proofread Long's translation.
 - Added and proofread Rolleston's translation.
 - Updated README to have links to the actual PDFs.

###  1 Sep 2015
 - Proofread Higginson and made a few minor edits.

### 30 Aug 2015
 - Added the `make todos` option to make a copy of each translation
   in the `all-versions` directory.
 - Fixed a few typos in Carter.
 - Added translation by Matheson (still needs to be cleaned up).
 - Expanded and cleaned up the README.

### 23 Aug 2015
 - Renewed the `quote` environment.
 - Full-justified the plain text in the content files using `par 79j`.

### 18 Aug 2015
 - Dealt with the `Overfull \hbox` issues by changing the left 
   and right margins to 0.8 inches and by setting `\tolerance=500`.

### 16 Aug 2015
 - Added a feature to choose the translation at compile time with `make`.

### 14 Aug 2015
 - Changed page dimensions to 6 by 9 inches for tablet.
 - Added Elizabeth Carter's translation and made it the default.
 - Added GNU GPLv2 License.



