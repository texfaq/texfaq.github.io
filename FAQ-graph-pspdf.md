# Portable imported graphics




A regular need is a document to be distributed in more than
one format: commonly both PostScript and PDF.  The
following advice is based on a post by one with much experience of
dealing with the problem of dealing with EPS graphics in this
case.
  

-  Don't specify a driver when loading loading whichever version of
    the [`graphics`](http://ctan.org/pkg/graphics) package you use.  The scheme relies on the
    distribution's ability to decide which driver is going to be used:
    the choice is between `dvips` and PDFTeX, in this case.
    Be sure to exclude options `dvips`, `pdftex` and
    `dvipdfm` (`dvipdfm` is not used in this scheme,
    but the aspirant PDF-maker may be using it for his output,
    before switching to the scheme).
-  Use `\includegraphics[...]{filename}` without
    specifying the extension (i.e., neither `eps` nor
    `pdf`).
-  For every `eps` file you will be including, produce a
    `pdf` version, as described in 
    [Graphics in PDFLaTeX](./FAQ-pdftexgraphics.html).  Having
    done this, you will have two copies of each graphic (a `eps`
    and a `pdf` file) in your directory.
-  Use PDFLaTeX (rather than
    LaTeX&ndash;`dvips`&ndash;distillation or
    LaTeX&ndash;`dvipdfm`) to produce your PDF output.


`Dvipdfm`s charms are less than attractive here: the
document itself needs to be altered from its default
(`dvips`) state, before `dvipdfm` will process it.


