---
title: Not in outer par mode
category: errors
permalink: /FAQ-parmoder
redirect_from: /FAQ-ouparmd
date: 2018-05-27
---

For example:
```latex
*\mbox{\marginpar{foo}}

! LaTeX Error: Not in outer par mode.
```
The error comes when you try to build something movable inside a box.
Movable things, in this context, are floating environments
(`figure` and `table`, for example), and
`\marginpar`s.  LaTeX simply doesn't have the mechanisms for
floating out of boxes.  In fact, floats and `\marginpar`s
themselves are built out of boxes, so that they can't be nested.

If your error arises from `\marginpar`, you simply have to think of
an alternative way of placing the command; there is no slick solution.

If a floating environment is the culprit, it may be possible to use
the `H` placement option, provided (for example) by the
[`float`](https://ctan.org/pkg/float) package:
<!-- {% raw %} -->
```latex
\parbox{25cm}{%
  \begin{figure}[H]
  ...
  \caption{Apparently floating...}
  \end{figure}%
}
```
<!-- {% endraw %} -->
This example makes little sense as it stands; however, it is
conceivable that sane uses could be found (for example, using a
package such as [`algorithm2e`](https://ctan.org/pkg/algorithm2e) to place two algorithms
side-by-side).


Annother common occurrence is when the user wants a figure somewhere
inside a table:
```latex
\begin{tabular}{|l|}
  \hline
  \begin{figure}
  \includegraphics{foo}
  \end{figure}
  \hline
\end{tabular}
```
a construction that was supposed to put a frame around the diagram,
but doesn't work, any more than:
```latex
\framebox{\begin{figure}
  \includegraphics{foo}
  \end{figure}%
}
```
The problem is, that the `tabular` environment, and the
`\framebox` command restrain the `figure` environment
from its natural métier, which is to float around the document.

The solution is simply not to use the `figure` environment
here:
```latex
\begin{tabular}{|l|}
  \hline
  \includegraphics{foo}
  \hline
\end{tabular}
```
What was the float for?&nbsp;&mdash; as written in the first two examples, it
serves no useful purpose; but perhaps you actually wanted a diagram
and its caption framed, in a float.

It's simple to achieve this&nbsp;&mdash; just reverse the order of the
environments (or of the `figure` environment and the
command):
```latex
\begin{figure}
  \begin{tabular}{|l|}
    \hline
    \includegraphics{foo}
    \caption{A foo}
    \hline
  \end{tabular}
\end{figure}
```
The same goes for `table` environments (or any other sort
of float you've defined for yourself) inside tabulars or box commands;
you _must_ get the float environment out from inside, one way or
another.

