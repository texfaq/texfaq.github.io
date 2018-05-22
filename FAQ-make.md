# Makefiles for LaTeX documents

LaTeX documents are tricky beasts for building using
(`Uni*x`) `make` on: the need to
instruct LaTeX to run several times for essentially different
reasons (for example, ''get the table of contents stable'', ''get the
labels stable'', ''add the bibliography'', ''add the index'') is
actually rather difficult to express in the 'ordinary' sort of
dependency graph that one constructs for `make`.

The `latex-make` package offers help with this task (far more
sophisticated techniques than in the script that builds these FAQs); it
looks good, but reports of its use (other than by its author) are scarce.

For a long time, the only `make`-like package on CTAN
was `latexmk`, which is a `Perl`
script that analyses your LaTeX source for its dependencies, runs
BibTeX or `makeindex` as and when it notices that those
programs' input (parts of the `aux` file, or the
`idx` file, respectively) has changed, and so on.
`Latexmk` is a fine 
solution (and was used in generating printable versions of these
FAQs for some time); it has recently been upgraded and has
many bells and whistles that allow it to operate as if it were a poor
man's WYSIWYG system.

A recent strong contender is `arara`, written in
`Java`.  It is (the documentation says) based on ''rules''
and ''directives''; its aim is to determine what to do from explicit
instructions in the document's source code, rather than secondary
sources such as log file analysis.  `Arara` is relatively new
on CTAN, and comes with recommendations from many of the great and
good of the LaTeX world.

Newer still is the Python script `try`, which has a similar
structure to `arara`&nbsp;&mdash; it, too, reads instructions in the
document source.

Apparently along the same lines, is AutoLaTeX.  The `README`
of the distribution is actual a Unix-type man-page output, and shows
great attention to the details of the document production process.

The (Ruby) script `mk` (also, apparently, known as
`latex_maker`) works well with another of the author's
scripts script called `vpp` (View and Print
PostScript/PDF).

Windows users of the MiKTeX system may use that system's
`texify` application.  `Texify` deals with basic
LaTeX features, including generating a bibliography and an index;
it makes no claim to deal with other things (such as multiple
bibliographies or indexes, or lists of terminology, etc.), which
AutoLaTeX can be configured to process.

The [[`texinfo`](http://ctan.org/pkg/texinfo) system](./FAQ-texinfo.html) comes with a similar
utility called `texi2dvi`, which is capable of ''converting''
either LaTeX or [`texinfo`](http://ctan.org/pkg/texinfo) files into DVI (or into
PDF, using PDFTeX).

A later contribution is the bundle [`latexmake`](http://ctan.org/pkg/latexmake), which
offers a set of `make` rules that invoke `texi2dvi`
as necessary.

The curious may examine the rules employed to run the present
FAQ through LaTeX: we don't present them as a complete
solution, but some of the tricks employed are surely re-usable.

