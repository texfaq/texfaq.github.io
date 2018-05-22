# ''Too many unprocessed floats''

If LaTeX responds to a `\begin{figure}` or
`\begin{table}` command with the error message
```latex
! LaTeX Error: Too many unprocessed floats.

See the LaTeX manual or LaTeX Companion for explanation.
```
your figures (or tables) are not being placed properly.  LaTeX
has a limited amount of storage for 'floats' (figures, tables, or
floats you've defined yourself with the [`float`](http://ctan.org/pkg/float) package); if
something you have done has prevented LaTeX from typesetting
floats, it will run out of storage space.

This failure usually occurs in extreme cases of 
[floats moving ''wrongly''](./FAQ-floats.html);
LaTeX has found it can't place a float, and floats of the same type
have piled up behind it.

How does this happen?&nbsp;&mdash; LaTeX guarantees that caption numbers are
sequential in the document, but the caption number is allocated when
the figure (or whatever) is created, and can't be changed.  Thus, if
floats are placed out of order, their caption numbers would also
appear out of order in the body of the document (and in the list of
figures, or whatever).  As a result, enforcement of the guarantee
means that simple failure to place a float means that no subsequent
float can be placed; and hence (eventually) the error.

Techniques for solving the problem are discussed in the 
[floats question](./FAQ-floats.html) already referenced.

For LaTeX releases prior to 2015, an
 alternative _may_ be to use the [`morefloats`](http://ctan.org/pkg/morefloats) package.
The package will allocate more ''float skeletons'' than LaTeX
does by default; each such skeleton may then be used to store a
float.  Beware that even with [`morefloats`](http://ctan.org/pkg/morefloats), the number you can
allocate is limited; even with the [`etex`](http://ctan.org/pkg/etex) package.

LaTeX releases from 2015 onwards have an `\extrafloats`
command which (assuming an &epsilon;-TeX format is being used) will
allow many more float boxes to be allocated (the upper limit 
being several thousand, rather more than can reasonably handled
in tex macro lists.) Also the default number of floats that may be stored
has been increased from 18 to 52.

The error also occurs in a long sequence of float environments, with
no intervening text.  Unless the environments will fit ''here'' (and
you've allowed them to go ''here''), there will never be a page break,
and so there will never be an opportunity for LaTeX to reconsider
placement.  Of course, the floats can't all fit ''here'' if the
sequence is sufficiently prolonged: once the page fills, LaTeX
won't place any more floats, leading to the error.

Techniques for resolution may involve redefining the floats using the
[`float`](http://ctan.org/pkg/float) package's `[H]` float qualifier, but you are unlikely
to get away without using `\clearpage` from time to time.

