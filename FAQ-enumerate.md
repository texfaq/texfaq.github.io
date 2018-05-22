# Fancy enumeration lists

The [`enumerate`](http://ctan.org/pkg/enumerate) package allows you to control the display of
the enumeration counter.  The package adds an optional parameter to
the `enumerate` environment, which is used to specify the
layout of the labels.  The layout parameter contains an enumeration
type (`1` for arabic numerals, `a` or `A`
for alphabetic enumeration, and `i` or `I` for Roman
numerals), and things to act as decoration of the enumeration.  So,
for example
```latex
\usepackage{enumerate}
...
\begin{enumerate}[(a)]
\item ...  ...
\end{enumerate}
```
starts a list whose labels run (a), (b), (c), &hellip;; while
```latex
\usepackage{enumerate}
...
\begin{enumerate}[I/]
\item ...  ...
\end{enumerate}
```
starts a list whose labels run I/, II/, III/, &hellip;

The [`paralist`](http://ctan.org/pkg/paralist) package, whose primary purpose is 
[compaction of lists](./FAQ-complist.html), provides the same facilities
for its `enumerate`-like environments.

If you need non-stereotyped designs, the [`enumitem`](http://ctan.org/pkg/enumitem) package
gives you most of the flexibility you might want to design your own.
The silly roman example above could be achieved by:
```latex
\usepackage{enumitem}
...
\begin{enumerate}[label=\Roman{*}/]
\item ...  ...
\end{enumerate}
```
Note that the `*` in the key value stands for the list
counter at this level.  You can also manipulate the format of
references to list item labels:
```latex
\usepackage{enumitem}
...
\begin{enumerate}[label=\Roman{*}/, ref=(\roman{*})]
\item ...  ...
\end{enumerate}
```
to make references to the list items format appear as (i), (ii),
(iii), etc.

The [`memoir`](http://ctan.org/pkg/memoir) class includes functions that match those in the
[`enumerate`](http://ctan.org/pkg/enumerate) package, and has similar functionality for
`itemize` lists.
%% ```latex
%%    \renewcommand{\theenumi}{\Roman{enumi}}
%%    \renewcommand{\labelenumi}{\theenumi/}
%% ```

