# Optional arguments like `\section`

Optional arguments, in macros defined using `\newcommand`, don't
quite work like the optional argument to `\section`.  The default
value of `\section`s optional argument is the value of the
mandatory argument, but `\newcommand` requires that you 'know' the
value of the default beforehand.

The requisite trick is to use a macro in the optional argument:
```latex
\documentclass{article}
\newcommand\thing[2][\DefaultOpt]{%
  \def\DefaultOpt{#2}%
  optional arg: #1,  mandatory arg: #2%
}
\begin{document}
\thing{manda}% #1=#2

\thing[opti]{manda}% #1="opti"
\end{document}
```
LaTeX itself has a trickier (but less readily understandable)
method, using a macro `dblarg`; inside LaTeX, the example
above would have been programmed:
```latex
\newcommand\thing{\@dblarg\@thing}
\newcommand\@thing[2][\@error]{%
  optional arg: #1,  mandatory arg: #2%
}
```
In that code, `thing` is only ever called with an optional and a
mandatory argument; if the default from the `\newcommand` is
invoked, a bug in user code has bitten&hellip;

