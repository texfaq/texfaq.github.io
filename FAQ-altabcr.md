# Alignment tab changed to `\cr`

This is an error you may encounter in LaTeX when a tabular
environment is being processed.  ''Alignment tabs'' are the
`\&` signs that separate the columns of a `tabular`
(or `array` or matrix) environment; so the error message
```latex
! Extra alignment tab has been changed to \cr
```
could arise from a simple typo, such as:
```latex
\begin{tabular}{ll}
  hello   & there & jim \\
  goodbye & now
\end{tabular}
```
where the second `\&` in the first line of the table is more than the
two-column `ll` column specification can cope with. In this
case, an extra `l` in that solves the problem.  (If you
continue from the error in this case, `jim` will be moved
to a row of his own.)  Another simple typo that can provoke the error
is:
```latex
\begin{tabular}{ll}
  hello   & there
  goodbye & now
\end{tabular}
```
where the ` ` has been missed from the first line of the table.
In this case, if you continue from the error, you will find that
LaTeX has made a table equivalent to:
```latex
\begin{tabular}{ll}
  hello   & there goodbye\\
  now
\end{tabular}
```
(with the second line of the table having only one cell).

Rather more difficult to spot is the occurrence of the error when
you're using alignment instructions in a `p` column:
```latex
\usepackage{array}
...
\begin{tabular}{l>{\raggedright}p{2in}}
here & we are again \\
happy & as can be
\end{tabular}
```
the problem here (as explained in 
[tabular cell alignment](./FAQ-tabcellalign.html)) is that the
`\raggedright` command in the column specification has overwritten
`tabular`s definition of ` `, so that
`happy` appears in a new line of the second column, and the
following `\&` appears to LaTeX just like the second
`\&` in the first example above.

Get rid of the error in the way described in 
[tabular cell alignment](./FAQ-tabcellalign.html)&nbsp;&mdash; either use
`\tabularnewline` explicitly, or use the `\RBS` trick described
there.

The [`amsmath`](http://ctan.org/pkg/amsmath) package adds a further twist; when typesetting
a matrix (the package provides many matrix environments), it has a
fixed maximum number of columns in a matrix&nbsp;&mdash; exceed that maximum,
and the error will appear.  By default, the maximum is set to 10, but
the value is stored in counter `MaxMatrixCols` and may be
changed (in the same way as any counter):
```latex
\setcounter{MaxMatrixCols}{20}
```

