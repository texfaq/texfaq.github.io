# ''Too deeply nested''

This error appears when you start a LaTeX list.

LaTeX keeps track of the nesting of one list inside another.  There
is a set of list formatting parameters built-in for application to
each of the list nesting levels; the parameters determine indentation,
item separation, and so on.  The `list` environment (the
basis for list environments like `itemize` and
`enumerate`) ''knows'' there are only 6 of these sets.

There are also different label definitions for the
`enumerate` and `itemize` environments at
their own private levels of nesting.  Consider this example:
```latex
\begin{enumerate}
\item first item of first enumerate
  \begin{itemize}
  \item first item of first itemize
    \begin{enumerate}
    \item first item of second enumerate
    ...
    \end{enumerate}
  ...
  \end{itemize}
...
\end{enumerate}
```
In the example,
  

-  the first `enumerate` has labels as for a
    first-level `enumerate`, and is indented as for a
    first-level list;
-  the first `itemize` has labels as for a first level
    `itemize`, and is indented as for a second-level list;
    and
-  the second `enumerate` has labels as for a
    second-level `enumerate`, and is indented as for a
    third-level list.

Now, as well as LaTeX _knowing_ that there are 6&nbsp;sets of
parameters for indentation, it also _knows_ that there are only
4&nbsp;types of labels each, for the environments `enumerate`
and `itemize` (this ''knowledge'' spells out a requirement
for class writers, since the class supplies the sets of parameters).

From the above, we can deduce that there are several ways we can run
out of space: we can have 6&nbsp;lists (of any sort) nested, and try to
start a new one; we can have 4&nbsp;`enumerate` environments
somewhere among the set of nested lists, and try to add another one;
and we can have 4&nbsp;`itemize` environments somewhere among
the set of nested lists, and try to add another one.

What can be done about the problem?  Not much, short of rewriting
LaTeX&nbsp;&mdash; you really need to rewrite your document in a slightly
less labyrinthine way.

