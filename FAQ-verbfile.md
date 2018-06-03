---
title: Including a file verbatim in LaTeX
category: formatting
permalink: /FAQ-verbfile
---

A good way is to use Rainer Schöpf's [`verbatim`](https://ctan.org/pkg/verbatim) package,
which provides a command `\verbatiminput` that takes a file name as
argument:
```latex
\usepackage{verbatim}
...
\verbatiminput{verb.txt}
```
Another way is to use the `alltt` environment, which
requires the [`alltt`](https://ctan.org/pkg/alltt) package.  The environment interprets its
contents "mostly" verbatim, but executes any (La)TeX commands it
finds:
```latex
\usepackage{alltt}
...
\begin{alltt}
\input{verb.txt}
\end{alltt}
```
of course, this is little use for inputting (La)TeX source
code&hellip;

The [`moreverb`](https://ctan.org/pkg/moreverb) package extends the [`verbatim`](https://ctan.org/pkg/verbatim) package,
providing a `listing` environment and a `\listinginput`
command, which line-number the text of the file.  The package also has
a `\verbatimtabinput` command, that honours TAB characters in
the input (the package's `listing` environment and the
`\listinginput` command also both honour TAB).

The [`sverb`](https://ctan.org/pkg/sverb) package provides verbatim input (without recourse
to the facilities of the [`verbatim`](https://ctan.org/pkg/verbatim) package):
```latex
\usepackage{sverb}
...
\verbinput{verb.txt}
```

The [`fancyvrb`](https://ctan.org/pkg/fancyvrb) package offers configurable implementations of
everything [`verbatim`](https://ctan.org/pkg/verbatim), [`sverb`](https://ctan.org/pkg/sverb) and [`moreverb`](https://ctan.org/pkg/moreverb)
have, and more besides.  It is nowadays the package of choice for the
discerning typesetter of verbatim text, but its wealth of facilities
makes it a complex beast and study of the documentation is strongly
advised.

The [`memoir`](https://ctan.org/pkg/memoir) class includes the relevant functionality of the
[`verbatim`](https://ctan.org/pkg/verbatim) and [`moreverb`](https://ctan.org/pkg/moreverb) packages.

