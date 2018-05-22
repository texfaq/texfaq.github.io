# Importing graphics into (La)TeX documents

Knuth, when designing the current version of TeX back in the early
1980s, could discern no ''standard'' way of expressing graphics in
documents.  He reasoned that this state could not persist for ever,
but that it would be foolish for him to define TeX primitives that
allowed the import of graphical image definitions.  He therefore
deferred the specification of the use of graphics to the writers of
DVI drivers; TeX documents would control the drivers by
means of 
[`\special` commands](./FAQ-specials.html).

There is therefore a straightforward way for anyone to import graphics
into their document: read the specification of the `\special`
commands your driver uses, and 'just' code them.  This is the
hair-shirt approach: it definitely works, but it's not for everyone.

Over the years, therefore, ''graphics inclusion'' packages have sprung
up; most were designed for inclusion of
[Encapsulated PostScript graphics](./FAQ-eps.html)&nbsp;&mdash;
which has become the _lingua franca_ of graphics inclusion over
the last decade or so.

Notable examples are the [`epsf`](http://ctan.org/pkg/epsf) package (distributed with
`dvips`) and the [`psfig`](http://ctan.org/pkg/psfig) package.  (Both of these
packages were designed to work well with both Plain TeX and
LaTeX 2.09; they are both still available.)  All such packages were
tied to a particular DVI driver (`dvips`, in
the above two cases), but their code could be configured for others.

The obvious next step was to make the code configurable dynamically.
The LaTeX standard [`graphics`](http://ctan.org/pkg/graphics) package and its derivatives
made this step: it is strongly preferred for all current work.

Users of Plain TeX have two options allowing them to use
[`graphicx`](http://ctan.org/pkg/graphicx): the [`miniltx`](http://ctan.org/pkg/miniltx) ''LaTeX emulator'' and
the [`graphicx.tex`](http://ctan.org/pkg/graphicx.tex) front-end allow you to load
[`graphicx`](http://ctan.org/pkg/graphicx), and [Eplain](./FAQ-eplain.html) allows you to load
it (using the full LaTeX syntax) direct.

The [`graphics`](http://ctan.org/pkg/graphics) package takes a variety of ''driver
options''&nbsp;&mdash; package options that select code to generate the
commands appropriate to the DVI driver in use.  In most cases,
your (La)TeX distribution will provide a `graphics.cfg` file
that will select the correct driver for what you're doing (for
example, a distribution that provides both LaTeX and PDFLaTeX
will usually provide a configuration file that determines whether
PDFLaTeX is running, and selects the definitions for it if so).

The [`graphics`](http://ctan.org/pkg/graphics) package provides a toolkit of commands (insert
graphics, scale a box, rotate a box), which may be composed to provide
most facilities you need; the basic command, `\includegraphics`,
takes one optional argument, which specifies  the bounding box of the
graphics to be included.

The [`graphicx`](http://ctan.org/pkg/graphicx) package uses the facilities of of
[`graphics`](http://ctan.org/pkg/graphics) behind a rather more sophisticated command syntax
to provide a very powerful version of the `\includegraphics`
command.  [`graphicx`](http://ctan.org/pkg/graphicx)'s version can combine scaling and
rotation, viewporting and clipping, and many other things.  While this
is all a convenience (at some cost of syntax), it is also capable of
producing noticeably more efficient PostScript, and some of its
combinations are simply not possible with the [`graphics`](http://ctan.org/pkg/graphics)
package version.

The [`epsfig`](http://ctan.org/pkg/epsfig) package provides the same facilities as
[`graphicx`](http://ctan.org/pkg/graphicx), but via a `\psfig` command (also known as
`\epsfig`), capable of emulating
the behaviour (if not the bugs) the old [`psfig`](http://ctan.org/pkg/psfig) package.
[`Epsfig`](http://ctan.org/pkg/Epsfig) also supplies homely support for former users of the
[`epsf`](http://ctan.org/pkg/epsf) package.  However, there's a support issue: if you
declare you're using [`epsfig`](http://ctan.org/pkg/epsfig), any potential mailing list or
usenet helper has to clear out of the equation the possibility that
you're using ''old'' [`epsfig`](http://ctan.org/pkg/epsfig), so that support is slower
coming than it would otherwise be.

There is no rational reason to stick with the old packages, which have
never been entirely satisfactory in the LaTeX context. (One
irrational reason to leave them behind is that their replacement's
name tends not to imply that it's exclusively related to PostScript
graphics.  The reasoning also excludes [`epsfig`](http://ctan.org/pkg/epsfig), of course.)

A wide variety of detailed techniques and tricks have been developed
over the years, and Keith Reckdahl's [`epslatex`](http://ctan.org/pkg/epslatex) outlines them
in compendious detail: this highly recommendable document is available
from CTAN.  An invaluable review of the practicalities of
exchanging graphics between sites,
''[Graphics for Inclusion in Electronic Documents](http://silas.psfc.mit.edu/elec_fig/elec_figures.pdf)''
has been written by Ian Hutchinson; the document isn't on CTAN,
but may also be
[browsed on the Web](http://silas.psfc.mit.edu/elec_fig/).

