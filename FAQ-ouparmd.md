# Not in outer par mode

The error:
```latex
! LaTeX Error: Not in outer par mode.
```
comes when some ''main'' document feature is shut up somewhere it
doesn't like.

The commonest occurrence is when the user wants a figure somewhere
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
from its natural m&eacute;tier, which is to float around the document.

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

