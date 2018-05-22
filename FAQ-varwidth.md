# Automatic sizing of `minipage`

The `minipage` environment requires you to specify the
width of the ''page'' you're going to create.  This is sometimes
inconvenient: you would like to occupy less space, if possible, but
`minipage` sets a box that is exactly the width you
specified.

The [`pbox`](http://ctan.org/pkg/pbox) package defines a `\pbox` whose width is exactly
that of the longest enclosed line, subject to a maximum width that you
give it.  So while `\parbox{2cm}{Hello world!}` produces a
box of width exactly `2cm`,
`\pbox{2cm}{Hello world!}` produces one whose width is
`1.79cm` (if one's using the default `cmr` font for the
text, at least).  The package also provides a
`\settominwidth[min]{length}{text}` (which looks (almost)
like the standard `\settowidth` command), and a `\widthofpbox`
function analogous to the `\widthof` command for use with the
[`calc`](http://ctan.org/pkg/calc) package.

The [`eqparbox`](http://ctan.org/pkg/eqparbox) package extends [`pbox`](http://ctan.org/pkg/pbox)'s idea, by
allowing you to set a series of boxes, all with the same (minimised)
width.  (Note that it doesn't accept a limiting maximum width
parameter.)  The package documentation shows the following example
drawn from a joke _curriculum vitae_:
```latex
\noindent%
\eqparbox{place}{\textbf{Widgets, Inc.}} \hfill
\eqparbox{title}{\textbf{Senior Widget Designer}} \hfill
\eqparbox{dates}{\textbf{1/95--present}}

...

\noindent%
\eqparbox{place}{\textbf{Thingamabobs, Ltd.}} \hfill
\eqparbox{title}{\textbf{Lead Engineer}} \hfill
\eqparbox{dates}{\textbf{9/92--12/94}}
```
The code makes the three items on each of the heading lines have
exactly the same width, so that the lines as a whole produce a regular
pattern down the page.  A command `\eqboxwidth` allows you to use
the measured width of a group: the documentation shows how the command
may be used to produce sensible-looking columns that mix `c`-,
`r`- or `l`-rows, with the equivalent of a <code class="verb">p{...&#x7d;</code>
entry, by making the fixed-width rows an [`eqparbox`](http://ctan.org/pkg/eqparbox) group, and
making the last from a `\parbox` using the width that's been
measured for the group.

The [`varwidth`](http://ctan.org/pkg/varwidth) package defines a `varwidth`
environment which sets the content of the box to match a ''narrower
natural width'' if it finds one.  (You give it the same parameters as
you would give `minipage`: in effect, it is a 'drop-in'
replacement.)  [`Varwidth`](http://ctan.org/pkg/Varwidth) provides its own ragged text command:
`\narrowragged`, which aims to make narrower lines and to put more
text in the last line of the paragraph (thus producing lines with more
nearly equal lengths than typically happens with `\raggedright`
itself).

The documentation (in the package file) lists various restrictions and
things still to be done, but the package is already proving useful for
a variety of jobs.

