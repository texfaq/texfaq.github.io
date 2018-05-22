# What are ''resolutions''?

''Resolution'' is a word that is used with little concern for its
multiple meanings, in computer equipment marketing.  The word suggests
a measure of what an observer (perhaps the human eye) can resolve; yet
we regularly see advertisements for printers whose resolution is
1200dpi&nbsp;&mdash; far finer than the unaided human eye can distinguish.  The
advertisements are talking about the precision with which the printer
can place spots on the printed image, which affects the fineness of
the representation of fonts, and the accuracy of the placement of
glyphs and other marks on the page.

In fact, there are two sorts of ''resolution'' on the printed page
that we need to consider for (La)TeX's purposes:
  

-  the positioning accuracy, and
-  the quality of the fonts.

In the case where (La)TeX output is being sent direct to a printer,
in the printer's ''native'' language, it's plain that the DVI
processor must know all such details, and must take detailed account
of both types of resolution.

In the case where output is being sent to an intermediate distribution
format, that has potential for printing (or displaying) we know not
where, the final translator, that connects to directly to the printer
or display, has the knowledge of the device's properties: the
DVI processor need not know, and should not presume to guess.

Both PostScript and PDF output are in this category.  While PostScript is
used less frequently for document distribution nowadays, it is
regularly used as the source for distillation into PDF; and
PDF is the workhorse of an enormous explosion of document
distribution.

Therefore, we need DVI processors that will produce
''resolution independent'' PostScript or PDF output; of course, the
independence needs to extend to both forms of independence outlined
above.

Resolution-independence of fonts was for a  long time forced upon the
world by the feebleness of Adobe's `Acrobat`
`Reader` at dealing with bitmap files: a sequence of answers
starting with one aiming at the 
[quality of PDF from PostScript](./FAQ-dvips-pdf.html) addresses
the problems that arise.

Resolution-independence of positioning is more troublesome:
`dvips` is somewhat notorious for insisting on positioning to
the accuracy of the declared resolution of the printer.
One commonly-used approach is to declare a resolution of 8000 (''better
than any device''), and this is reasonably successful though it does
have its [problems](./FAQ-8000.html).

