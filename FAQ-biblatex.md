# Replacing the BibTeX&ndash;LaTeX mechanism

Producing a successor to BibTeX has long been a favoured activity
among a certain class of TeX-users; the author has seen reports of
progress (on several projects), over the years, but few that claim to
be ready for ''real-world'' use.

Few would deny that BibTeX is ripe for renewal: as originally
conceived, it was a program for creating bibliographies for technical
documents, in English.  People have contributed mechanisms for a
degree of multilingual use (whose techniques are arcane, and quite
likely inextensible), while an extension (`bibtex8`) allows
use with 8-bit character codes, thus providing some multilingual
capabilities.  In addition, specialist BibTeX style files are
available for use in non-technical papers.

BibTeX uses a style language whose mechanisms are unfamiliar to
most current programmers: it's difficult to learn, but since there are
few opportunities to write the language, it's also difficult to become
fluent (in the way that so many people fluently write the equally
arcane TeX macro language).

Oren Patashnik (the author of BibTeX) summarises the issues as he
sees them, in a 
[TUG conference paper from 2003](http://tug.org/TUGboat/Articles/tb24-1/patashnik.pdf)
that seems to suggest that we might expect a
BibTeX&nbsp;1.0 &hellip; which hasn't (yet) appeared.

In the absence of BibTeX&nbsp;1.0, what do we need from the bibliography
system of the future?&nbsp;&mdash; simple: a superset of what BibTeX does
(or can be made to do), preferably implementing a simpler style
language, and with coherent multilingual capabilities.

There are two parts to a bibliography system; processing the database
of citations, and typesetting the results.  The existing BibTeX
system provides a means of processing the database, and there are
macros built into LaTeX, as well as many LaTeX packages, that
process the results.

Of the direct BibTeX replacements, only two have been submitted to
CTAN: CrossTeX and `biber`.

CrossTeX's language feels familiar to the existing user of
BibTeX, but it's redesigned in an object-oriented style, and looks
(to a non-user) as if it may well be adequately flexible.  It is said
to operate as a BibTeX replacement.

CrossTeX's team respond to queries, and seem well aware of the
need for multilingual support, though it isn't currently offered.

`Biber` is intimately associated with the LaTeX package
[`biblatex`](http://ctan.org/pkg/biblatex); it is logically a BibTeX replacement, but is also
capable of using bibliography databases in its own
`biblatexml` (XML-based) format.  [`Biblatex`](http://ctan.org/pkg/Biblatex)
can also use BibTeX, but `biber` opens up a far wider
range of possibilities, including full Unicode support.

[`Biblatex`](http://ctan.org/pkg/Biblatex) is a processor for the output of an application
such as `biber` or BibTeX; the style of citations and of
the bibliography itself (in your document) is determined by the way
your [`biblatex`](http://ctan.org/pkg/biblatex) style has been set up, not on some
BibTeX-LaTeX package combination.  [`Biblatex`](http://ctan.org/pkg/Biblatex)'s
structure thus eliminates the collections of BibTeX styles, at a
stroke; it comes with a basic set of styles, and details are
determined by options, set at package loading time.  The author,
Philipp Lehman, evaluated the whole field of bibliography software
before starting, and as a result the package provides answers to
many of the questions asked in the bibliography sections of these
FAQs.

[`Biblatex`](http://ctan.org/pkg/Biblatex) was released as experimental software, but it's
clear that many users are already using it happily; Lehman is
responsive to problem reports, at the moment, but a _de facto_
set of expert users is already establishing itself.  A set of
contributed styles has appeared, which cover some of the trickier
bibliography styles.  The road map of the project shows that we are
now working on the final _beta_ releases before the ''stable''
[`biblatex`](http://ctan.org/pkg/biblatex)&nbsp;1.0.

Finally, [`Amsrefs`](http://ctan.org/pkg/Amsrefs) uses a transformed `bib` file,
which is expressed as LaTeX macros.  (The package provides a
BibTeX style that performs the transformation, so that a LaTeX
source containing a `\nocite{*}` command enables BibTeX to
produce a usable [`amsrefs`](http://ctan.org/pkg/amsrefs) bibliography database.)

[`Amsrefs`](http://ctan.org/pkg/Amsrefs) is maintained by the AMS as part of its author
support programme,

