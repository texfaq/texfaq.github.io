# Variable-width columns in tables

This is a slightly different take on the problem addressed in
''[fixed-width tables](./FAQ-fixwidtab.html)''&nbsp;&mdash; here we have
a column whose size we can't absolutely predict when we design the
document.

While the basic techniques (the [`tabularx`](http://ctan.org/pkg/tabularx), [`tabulary`](http://ctan.org/pkg/tabulary)
and [`ltxtable`](http://ctan.org/pkg/ltxtable) packages) are the same for this problem as for the
fixed-width _table_ problem, there's one extra tool that we can
call to our aid, which may be preferable in some situations.

Suppose we have data in one column which we read from an external
source, and the source itself isn't entirely predictable.  The data in
the column may end up pretty narrow in every row of the table, or it
may be wide enough that the table would run over the edge of the page;
however, we don't want to make the column as wide as possible ''just
in case'', by defining a fixed size for the table.  We would like the
column to be as small as possible, but have the possibility to spread
to a maximum width and (if even that width is exceeded) turn into a
`p`-style column.

The [`varwidth`](http://ctan.org/pkg/varwidth) package, discussed in 
''[automatic sizing of minipages](./FAQ-varwidth.html)'', provides
a solution.  If you load it together with the LaTeX ''required''
[`array`](http://ctan.org/pkg/array) package, i.e.:
```latex
\usepackage{array}
\usepackage{varwidth}
```
[`varwidth`](http://ctan.org/pkg/varwidth) defines a new column-type `V`, which you
can use as follows:
```latex
\begin{tabular}{l V{3.5cm} r}
  foo & blah      & bar \\
  foo & blah blah & bar \\
\end{tabular}
```
when the second column ends up less than 3.5cm wide;
or you can use it as follows:
```latex
\begin{tabular}{l V{3.5cm} r}
  foo & blah      & bar \\
  foo & blah blah & bar \\
  foo & blah blah blah blah blah blah
                  & bar \\
\end{tabular}
```
where the second column will end up noticeably wider, and will wrap to
a second line in the third row.

