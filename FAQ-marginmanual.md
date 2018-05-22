# How to set up page layout ''by hand''

So you're eager to do it yourself, notwithstanding the cautions
  outlined in ''[changing margins](./FAQ-changemargin.html)''.

It's important that you first start by familiarising yourself
with LaTeX's page layout parameters. For example, see section C.5.3 of the
LaTeX manual (pp.&nbsp;181-182), or corresponding sections in many of the other
good LaTeX manuals (see [LaTeX books](./FAQ-latex-books.html)). 

LaTeX controls the page layout with a number of parameters, which
allow you to change the distance from the edges of a page to the left
and top edges of your typeset text, the width and height of the text,
and the placement of other text on the page.  However, they are
somewhat complex, and it is easy to get their interrelationships wrong
when redefining the page layout. The layout package defines a
`\layout` command which draws a diagram of your existing page
layout, with the dimensions (but not their interrelationships) shown.

Even changing the text height and width, `\textheight` and
`\textwidth`, requires more care than you might expect: the height
should be set to fit a whole number of text lines (in terms of
multiples of `\baselinskip`), and the width should be constrained
by the number of characters per line, as mentioned in 
''[changing margins](./FAQ-changemargin.html)''.

Margins are controlled by two parameters: `\oddsidemargin` and
`\evensidemargin`, whose names come from the convention that
odd-numbered pages appear on the right-hand side ('recto') of a
two-page spread and even-numbered pages on the left-hand side
('verso').  Both parameters actually refer to the left-hand margin of
the relevant pages; in each case the right-hand margin is specified by
implication, from the value of `\textwidth` and the width of the
paper.  (In a one-sided document, which is the default in many
classes, including the standard [`article`](http://ctan.org/pkg/article) and [`report`](http://ctan.org/pkg/report)
classes, `\oddsidemargin` stands for both.)

The
''origin'' (the zero position) on the page is one inch from the top of
the paper and one inch from the left side; positive horizontal
measurements extend right across the page, and positive vertical
measurements extend down the page. Thus, the parameters
`\evensidemargin`, `\oddsidemargin` and `\topmargin`, should
be set to be 1&nbsp;inch less than the true margin; for margins closer to
the left and top edges of the page than 1&nbsp;inch, the margin parameters
must be set to negative values.

