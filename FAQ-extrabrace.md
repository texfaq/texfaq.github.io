# An extra ``}'??

You've looked at your LaTeX source and there's no sign of a misplaced
``} on the line in question.

Well, no: this is TeX's cryptic way of hinting that you've put a
[fragile command](./FAQ-protect.html) in a moving argument.

For example, `\footnote` is fragile, and if we put that in the
moving argument of a `\section` command, as
```latex
\section{Mumble\footnote{I couldn't think of anything better}}
```
we get told
```latex
! Argument of \@sect has an extra }.
```
The same happens with captions (the following is a simplification of a
`comp.text.tex` post):
```latex
\caption{Energy: \[e=mc^2\]}
```
giving us the error message
```latex
! Argument of \@caption has an extra }.
```
The similar (but more sensible):
```latex
\caption{Energy: \(e=mc^2\)}
```
is more tiresome, still: there's no error when you first run the
job&nbsp;&hellip; but there is on the second pass, when the list of figures
(or tables) is generated, giving:
```latex
! LaTeX Error: Bad math environment delimiter.
```
in the `\listoffigures` processing.

The solution is usually to use a robust command in place of the one
you are using, or to force your command to be robust by prefixing it
with `\protect`, which in the `\section` case would show as
```latex
\section{Mumble\protect\footnote{I couldn't think of anything better}}
```
However, in both the `\section` case and the `\caption` case,
you can separate the moving argument, as in
`\section[moving]{static}`; this gives us another standard
route&nbsp;&mdash; simply to omit (or otherwise sanitise) the fragile command
in the moving argument.  So, one might rewrite the `\caption`
example as:
```latex
\caption[Energy: (Einstein's equation)]{Energy: \(E=mc^2\)}
```
In practice, inserting mathematics in a moving argument has already
been addressed in LaTeX 2e by the robust command `\ensuremath`:
```latex
\caption{Energy: \ensuremath{E=mc^2}}
```
So: always look for alternatives to the `\protect` route.

Footnotes can be even more complex; 
''[footnotes in LaTeX section headings](./FAQ-ftnsect.html)''
deals specifically with that issue.

