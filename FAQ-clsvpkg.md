# What are LaTeX classes and packages?

LaTeX aims to be a general-purpose document processor.  Such an aim
could be achieved by a selection of instructions which would enable
users to use TeX primitives, but such a procedure is considered too
inflexible (and probably too daunting for ordinary users).  Thus the
designers of LaTeX created a model which offered an
_abstraction_ of the design of documents.  Obviously, not all
documents can look the same (even with the defocussed eye of
abstraction), so the model uses _classes_ of document.  Base
LaTeX offers five classes of document: [`book`](http://ctan.org/pkg/book),
[`report`](http://ctan.org/pkg/report), [`article`](http://ctan.org/pkg/article) and [`letter`](http://ctan.org/pkg/letter).
For each class, LaTeX provides a _class file_; the user
arranges to use it via a `\documentclass` command at the top of the
document.  So a document starting
  `\documentclass{article}`
may be called ''an _article_ document''.

This is a good scheme, but it has a glaring flaw: the actual
typographical designs provided by the LaTeX class files aren't
widely liked.  The way around this is to _refine_ the class.  To
refine a class, a programmer may write a new class file that loads an
existing class, and then does its own thing with the document design.

If the user finds such a refined class, all is well, but if not, the
common way is to load a _package_ (or several).

The LaTeX distribution, itself, provides rather few package files,
but there are lots of them, by a wide variety of authors, to be found
on the archives.  Several packages are designed just to adjust the
design of a document&nbsp;&mdash; using such packages achieves what the
programmer might have achieved by refining the class.

Other packages provide new facilities: for example, the
[`graphics`](http://ctan.org/pkg/graphics) package (actually provided as part of any LaTeX
distribution) allows the user to load externally-provided graphics
into a document, and the [`hyperref`](http://ctan.org/pkg/hyperref) package enables the user
to construct hyper-references within a document.

On disc, class and package files only appear different by virtue of
their name ''extension''&nbsp;&mdash; class files are called `*.cls` while
package files are called `*.sty`.  Thus we find that the LaTeX
standard [`article`](http://ctan.org/pkg/article) class is represented on disc by a file called
`article.cls`, while the [`hyperref`](http://ctan.org/pkg/hyperref) package is
represented on disc by a file called `hyperref.sty`.

The class vs.&nbsp;package distinction was not clear in LaTeX 2.09&nbsp;&mdash;
everything was called a style (''document style'' or ''document style
option'').  It doesn't really matter that the nomenclature has
changed: the important requirement is to understand what other people
are talking about.

