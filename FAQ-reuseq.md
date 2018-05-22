# Re-using an equation

To repeat an existing equation, one wants not only to have the same
mathematics in it, one also wants to re-use the original label it had.
The [`amsmath`](http://ctan.org/pkg/amsmath) package comes to our help, here:
```latex
\usepackage{amsmath}
...
\begin{equation}
  a=b
  \label{eq1}
\end{equation}
...
Remember that
\begin{equation}
  a=b
  \tag{\ref{eq1}}
\end{equation}
```
Here, the second instance of a=b will be
typeset with a copy, made by the `\tag` command, of the label of the
first instance.

