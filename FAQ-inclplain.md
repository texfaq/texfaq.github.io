# Including Plain TeX files in LaTeX

LaTeX, though originally [based on Plain TeX](./FAQ-LaTeXandPlain.html), does not
contain all of Plain TeX's commands.  Worse, some Plain TeX
command names appear in LaTeX, with different semantics.  As a
result, special measures need to be taken to allow general Plain TeX
documents (or parts of documents) to be typeset within LaTeX.

The truly reliable way is to translate the Plain TeX commands, to
produce an equivalent of the original's semantics.  However, this is
not practical in many circumstances, and for those occasions, the
[`plain`](http://ctan.org/pkg/plain) package will often come to your aid.  The package
defines a `plain` environment, in which a Plain TeX
document may be processed:
```latex
\begin{plain}
  \input{plain-doc}
\end{plain}
```
The package is known to fail, for example, with documents that use
AMSTeX; no doubt it would also fail if asked to load Eplain.
All these things can be overcome (although it's not often easy), but
the environment saves a lot of work on many occasions.

