# Floats in multicolumn setting

If you use
```latex
\begin{figure}
  ...
\end{figure}
```
in a `multicols` environment, the figure won't appear.  If
instead you use
```latex
\begin{figure*}
  ...
\end{figure*}
```
the figure will stretch right across the page (just the same as a
`figure*` in standard LaTeX's `twocolumn` option).

It's possible to have single-column figures and tables with captions,
using the `[H]` placement option introduced by the [`float`](http://ctan.org/pkg/float)
package but you might have to fiddle with the placement because they
won't 'float', and exhibit other strange behaviours (such as silently
running off the end of the column at the end of the
`multicols` environment).

