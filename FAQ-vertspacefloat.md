# Extra vertical space in floats

A common complaint is that extra vertical space has crept into
`figure` or `table` floating environments.
More common still are users who post code that introduces this extra
space, and _haven't noticed the problem_!

The trouble arises from the fact that the `center`
environment (and its siblings `flushleft` and
`flushright`) are actually based on LaTeX's
list-handling code; and lists always separate themselves from the
material around them.  Meanwhile, there are parameters provided to
adjust the spacing between floating environments and their
surroundings; so if we have:
```latex
\begin{figure}
 \begin{center}
   \includegraphics{...}
   \caption{...}
 \end{center}
\end{figure}
```
or worse still:
```latex
\begin{figure}
 \begin{center}
   \includegraphics{...}
 \end{center}
 \caption{...}
\end{figure}
```
unwarranted vertical space is going to appear.

The solution is to let the float and the objects in it position
themselves, and to use ''generic'' layout commands rather than their
list-based encapsulations.
```latex
\begin{figure}
  \centering
  \includegraphics{...}
  \caption{...}
\end{figure}
```
(which even involves less typing).

This alternative code will work with any LaTeX package.  It will
not work with obsolete (pre-LaTeX 2e) packages such as
[`psfig`](http://ctan.org/pkg/psfig) or [`epsf`](http://ctan.org/pkg/epsf)&nbsp;&mdash; see 
[graphics inclusion](./FAQ-impgraph.html) for discussion of the
genesis of `\includegraphics`.

