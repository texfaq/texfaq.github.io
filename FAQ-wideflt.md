# Centring a very wide figure or table

The normal means of centring a figure or table object is to include
`\centering` at the top of the float.  This doesn't help if the
object is wider than `\textwidth`&nbsp;&mdash; the object starts at the left
margin and juts out into the right margin (which is actually doubly
unsatisfactory, since as well as looking bad, the float won't be
placed until the next `\clearpage` or the like.)

You can avoid the problem by rescaling the figure or table to fit, but
this is often not satisfactory, for several reasons.

Otherwise, if the object is wider than the printable area of the page,
you've no choice other than to [rotate it](./FAQ-landscape.html).  If,
however, the object is _just_ wider than the text block, you can
make it pretend to be the right size by:
```latex
\begin{figure}
  \noindent
  \makebox[\textwidth]{\includegraphics{my-wide-figure}}%
  \caption{This figure juts out into both margins}
\end{figure}
```
Note the `\noindent`: the `\makebox` starts a paragraph, and you
really don't want that indented by `\parindent`.

