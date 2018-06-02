---
title: Conversion from (La)TeX to HTML
category: misc
permalink: /FAQ-LaTeX2HTML
redirect_from: /FAQ-latex2html
date: 2018-5-25
---

TeX and LaTeX are well suited to producing electronically publishable
documents. However, it is important to realize the difference
between page layout and functional markup. TeX is capable of
extremely detailed page layout; HTML is not, because HTML is a
functional markup language not a page layout language. HTML's exact
rendering is not specified by the document that is published but is, to
some degree, left to the discretion of the browser. If you require your
readers to see an exact replication of what your document looks like
to you, then you cannot use HTML and you must use some other
publishing format such as PDF. That is true for any HTML
authoring tool.

TeX's excellent mathematical capabilities remain a challenge in the
business of conversion to HTML.  Originally there were only two generally
reliable techniques for generating mathematics on the web: creating
bitmaps of bits of typesetting that can't be translated, and using
symbols and table constructs.  Neither technique is entirely
satisfactory.  Bitmaps lead to a profusion of tiny files, are slow to
load, and are inaccessible to those with visual disabilities.  The
symbol fonts offer poor coverage of mathematics, and their use
requires configuration of the browser.

Today, with native MathML rendering in some browsers
and high quality math rendering available via JavaScript and CSS
in all modern graphical browsers there are several possibilities.

The LaTeX to HTML convertors listed below  all handle mathematics
to some extent, and further math-specific details are discussed
in [Math on the Web](FAQ-mathml).

For today, possible packages are:

- `TeX4ht` a compiled program that supports either
  LaTeX or Plain TeX, by processing a DVI file; it uses
  bitmaps for mathematics, but can also use other technologies where
  appropriate.  Written by Eitan Gurari, it parses the DVI
  file generated when you run (La)TeX over your file with
  `tex4ht`s macros included.  As a result, it's pretty
  robust against the macros you include in your document, and it's
  also pretty fast. [CTAN](https://ctan.org/pkg/tex4ht).

  Configuring and calling `TeX4ht` can be quite complicated,
  Michal Hoftich's `make4ht` system provides an alternative
  easier calling convention, using the `tex4ht` convertor internally.

- `LaTeXML` From [NIST](https://www.nist.gov/) is a perl program
  that can parse most TeX code, including complicated macro definitions.
  It was used for generating the web version of [DLMF](https://dlmf.nist.gov/)
  from LaTeX sources. Currently it is distributed from the NIST site, and is not
  in standard TeX distributions.

- `lwarp` by Brian Dunn is a recent TeX to HTML convertor that uses
   TeX to parse the input document. Documents may be produced by LaTeX, LuaLaTeX, or XeLaTeX.
   A texlua script removes the need for system utilities such as make and gawk,
   and also supports xindy and latexmk. [CTAN](https://ctan.org/pkg/lwarp).

- `LaTeX2HTML` a `Perl` script package that
  supports LaTeX only, and generates mathematics (and other
  ''difficult'' things) using bitmaps.  The original version was
  written by Nikos Drakos for Unix systems, but the package now sports
  an illustrious list of co-authors and is also available for Windows
  systems.  Michel Goossens and Janne Saarela published a detailed
  discussion of `LaTeX2HTML`, and how to tailor it, in
  TUGboat 16(2). [CTAN](https://ctan.org/pkg/latex2html).

  A mailing list for users may be found via
  [TUG](https://tug.org/mailman/listinfo/latex2html).

- `Hevea` a compiled program that supports LaTeX
  only, and uses the font/table technique for equations (indeed its
  entire approach is very similar to `TtH`).  It is written
  in Objective CAML by Luc Maranget.  `Hevea` isn't
  archived on CTAN; details (including download points) are
  available via [INRIA](http://pauillac.inria.fr/~maranget/hevea/).

- `TtH` a compiled program that supports either LaTeX
  or Plain TeX, and uses the font/table technique for representing
  mathematics.  It is written by Ian Hutchinson, using
  `flex`.  The distribution consists of a single C
  source (or a compiled executable), which is easy to install and very
  fast-running. However the resulting HTML does not really reach
  modern standards, and only very simple mathematics can be converted.

- `plasTeX` a Python-based LaTeX document processing
    framework.  It gives DOM-like access to a LaTeX document, as
    well as the ability to generate mulitple output formats
    (e.g. HTML, DocBook, tBook, etc.).

- `TeXpider` a commercial program from
  [Micropress](FAQ-commercial), which is
  described on the [Micropress web site](http://www.micropress-inc.com/webb/wbstart.htm);
  it uses bitmaps for equations.


