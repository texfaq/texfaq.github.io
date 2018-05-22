# Characters disappear from figures in PDFTeX




You have a PDF figure, which you want to use in your
PDFLaTeX document.  When you compile the document, PDFTeX
complains about ''missing glyphs'', and some (or all) of the labelling
text or symbols in the original figure is no longer visible.


What has happened is:
  

1.  Your figure file (say `fig.pdf`) has a font `font.pfb`
    embedded in it.
2.  PDFTeX notes that it has `font.pfb` on disc, and loads
    that in place of the copy in `fig.pdf`.
3.  It turns out that the copy in `fig.pdf` has glyphs that
    aren't in `font.pfb` on disc, so that you get errors while
    compiling and you see that characters are missing when you view the
    output.  (PDFTeX can't know that the fonts are different, since
    they have the same name.)


Which is all very undesirable.


PDFTeX does this to keep file sizes down: suppose you have a
document that loads figures `fig1.pdf` and `fig2.pdf`; both
of those use font `font.pfb`.  If PDFTeX takes no action,
there will be _two_ copies of `font.pfb` in the output.
(If your document also uses the font, there could be three copies.)


A real case is the URW font `NimbusRomNo9L-Regu` (a clone
of Times Roman), which is available in a version with Cyrillic
letters, while the version in TeX distributions doesn't have those
letters.  Both versions, as distributed, have the same name.


The simple (''quick and dirty'') solution is to add the command
  `\pdfinclusioncopyfonts``=1`
to the preamble of your document.


The ''real'' solution is that one or other font should be renamed.  In
either case, this would require that you reconfigure some program's
(TeX's or your drawing package's) font tables&nbsp;&mdash; inevitably a
tiresome job.


