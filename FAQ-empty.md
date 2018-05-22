# Detecting that something is empty

Suppose you need to know that the argument of your command is empty:
that is, to distinguish between `\cmd{}` 
and `\cmd{blah}`.  This is pretty simple:
```latex
\def\cmd#1{%
  \def\tempa{}%
  \def\tempb{#1}%
  \ifx\tempa\tempb
    <empty case>
  \else
    <non-empty case>
  \fi
}
```
The case where you want to ignore an argument that consists of nothing
but spaces, rather than something completely empty, is more tricky.
It's solved in the code fragment [`ifmtarg`](http://ctan.org/pkg/ifmtarg), which defines
commands `ifmtarg` and `ifnotmtarg`, which examine their
first argument, and select (in opposite directions) their second or
third argument.  The package's code also appears in the LaTeX
[`memoir`](http://ctan.org/pkg/memoir) class.

[`Ifmtarg`](http://ctan.org/pkg/Ifmtarg) makes challenging reading; there's also a discussion of the
issue in number two of the ''around the bend'' articles by the late
lamented Mike Downes.

