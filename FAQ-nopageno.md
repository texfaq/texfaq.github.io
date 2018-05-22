# How to get rid of page numbers

Very occasionally, one wants a document with no page numbers.  For
such occasions, the package [`nopageno`](http://ctan.org/pkg/nopageno) will make
`\pagestyle{plain}` have the same effect as
`\pagestyle{empty}`; in simple documents, this will suppress
all page numbering (it will not work, of course, if the document uses
some other pagestyle than `plain`).

To suppress page numbers from a sequence of pages, you may use
`\pagestyle{empty}` at the start of the sequence, and restore
the original page style at the end.  Unfortunately, you still have to
deal with the page numbers on pages containing a `\maketitle`,
`\part` or `\chapter` command, since the standard classes; deal
with those separately, as described below.

To suppress page numbers on a single page, use
`\thispagestyle{empty}` somewhere within the text of the
page.  Note that, in the standard classes, `\maketitle` and
`\chapter` use `\thispagestyle` internally, so your call
must be _after_ those commands.

Unfortunately, `\thispagestyle` doesn't work for [`book`](http://ctan.org/pkg/book) or
[`report`](http://ctan.org/pkg/report) `\part` commands: they set the page style (as do
`\chapter` commands), but then they advance to the next page so
that you have no opportunity to change the style using
`\thispagestyle`.  The present author has proposed solving the
problem with the following ''grubby little patch'', on
`comp.text.tex`:
```latex
\makeatletter
\let\sv@endpart\@endpart
\def\@endpart{\thispagestyle{empty}\sv@endpart}
\makeatother
```
Fortunately, that patch has now been incorporated in a small package
[`nonumonpart`](http://ctan.org/pkg/nonumonpart) (a difficult name&hellip;)

Both the [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes and [`memoir`](http://ctan.org/pkg/memoir) have separate
page styles for the styles of various ''special'' pages, so, in a
[`KOMA`](http://ctan.org/pkg/KOMA) class document one might say:
```latex
\renewcommand*{\titlepagestyle}{empty}
```
while [`memoir`](http://ctan.org/pkg/memoir) will do the job with
  `\aliaspagestyle{title}{empty}`

An alternative (in all classes) is to use the rather delightful
`\pagenumbering{gobble}`; this has the simple effect that any
attempt to print a page number produces nothing, so there's no issue
about preventing any part of LaTeX from printing the number.
However, the `\pagenumbering` command does have the side effect that
it resets the page number (to 1), so it is unlikely to be helpful
other than at the beginning of a document.

The [`scrpage2`](http://ctan.org/pkg/scrpage2) package separates out the representation of the
page number (it typesets the number using the `\pagemark` command) from
the construction of the page header and footer; so one can say
```latex
\renewcommand*{\pagemark}{}
```
which will also suppress the printing of the page number.

Neither of these ''suppress the page number'' techniques touches the
page style in use; in practice this means they don't make sense unless
you are using `\pagestyle{plain}`

