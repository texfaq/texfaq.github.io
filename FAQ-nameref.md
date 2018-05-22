# Referring to things by their name

LaTeX's labelling mechanism is designed for the impersonal world of
the academic publication, in which everything has a number: an
extension is necessary if we are to record the _name_ of things
we've labelled.  The two packages available extend the LaTeX
sectioning commands to provide reference by the name of the section.

The [`titleref`](http://ctan.org/pkg/titleref) package is a simple extension which provides
the command `\titleref`; it is a stand-alone package&nbsp;&mdash; don't use it
in a document in which you also need to use [`hyperref`](http://ctan.org/pkg/hyperref).

The [`byname`](http://ctan.org/pkg/byname) package is part of the [`smartref`](http://ctan.org/pkg/smartref) bundle
and works well with [`smartref`](http://ctan.org/pkg/smartref), and works (to an extent) with
[`hyperref`](http://ctan.org/pkg/hyperref), but the links it defines are not hyperlinks.

The [`memoir`](http://ctan.org/pkg/memoir) class incorporates the functionality of
[`titleref`](http://ctan.org/pkg/titleref), but doesn't work with [`byname`](http://ctan.org/pkg/byname) (though a
search of `comp.text.tex` on [groups.google.com] will
find a patch to [`byname`](http://ctan.org/pkg/byname) to remedy the problem).

The [`hyperref`](http://ctan.org/pkg/hyperref) bundle includes a package [`nameref`](http://ctan.org/pkg/nameref),
which will work standing alone (i.e., without [`hyperref`](http://ctan.org/pkg/hyperref): of
course, in this mode its references are not hyperlinked).  If you load
[`hyperref`](http://ctan.org/pkg/hyperref) itself, [`nameref`](http://ctan.org/pkg/nameref) is automatically loaded.
[`Memoir`](http://ctan.org/pkg/Memoir) requires the [`memhfixc`](http://ctan.org/pkg/memhfixc) when running with
[`hyperref`](http://ctan.org/pkg/hyperref); following the sequence:
```latex
\documentclass[...]{memoir}
...
\usepackage[...]{hyperref}
\usepackage{memhfixc}
```
[`nameref`](http://ctan.org/pkg/nameref) commands may be used in a [`memoir`](http://ctan.org/pkg/memoir) document.

[`Zref`](http://ctan.org/pkg/Zref) defines a proposed replacement for all of the LaTeX
reference mechanisms, and among other things provides
name-referencing mechanisms:
```latex
\usepackage[user,titleref]{zref}
...
\section{hello}\zlabel{sec:one}
The section name is: \ztitleref{sec:one}.
```
(One might hope that something of this sort would be the ''way of the
future'', but things move slowly in the LaTeX world: don't hold
your breath.) 

Each of [`titleref`](http://ctan.org/pkg/titleref), [`byname`](http://ctan.org/pkg/byname) and [`nameref`](http://ctan.org/pkg/nameref)
defines a reference command with the same name as the package:
`\titleref`, `\byname` and `\nameref`. The [`nameref`](http://ctan.org/pkg/nameref)
package also defines a command `\byshortnameref`, which uses the
optional 'short' title argument to the chapter and section commands.
(Although it comes from the same author, [`zref`](http://ctan.org/pkg/zref) _doesn't_
define a short-name variant.)

