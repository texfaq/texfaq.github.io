# Facing floats on 2-page spread

If a pair of floats need to be forced to form a 2-page spread (in a
book, or whatever), the first must lie on the left side of the spread,
on an even-numbered page.  The [`dpfloat`](http://ctan.org/pkg/dpfloat) package provides for
this: the construction to use is:
```latex
\begin{figure}[p]
  \begin{leftfullpage}
    <left side figure>
  \end{leftfullpage}
\end{figure}
\begin{figure}[p]
  \begin{fullpage}
    <right side figure>
  \end{fullpage}
\end{figure}
```
The construction has no effect on documents with class option
`oneside` (`twoside` is the default for
[`book`](http://ctan.org/pkg/book) class).

A special case of this requirement places the caption for a float on
the next page.  (This is useful if you have a float that ''only just''
fits the page.)  You can (with a certain amount of twiddling) make
this work with [`dpfloat`](http://ctan.org/pkg/dpfloat), but the [`fltpage`](http://ctan.org/pkg/fltpage) package is
specially designed for the job:
```latex
\documentclass[twoside]{article}
\usepackage[leftFloats]{fltpage}
\begin{document}
...
\begin{FPfigure}
  \includegraphics{my-huge-figure}
  \caption{Whew!  That was a big one!}
\end{FPfigure}
...
\end{document}
```
That example should produce a caption
  Figure &lsaquo;_n_&rsaquo; _(facing page)_: Whew!  &hellip;
(Note, however, that the package is an old one, and declares itself to
be a beta release, and contains no valid licence statement so that it
is not in TeX&nbsp;Live.  It seems to work, but&hellip;)

A alternative route is the ''continued'' mechanism of the
[`caption`](http://ctan.org/pkg/caption) package.  The `\ContinuedFloat` macro makes a
small tweak to the next `\caption` command, so that the command
makes no increment to the caption number.  This does not (of course)
have any effect on actual placement of the float, but it makes the
caption texts read 'sensibly':
```latex
\begin{table}
  \caption{A table}
  ...
\end{table}
...
\begin{table}\ContinuedFloat
  \caption{A table (cont.)}
  ...
\end{table}
```
which would produce:
  Table 3: A table
  &hellip;
  Table 3: A table (cont.)

