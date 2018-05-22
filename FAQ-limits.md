# Sub- and superscript positioning for operators

The commonest hand-written style for expressions is to place the limit
expressions on operators such as `\sum` and `\int` physically
above and below the operator.  In (La)TeX, we write these limit
expressions using sub- and superscripts applied to the operator, but
they don't always appear in the ''handwritten'' way in TeX's
output.

The reason is, that when an expression appears in non-display maths,
in running text (and is therefore in TeX `\textstyle`), placing
the limits thus could lead to ragged line spacing (and hence
difficult-to-read text).  It is therefore common (in `\textstyle`)
to place the limits as one would sub- and superscripts of variables.

This is not universally satisfactory, so the primitive `\limits` is
provided:
```latex
$\sum\limits_{n=1}^{m} ...$
```
which will place the limits right above and below the symbol (and be
blowed to the typography&hellip;).

Contrariwise, you may wish to change the arrangement of the limits
when in `\displaystyle`.  For this purpose, there's a corresponding
`\nolimits`:
```latex
\[\sum\nolimits_{n=1}^{m} ...\]
```
which will place the limits as they would be in `\textstyle`.

Alternatively, one can manipulate the
`\textstyle`/`\displaystyle` state of the mathematics.  To get
`\limits` placement'' in inline maths,
```latex
$\displaystyle\sum_{n=1}^{m} ...$
```
and for `\nolimits` placement'' in display maths,
`\nolimits`:
```latex
\[\textstyle\sum_{n=1}^{m} ...\]
```
will serve.  Either of these forms may have effects other than on the
operator you're considering, but there are still those who prefer this
formulation.

Remember, if you're 
[declaring a special operator of your own](./FAQ-newfunction.html), the
AMSLaTeX functions (that you ought to be using) allow you to choose
how limits are displayed, at definition time.

(Note that the macro `\int` normally has `\nolimits` built in to
its definition.  There is an example in the TeXbook to show how odd
`\int``\limits` looks when typeset.)

