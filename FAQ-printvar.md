# How to print contents of variables?

It is often useful to print out the values of variables in the log
file or on the terminal.  Three possible ways to print out the
contents of `\textheight` variable are:
  

1.  `\showthe``\textheight`
2.  `\message{The text height is `\the``\textheight`}`
3.  `\typeout{The text height is `\the``\textheight`}`

These techniques use the TeX primitives `\the` (which provides
the value of a variable), `\showthe` (print a variable to the
terminal and the log, on a line of its own), and `\message`, which
interpolates something into the log.  The command `\typeout` is
LaTeX's general message output mechanism.

In each case, the variable's value is printed as a number of points.

To typeset the value of `\textheight`, just
`\the``\textheight` is enough, but a more flexible alternative is
to use the [`printlen`](http://ctan.org/pkg/printlen) package.  [`Printlen`](http://ctan.org/pkg/Printlen) allows you
to choose the units in which you print a variable; this is useful,
given that the most ordinary people don't think in points
(particularly Knuth's points, of which there are 72.27 to the inch).

So, using [`printlen`](http://ctan.org/pkg/printlen), we could say:
```latex
\newlength{\foo}
\setlength{\foo}{12pt}
\verb|\foo| is \printlength{\foo}
```
and get:
`\foo` is 12pt
while, if we say:
```latex
\newlength{\foo}
\setlength{\foo}{12pt}
\uselengthunit{mm}
\verb|foo| is \printlength{\foo}
```
we get:
`\foo` is 4.21747mm

