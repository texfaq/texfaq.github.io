# Token not allowed in PDFDocEncoded string

The package [`hyperref`](http://ctan.org/pkg/hyperref) produces this error when it doesn't
know how to make something into a ''character'' that will go into one
of its PDF entries.  For example, the (unlikely) sequence
```latex
\newcommand{\filled}[2]{%
  #1%
  \hfil
  #2%
}
\section{\filled{foo}{bar}}
```
provokes the error.  [`Hyperref`](http://ctan.org/pkg/Hyperref) goes on to tell you:
```latex
removing `\hfil' on input line ...
```
It's not surprising: how would _you_ put the
typesetting instruction `\hfil` into a PDF bookmark?

[`Hyperref`](http://ctan.org/pkg/Hyperref) allows you to define an alternative for such
things: the command `\texorpdfstring`, which takes two
arguments&nbsp;&mdash; the first is what is typeset, the second is what is put
into the bookmark.  For example, what you would probably like in this
case is just a single space in the bookmark; if so, the erroneous
example above would become:
```latex
\newcommand{\filled}[2]{%
  #1%
  \texorpdfstring{\hfil}{\space}%
  #2%
}
\section{\filled{foo}{bar}}
```
and with that definition, the example will compile succesfully
([`hyperref`](http://ctan.org/pkg/hyperref) knows about the macro `\space`).

