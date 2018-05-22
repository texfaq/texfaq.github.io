# Link text doesn't break at end line

When using the [`hyperref`](http://ctan.org/pkg/hyperref) package, you make a block of text
''active'' when you define a hyper-link (when the user clicks on
that text, the reader program will divert to the _target_ of the
link).

The [`hyperref`](http://ctan.org/pkg/hyperref) package uses a _driver_ (in the same way
as the [`graphics`](http://ctan.org/pkg/graphics) package does), to determine how to implement
all that hyper-stuff.

If you use the driver for `dvips` output (presumably you want
to distill the resulting PostScript), limitations in the way `dvips`
deals with the `\special` commands mean that [`hyperref`](http://ctan.org/pkg/hyperref)
must prevent link anchors from breaking at the end of lines.  Other
drivers (notably those for PDFTeX and for `dvipdfm`) don't
suffer from this problem.

The problem may occur in a number of different circumstances.  For a
couple of them, there are work-arounds:

First, if you have an URL which is active (so that clicking on
it will activate your web browser to ''go to'' the URL).  In
this case [`hyperref`](http://ctan.org/pkg/hyperref) employs the [`url`](http://ctan.org/pkg/url) package to
split up the URL (as described in 
[typesetting URLs](./FAQ-setURL.html)), but the
`dvips` driver then suppresses the breaks.  The way out is
the [`breakurl`](http://ctan.org/pkg/breakurl) package, which modifies the `\url` command
to produce several smaller pieces, between each of which a line break
is permitted.  Each group of pieces, that ends up together in one
line, is converted to a single clickable link.

Second, if you have a table of contents, list of figure or tables, or
the like, [`hyperref`](http://ctan.org/pkg/hyperref) will ordinarily make the titles in the
table of contents, or captions in the lists, active.  If the title or
caption is long, it will need to break within the table, but the
`dvips` driver will prevent that.  In this case, load
[`hyperref`](http://ctan.org/pkg/hyperref) with the option `linktocpage`, and only
the page number will be made active.

Otherwise, if you have a lengthy piece of text that you want active,
you have at present no simple solution: you have to rewrite your text,
or to use a different PDF generation mechanism.

