# How to change a whole row of a table

Each cell of a table is set in a box, so that a change of font style
(or whatever) only lasts to the end of the cell.  If one has a
many-celled table, or a long one which needs lots of rows emphasising,
putting a font style change command in every cell will be impossibly
tedious.

With the [`array`](http://ctan.org/pkg/array) package, you can define column modifiers
which will change the font style for a whole _column_.  However,
with a bit of subtlety, one can make such modifiers affect rows rather
than columns.  So, we set things up by:
```latex
\usepackage{array}
\newcolumntype{$}{>{\global\let\currentrowstyle\relax}}
\newcolumntype{^}{>{\currentrowstyle}}
\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}%
  #1\ignorespaces
}
```
Now, we put `$` before the first column specifier; and we
put `^ `
before the modifiers of subsequent ones.  We then use `\rowstyle` at
the start of each row we want to modify:
```latex
\begin{tabular}{|$l|^l|^l|}   \hline
  \rowstyle{\bfseries}
  Heading & Big and & Bold \\ \hline
  Meek & mild & entry      \\
  Meek & mild & entry      \\
  \rowstyle{\itshape}
  Strange & and & italic   \\
  Meek & mild & entry      \\ \hline
\end{tabular}
```
The [`array`](http://ctan.org/pkg/array) package works with several other
`tabular`-like environments from other packages (for
example `longtable`), but unfortunately this trick won't
always work.

