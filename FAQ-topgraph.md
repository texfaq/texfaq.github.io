# Top-aligning imported graphics

When TeX sets a line of anything, it ensures that the base-line of
each object in the line is at the same level as the base-line of the
final object.  (Apart, of course, from `\raisebox` commands&hellip;)

Most imported graphics have their base-line set at the bottom of the
picture.  When using packages such as [`subfig`](http://ctan.org/pkg/subfig), one often
wants to align figures by their tops.  The following odd little bit of
code does this:
```latex
\vtop{%
  \vskip0pt
  \hbox{%
    \includegraphics{figure}%
  }%
}
```
The `\vtop` primitive sets the base-line of the resulting object to
that of the first ''line'' in it; the `\vskip` creates the illusion
of an empty line, so `\vtop` makes the very top of the box into the
base-line.

In cases where the graphics are to be aligned with text, there is a
case for making the base-line one ex-height below the top of the box,
as in:
```latex
\vtop{%
  \vskip-1ex
  \hbox{%
    \includegraphics{figure}%
  }%
}
```
A more LaTeX-y way of doing the job (somewhat inefficiently) uses
the [`calc`](http://ctan.org/pkg/calc) package:
```latex
\usepackage{calc}
...
\raisebox{1ex-\height}{\includegraphics{figure}}
```
(this has the same effect as the text-align version, above).

The fact is, _you_ may choose where the base-line ends up.  This
answer merely shows you sensible choices you might make.

