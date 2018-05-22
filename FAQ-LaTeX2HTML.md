# Conversion from (La)TeX to HTML

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
business of conversion to HTML.  There are only two generally
reliable techniques for generating mathematics on the web: creating
bitmaps of bits of typesetting that can't be translated, and using
symbols and table constructs.  Neither technique is entirely
satisfactory.  Bitmaps lead to a profusion of tiny files, are slow to
load, and are inaccessible to those with visual disabilities.  The
symbol fonts offer poor coverage of mathematics, and their use
requires configuration of the browser.  The future of mathematical
browsing may be brighter&nbsp;&mdash; see
[future Web technologies](./FAQ-mathml.html).

For today, possible packages are:

- `LaTeX2HTML`a `Perl` script package that
  supports LaTeX only, and generates mathematics (and other
  ''difficult'' things) using bitmaps.  The original version was
  written by Nikos Drakos for Unix systems, but the package now sports
  an illustrious list of co-authors and is also available for Windows
  systems.  Michel Goossens and Janne Saarela published a detailed
  discussion of `LaTeX2HTML`, and how to tailor it, in
  TUGboat 16(2).

  A mailing list for users may be found via
  [http://tug.org/mailman/listinfo/latex2html]
- `TtH`a compiled program that supports either LaTeX
  or Plain TeX, and uses the font/table technique for representing
  mathematics.  It is written by Ian Hutchinson, using
  `flex`.  The distribution consists of a single C
  source (or a compiled executable), which is easy to install and very
  fast-running.
- `TeX4ht`a compiled program that supports either
  LaTeX or Plain TeX, by processing a DVI file; it uses
  bitmaps for mathematics, but can also use other technologies where
  appropriate.  Written by Eitan Gurari, it parses the DVI
  file generated when you run (La)TeX over your file with
  `tex4ht`s macros included.  As a result, it's pretty
  robust against the macros you include in your document, and it's
  also pretty fast.
- `plasTeX`a Python-based LaTeX document processing
    framework.  It gives DOM-like access to a LaTeX document, as
    well as the ability to generate mulitple output formats
    (e.g. HTML, DocBook, tBook, etc.).
- `TeXpider`a commercial program from
  [Micropress](./FAQ-commercial.html), which is
  described on [http://www.micropress-inc.com/webb/wbstart.htm];
  it uses bitmaps for equations.
- `Hevea` a compiled program that supports LaTeX
  only, and uses the font/table technique for equations (indeed its
  entire approach is very similar to `TtH`).  It is written
  in Objective CAML by Luc Maranget.  `Hevea` isn't
  archived on CTAN; details (including download points) are
  available via [http://pauillac.inria.fr/&nbsp;maranget/hevea/]

An interesting set of samples, including conversion of the same text
by the four free programs listed above, is available at
[http://www.mayer.dial.pipex.com/samples/example.htm]; a linked
page gives lists of pros and cons, by way of comparison.

The World Wide Web Consortium maintains a list of ''filters'' to
HTML, with sections on (La)TeX and BibTeX&nbsp;&mdash; see
[http://www.w3.org/Tools/Word_proc_filters.html]

