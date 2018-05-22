# Merging cells in a column of a table

It's easy to come up with a table design that requires a cell that
spans several rows.  An example is something where the left-most
column labels the rest of the table; this can be done (in simple
cases) by using 
[diagonal separation in corner cells](./FAQ-slashbox.html), but that
technique rather strictly limits what can be used as the content of
the cell.

The [`multirow`](http://ctan.org/pkg/multirow) package enables you to construct such multi-row
cells, in a very simple manner.  For the simplest possible use, one
might write:
```latex
\begin{tabular}{|c|c|}
\hline
\multirow{4}{*}{Common g text} 
      & Column g2a\\
      & Column g2b \\
      & Column g2c \\
      & Column g2d \\
\hline
\end{tabular}
```
and [`multirow`](http://ctan.org/pkg/multirow) will position ''Common g text'' at the vertical
centre of the space defined by the other rows.  Note that the rows
that don't contain the ''multi-row'' specification must have empty
cells where the multi-row is going to appear.

The `*` may be replaced by a column width specification.  In this
case, the argument may contain forced line-breaks:
```latex
\begin{tabular}{|c|c|}
\hline
\multirow{4}{25mm}{Common\\g text} 
      & Column g2a\\
      & Column g2b \\
      & Column g2c \\
      & Column g2d \\
\hline
\end{tabular}
```
A similar effect (with the possibility of a little more
sophistication) may be achieved by putting a smaller table that lines
up the text into a `*`-declared `\multirow`.

The `\multirow` command may also used to write labels vertically
down one or other side of a table (with the help of the
[`graphics`](http://ctan.org/pkg/graphics) or [`graphicx`](http://ctan.org/pkg/graphicx) package, which provide the
`\rotatebox` command):
```latex
\begin{tabular}{|l|l|}
\hline
\multirow{4}{*}{\rotatebox{90}{hi there}}
      & Column g2a\\
      & Column g2b \\
      & Column g2c \\
      & Column g2d \\
\hline
\end{tabular}
```
(which gives text going upwards; use angle `-90` for text going
downwards, of course).

To make a `\multicolumn` multi-row ''cell'' in a table, you have to
enclose a `\multirow` inside a `\multicolumn`&nbsp;&mdash; the other way
around does not work, so:
```latex
\begin{tabular}{|c|c|c|}\hline
\multicolumn{2}{|c|}{\multirow{2}{*}{combined cells}}
     &top right\\ \cline{3-3}
\multicolumn{2}{|c|}{}
     &middle right\\ \hline
bottom left
     &bottom center
     &bottom right\\ \hline
\end{tabular}
```
[`Multirow`](http://ctan.org/pkg/Multirow) is set up to interact with the [`bigstrut`](http://ctan.org/pkg/bigstrut)
package (which is also discussed in the answer to 
[spacing lines in tables](./FAQ-struttab.html)).  You use an
optional argument to the `\multirow` command to say how many of the
rows in the multi-row have been opened up with `\bigstrut`.

The documentation of both [`multirow`](http://ctan.org/pkg/multirow) and [`bigstrut`](http://ctan.org/pkg/bigstrut) is
to be found, as comments, in the package files themselves.

