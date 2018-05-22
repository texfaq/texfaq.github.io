# Case-changing oddities

TeX provides two primitive commands `\uppercase` and
`\lowercase` to change the case of text; they're not much used, but
are capable creating confusion.

The two commands do not expand the text that is their parameter&nbsp;&mdash;
the result of `\uppercase{abc}` is `ABC`, but
`\uppercase{`\abc`}` is always `\abc`, whatever the
meaning of `\abc`.  The commands are simply interpreting a table of
equivalences between upper- and lowercase characters.
They have (for example) no mathematical sense, and
```latex
\uppercase{About $y=f(x)$}
```
will produce
```latex
ABOUT $Y=F(X)$
```
which is probably not what is wanted.

In addition, `\uppercase` and `\lowercase` do not deal very well
with non-American characters, for example
`\uppercase{`\ae`}` is the same as `\ae`.

LaTeX provides commands `\MakeUppercase` and `\MakeLowercase`
which fixes the latter problem.  These commands are used in the
standard classes to produce upper case running heads for chapters
and sections.

Unfortunately `\MakeUppercase` and `\MakeLowercase` do not solve
the other problems with `\uppercase`, so for example a section
title containing `\begin{tabular}` &hellip;
`\end{tabular}` will produce a running head containing
`\begin{TABULAR}`.  The simplest solution to this problem is
using a user-defined command, for example: 
```latex
\newcommand{\mytable}{\begin{tabular}...
  \end{tabular}}
\section{A section title \protect\mytable{}
  with a table}
```
Note that `\mytable` has to be protected, otherwise it will be
expanded and made upper case; you can achieve the same result by
declaring it with `\DeclareRobustCommand`, in which case the
`\protect` won't be necessary.

David Carlisle's [`textcase`](http://ctan.org/pkg/textcase) package
addresses many of these problems in a transparent way.  It defines
commands `\MakeTextUppercase` and `\MakeTextLowercase` which do
upper- or lowercase, with the fancier features of the LaTeX
standard `\Make*`-commands but without the problems
mentioned above.  Load the package with
`\usepackage[overload]{textcase}`, and it will redefine the LaTeX
commands (_not_ the TeX primitive commands `\uppercase` and
`\lowercase`), so that section headings and the like don't produce
broken page headings.

