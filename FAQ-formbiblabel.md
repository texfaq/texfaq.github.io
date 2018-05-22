# Format of numbers in the bibliography

By default, LaTeX makes entries in the bibliography look like:
  [1] Doe, Joe et al.  Some journal.  2004.

  {[2]} Doe, Jane et al. Some journal. 2003.
while many documents need something like:
  1. Doe, Joe et al.  Some journal.  2004.

  2. Doe, Jane et al. Some journal. 2003.

This sort of change may be achieved by many of the ''general''
citation packages; for example, in [`natbib`](http://ctan.org/pkg/natbib), it's as simple as:
```latex
\renewcommand{\bibnumfmt}[1]{#1.}
```
but if you're not using such a package, the following internal
LaTeX commands, in the preamble of your document, will do the job:
```latex
\makeatletter
\renewcommand*{\@biblabel}[1]{\hfill#1.}
\makeatother
```

