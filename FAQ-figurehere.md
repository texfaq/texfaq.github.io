# Figure (or table) _exactly_ where I want it

This is of course a contradiction: `figure` and
`table` are _designed_ to float, and will always have
the potential to appear away from where you asked for them.  Therefore
you need something that behaves like a `figure` or
`table` environment, except that it doesn't allow the
figure or table to float.

The most straightforward way is to use of the [`float`](http://ctan.org/pkg/float) package;
it gives you a `[H]` float placement option that prevents
floating:
```latex
\begin{figure}[H]
  \centering
  \includegraphics{foo}
  \caption{caption text}
  \label{fig:nonfloat}
\end{figure}
```
As the example suggests, such a `[H]` figure (or
corresponding table) offers all you need to cross-reference as well
as typeset.  (The package [`here`](http://ctan.org/pkg/here) provides the same function,
but is no longer recommended.)

However, you don't actually _have_ to use [`float`](http://ctan.org/pkg/float) (or
[`here`](http://ctan.org/pkg/here)) since it is, in fact, doing rather little for you.
You can place your figure as you please, with a sequence like
```latex
\begin{center}
  \includegraphics{foo}
  \captionof{figure}{caption text}
  \label{fig:nonfloat}
\end{center}
```
which relies on the `\captionof` command to place a caption without
benefit of an enclosing float.  That command may be had from the extremely
simple-minded package [`capt-of`](http://ctan.org/pkg/capt-of) or from the highly
sophisticated [`caption`](http://ctan.org/pkg/caption) package.

Using either method, you have to deal with the possibility of the
figure or table being too large for the page.  (Floating objects will
float away in this circumstance; ''doing it by hand'', like this, you
take upon yourself the responsibility for avoiding 
'_Overfull `\vbox`_' errors.

A further problem is the possibility that such ''fixed floats'' will
overtake ''real floats'', so that the numbers of figures will be out
of order: figure 6 could be on page 12, while figure 5 had floated to
page 13.  It's best, therefore, either to stay with floating figures
throughout a document, or to use fixed figures throughout.

If it's really impossible to follow that counsel of perfection, you
can use the [`perpage`](http://ctan.org/pkg/perpage) package's command `\MakeSorted`
command:
```latex
...
\usepackage{float}
\usepackage{perpage}
\MakeSorted{figure}
\MakeSorted{table}
...
```
and the sequence of float numbers is all correct.

