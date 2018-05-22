# Using labels as counter values

Labels are tempting sources of 'numbers'&nbsp;&mdash; their most common use,
after all, is simply to typeset a number.  However, their seeming
simplicity is deceptive; the packages [`babel`](http://ctan.org/pkg/babel) and
[`hyperref`](http://ctan.org/pkg/hyperref), at least, fiddle with the definition of
`\ref` and `\pageref` in ways that make
```latex
\setcounter{foo}{\ref{bar}}
```
(etc.) not work; thus the technique may not be relied upon.

The solution is to use the [`refcount`](http://ctan.org/pkg/refcount) package (incidentally,
by the author of [`hyperref`](http://ctan.org/pkg/hyperref)).  The package provides four
commands, all similar to:
```latex
\usepackage{refcount}
...
\label{bar}
...
\setcounterref{foo}{bar}
```
(the other three are `\addtocounterref`, `\setcounterpageref`
and `\addtocounterpageref`).

The package also provides a command
`\getrefnumber{label-name}` that may be used where a
'number' value is needed.  For example:
```latex
... \footnote{foo bar ...\label{foofoot}}
...
\footnotemark[\getrefnumber{foofoot}]
```
which gives you a second footnote mark reference the the footnote.
(There is also a command `\getpagerefnumber`, of course).

The commands could be used by one determined not to use
[`changepage`](http://ctan.org/pkg/changepage) to determine whether 
[the current page is odd](./FAQ-oddpage.html), but it's probably no more
trouble to use the fully-developed tool in this case.

