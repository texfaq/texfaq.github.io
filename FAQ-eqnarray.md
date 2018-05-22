# Why not use `eqnarray`?

The environment `eqnarray` is attractive for the
occasional user of mathematics in LaTeX documents: it seems to
allow aligned systems of equations.  Indeed it _does_ supply such
things, but it makes a serious mess of spacing.  In the system:
```latex
\begin{eqnarray}
  a & = & b + c \\
  x & = & y - z
\end{eqnarray}
```
the spacing around the ''='' signs is _not_ that defined in the
metrics for the font from which the glyph comes&nbsp;&mdash; it's
`\arraycolsep`, which may be set to some very odd value for reasons
associated with real arrays elsewhere in the document.

The user is far better served by the AMSLaTeX bundle, which
provides an `align` environment, which is designed with
the needs of mathematicians in mind (as opposed to the convenience of
LaTeX programmers).  For this simple case (`align` and
other AMSLaTeX alignment environments are capable of far greater
things), code as:
```latex
\begin{align}
  a & = b + c \\
  x & = y - z
\end{align}
```
The matter is discussed in more detail in a 
[PracTeX journal paper](http://tug.org/pracjourn/2006-4/madsen/madsen.pdf)
by Lars Madsen; Stefan Kottwitz offers a 
[TeX blog entry](http://texblog.net/latex-archive/maths/eqnarray-align-environment/)
which includes screen shots of the output, convincingly demonstrating
the problem.

