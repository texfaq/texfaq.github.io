# Wide figures in two-column documents

Floating figures and tables ordinarily come out the same width as the
page, but in two-column documents they're restricted to the width of
the column.  This is sometimes not good enough; so there are alternative
versions of the float environments&nbsp;&mdash; in two-column documents,
`figure*` provides a floating page-wide figure (and `table*` a
page-wide table) which will do the necessary.

The `*`ed float environments can only appear at the top of a page,
or on a whole page&nbsp;&mdash; `h` or `b` float placement directives are
simply ignored.

Unfortunately, page-wide equations can only be accommodated inside
float environments.  You should include them in `figure` environments,
or use the [`float`](http://ctan.org/pkg/float) or [`ccaption`](http://ctan.org/pkg/ccaption)package to define a
new float type. 

