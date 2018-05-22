# Spacing lines in tables

(La)TeX mechanisms for maintaining the space between lines (the
''_leading_'') rely on TeX's paragraph builder, which compares
the shape of consecutive lines and adjusts the space between them.

These mechanisms can't work in exactly the same way when (La)TeX is
building a table, because the paragraph builder doesn't get to see the
lines themselves.  As a result, tables sometimes typeset with lines
uncomfortably close together (or occasionally ridiculously far apart).

Traditional (moving metal type) typographers would adjust the spacing
between lines of a table by use of a ''_strut_'' (a metal
spacer).  A TeX user can do exactly the same thing: most macro
packages define a `\strut` command, that defines a space appropriate
to the current size of the text; placing a `\strut` command at the
end of a troublesome row is the simplest solution to the problem&nbsp;&mdash;
if it works.  Other solutions below are LaTeX-specific, but some
may be simply translated to Plain TeX commands.

If your table exhibits a systematic problem (i.e., every row is wrong
by the same amount) use `\extrarowheight`, which is defined by the
[`array`](http://ctan.org/pkg/array) package:
```latex
\usepackage{array}% in the preamble
...
\setlength{\extrarowheight}{length}
\begin{tabular}{....}
```

To correct a single row whose maladjustment isn't corrected by a
`\strut` command, you can define your own, using
`\rule{0pt}{length}`&nbsp;&mdash; which is a near approximation to the
command that goes inside a `\strut`.  The [`bigstrut`](http://ctan.org/pkg/bigstrut) package
defines a strut command that you can use for this purpose:
`\bigstrut` on its own opens up both above and below the current
line; `\bigstrut[t]` opens up above the line,
`\bigstrut[b]` opens up below the line.

General solutions are available, however.  The [`tabls`](http://ctan.org/pkg/tabls) package
automatically generates an appropriately-sized strut at the end of
each row.  Its disadvantages are that it's really rather slow in
operation (since it gets in the way of everything within tables) and
its (lack of) compatibility with other packages.

The [`makecell`](http://ctan.org/pkg/makecell) package provides a command `\gape` that may
be used to apply strut expansion for a single cell of a table:
```latex
\begin{tabular}{lll}
  ... & \gape{cell contents} & ... \\
  ...
\end{tabular}
```
The package's similar `\Gape` command provides the same function,
but with optional arguments that allow you to adjust the top and
bottom adjustment.

To adjust every cell in whole tables, the
`\setcellgapes{&lsaquo;_value_&rsaquo;}` sets the adjustment value (an
optional argument of `t` or `b` restricts
adjustment to the top or bottom of each cell, respectively).  Having
issued `\setcellgapes`, the command `\makegapedcells` switches
cell expansion on, and `\nomakegapedcells` switches it off again.

The [`cellspace`](http://ctan.org/pkg/cellspace) package does a (possibly inferior) job by
defining a new table/array column type ''S'', which you apply to each
column specification.  So, for example,
`\begin{tabular}{l l l p&#x7b;3cm&#x7d;}`
would become
`\begin{tabular}{Sl Sl Sl Sp&#x7b;3cm&#x7d;}`
and so on.  This technique shows
promise of not interfering so much with other packages, but this
author has heard of no reports from the field.

The [`booktabs`](http://ctan.org/pkg/booktabs) package comes with a thought-provoking essay
about how tables should be designed.  Since table row-spacing problems
most often appear in collisions with rules, the author's thesis,
that LaTeX users tend too often to rule their tables, is
interesting.  The package provides rule commands to support the
author's scheme, but deals with inter-row spacing too.  The most
recent release of [`booktabs`](http://ctan.org/pkg/booktabs) sports compatibility with
packages such as [`longtable`](http://ctan.org/pkg/longtable).

