# Fixed-width tables

There are two basic techniques for making fixed-width tables in
LaTeX: you can make the gaps between the columns stretch, or you
can stretch particular cells in the table.

Basic LaTeX can make the gaps stretch: the `tabular*`
environment takes an extra argument (before the `clpr` layout one)
which takes a length specification: you can say things like `15cm`
or `\columnwidth` here.  You must also have an `\extracolsep`
command in the `clpr` layout argument, inside an `@{}`
directive.  So, for example, one might have
```latex
\begin{tabular*}{\columnwidth}{@{\extracolsep{\fill}}lllr}
```
The `\extracolsep` applies to all inter-column gaps to its right as
well; if you don't want all gaps stretched, add
`\extracolsep{0pt}` to cancel the original.

The [`tabularx`](http://ctan.org/pkg/tabularx) package defines an extra `clpr` column
specification, `X`; `X` columns behave as `p`
columns which expand to fill the space available.  If there's more
than one `X` column in a table, the spare space is distributed
between them.

The [`tabulary`](http://ctan.org/pkg/tabulary) package (by the same author) provides a way of
''balancing'' the space taken by the columns of a table.  The package
defines column specifications `C`, `L`, `R` and
`J`, giving, respectively, centred, left, right and
fully-justified versions of space-sharing columns.  The package
examines how long each column would be ''naturally'' (i.e., on a piece of paper of unlimited width), and
allocates space to each column accordingly.  There are ''sanity
checks'' so that really large entries don't cause everything else to
collapse into nothingness (there's a ''maximum width'' that any column
can exert), and so that tiny entries can't get smaller than a
specified minimum.  Of course, all this work means that the package
has to typeset each row several times, so things that leave
''side-effects'' (for example, a counter used to produce a row-number
somewhere) are inevitably unreliable, and should not even be tried.

The [`ltxtable`](http://ctan.org/pkg/ltxtable) package combines the features of the
[`longtable`](http://ctan.org/pkg/longtable) and [`tabularx`](http://ctan.org/pkg/tabularx) packages.  It's important
to read the documentation, since usage is distinctly odd; the
distribution contains no more than a file `ltxtable.tex`, which you
should process using LaTeX.  Processing will give you a `.sty`
file as well as the `.dvi` or `.pdf` output containing the
documentation.

