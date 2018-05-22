# Why is my table/figure/&hellip; not centred?




You want a float whose contents are centred, but LaTeX ignores your
`center` environment.  Most likely, you have written:
```latex
\begin{center}
  \begin{figure}
    ...
  \end{figure}
\end{center}
```
In this case, LaTeX has ''taken the `figure` away'',
and will typeset it at some location it fancies (it does the same with
`table`s) the only thing we can say (for sure) about the
location is that it _won't_ be inside that `center`
environment.  As a result, the `center` environment is
left with nothing to do&nbsp;&hellip; except to 
[make a mess of your vertical spacing](./FAQ-vertspacefloat.html).


The solution is the same as that outlined in 
[the same answer](./FAQ-vertspacefloat.html), noting that all control of
an `figure` or `table` needs to be
inside the environment.  So the example's code should be converted to
```latex
\begin{figure}
  \centering
  ...
\end{figure}
```
(or something similar for a `table`).


