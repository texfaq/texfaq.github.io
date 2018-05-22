# ''No line here to end''

The error
```latex
! LaTeX Error: There's no line here to end.

See the LaTeX manual or LaTeX Companion for explanation.
```
appears when you give LaTeX a ` ` command at a time
when it's not expecting it; it is a _line-breaking_ command, and
is confused if LaTeX isn't building a paragraph when you give the
command.  A common case is where you've decided you want the label of
a list item to be on a line of its own, and written (for example):
```latex
\begin{description}
\item[Very long label] \\
  Text...
\end{description}
```

The proper solution to the problem is to write a new sort of
`description` environment, that does just what you're after.  (The
[_LaTeX Companion_](./FAQ-latex-books.html)
offers a rather wide selection of variants of these things.)

A straightforward solution, which avoids the warning, is to write:
```latex
\begin{description}
\item[Very long label] \leavevmode \\
  Text...
\end{description}
```
which starts a paragraph before forcing a break.  The
[`expdlist`](http://ctan.org/pkg/expdlist) package provides the same functionality with its
`\breaklabel` command, and [`mdwlist`](http://ctan.org/pkg/mdwlist) provides it via its
`\desclabelstyle` command.

The other common occasion for the message is when you're using the
`center` (or `flushleft` or `flushright`)
environment, and have decided you need extra separation between lines
in the environment:
```latex
\begin{center}
  First (heading) line\\
  \\
  body of the centred text...
\end{center}
```
The solution here is plain: use the ` ` command in the way it's
supposed to be used, to provide more than just a single line break
space.  ` ` takes an optional argument, which specifies
how much extra space to add; the required effect in the text above can
be had by saying:
```latex
\begin{center}
  First (heading) line\\[\baselineskip]
  body of the centred text...
\end{center}
```

You _can_ use `\leavevmode`, as above:
```latex
\begin{center}
  First (heading) line\\
  \leavevmode\\
  body of the centred text...
\end{center}
```
but that is just as tiresome to type as ` ` with an optional
argument, and can not be recommended.

