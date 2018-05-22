# Flowing text around figures

There are several LaTeX packages that purport to do this, but they
all have their limitations because the TeX machine isn't really
designed to solve this sort of problem.  Piet van Oostrum has
conducted a survey of the available packages; he recommends:

- `floatflt` [`floatflt`](http://ctan.org/pkg/floatflt) is an improved version
  (for LaTeX 2e) of `floatfig.sty`, and its syntax is:
```latex
\begin{floatingfigure}[options]{width of figure}
  figure contents
\end{floatingfigure}
```
There is a (more or less similar) `floatingtable`
environment.

The tables or figures can be set left or right, or alternating on
even/odd pages in a double-sided document.

The package works with the `multicol` package, but doesn't work well
in the neighbourhood of list environments (unless you change your
LaTeX document).
- `wrapfig` [`wrapfig`](http://ctan.org/pkg/wrapfig) has syntax:
```latex
\begin{wrapfigure}[height of figure in lines]{l,r,...}[overhang]{width}
  figure, caption, etc.
\end{wrapfigure}
```
    The syntax of the `wraptable` environment is similar.

    The _`height`_ may be omitted, in which case it will
    be calculated from the size of the figure; the package will use
    the greater of the specified and the
    actual width.  The `{l,r,_etc_.}` parameter may
    also be specified as `i`_(nside)_ or
    `o`_(utside)_ for two-sided documents, and uppercase
    may be used to indicate that the picture should float.  The
    overhang allows the figure to be
    moved into the margin.  The figure or table will entered into the
    list of figures or tables if you use the `\caption` command.

    The environments do not work within list environments that end
    before the figure or table has finished, but can be used in a
    parbox or minipage, and in twocolumn format.
  - `picins` [`Picins`](http://ctan.org/pkg/Picins) is part of a large bundle
    that allows inclusion of pictures (e.g., with shadow boxes,
    various MS-DOS formats, etc.).  The command for inserting a
    picture at the start of a paragraph is:
    `\parpic``(width,height)(x-off,y-off)[Options][Position]{Picture}`

    _Paragraph text_
  All parameters except the _Picture_ are optional.  The picture
  can be positioned left or right, boxed with a rectangle, oval,
  shadowbox, dashed box, and a caption can be given which will be
  included in the list of figures.

  Unfortunately (for those of us whose understanding of German is not
  good), the documentation is in German.  Piet van Oostrum has written
  a summary in English.

All of the above deal insertions at one or other margin; they are able
to take advantage of the TeX `\parshape` primitive that allows
you to adjust the margins of the text of a paragraph, by line (Knuth
provides an example of such use, with text typeset in a circle,
half-overlapping the margin, in chapter&nbsp;14 of the TeXbook).  To
place insertions in the middle of a paragraph requires effort of an
entirely different sort; the [`cutwin`](http://ctan.org/pkg/cutwin) package does this for
you.  It requires a set of ''part line widths'' (two per line), and
typesets the ''cutout'' section of the paragraph line by line.  The
examples in the package documentation look enticing.

Plain TeX users only have one option: [`figflow`](http://ctan.org/pkg/figflow) (which
doesn't work in LaTeX).  [`Figflow`](http://ctan.org/pkg/Figflow) only offers flowed
figures at the start of the paragraph, but it seems perfectly
functional. Syntax is
  `\figflow{&lsaquo;_width_&rsaquo;}{&lsaquo;_height_&rsaquo;}{&lsaquo;_figure_&rsaquo;}`
(the user is responsible for having the dimensions correct, and for
ensuring the figure fits on the page).

