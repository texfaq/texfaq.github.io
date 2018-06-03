---
title: Referring to things by their name
category: formatting
tags: labels references
permalink: /FAQ-nameref
date: 2014-06-10
---

LaTeX's labelling mechanism is designed for the impersonal world of
the academic publication, in which everything has a number: an
extension is necessary if we are to record the _name_ of things
we've labelled.  The two packages available extend the LaTeX
sectioning commands to provide reference by the name of the section.

The [`titleref`](https://ctan.org/pkg/titleref) package is a simple extension which provides
the command `\titleref`; it is a stand-alone package&nbsp;&mdash; don't use it
in a document in which you also need to use [`hyperref`](https://ctan.org/pkg/hyperref).

The [`byname`](https://ctan.org/pkg/smartref) package is part of the [`smartref`](https://ctan.org/pkg/smartref) bundle
and works well with [`smartref`](https://ctan.org/pkg/smartref), and works (to an extent) with
[`hyperref`](https://ctan.org/pkg/hyperref), but the links it defines are not hyperlinks.

The [`memoir`](https://ctan.org/pkg/memoir) class incorporates the functionality of
[`titleref`](https://ctan.org/pkg/titleref), but doesn't work with [`byname`](https://ctan.org/pkg/smartref) (though a
search of `comp.text.tex` on [groups.google.com] will
find a patch to [`byname`](https://ctan.org/pkg/smartref) to remedy the problem).

The [`hyperref`](https://ctan.org/pkg/hyperref) bundle includes a package [`nameref`](https://ctan.org/pkg/nameref),
which will work standing alone (i.e., without [`hyperref`](https://ctan.org/pkg/hyperref): of
course, in this mode its references are not hyperlinked).  If you load
[`hyperref`](https://ctan.org/pkg/hyperref) itself, [`nameref`](https://ctan.org/pkg/nameref) is automatically loaded.
[`Memoir`](https://ctan.org/pkg/Memoir) requires the [`memhfixc`](https://ctan.org/pkg/memhfixc) when running with
[`hyperref`](https://ctan.org/pkg/hyperref); following the sequence:
```latex
\documentclass[...]{memoir}
...
\usepackage[...]{hyperref}
\usepackage{memhfixc}
```
[`nameref`](https://ctan.org/pkg/nameref) commands may be used in a [`memoir`](https://ctan.org/pkg/memoir) document.

[`Zref`](https://ctan.org/pkg/Zref) defines a proposed replacement for all of the LaTeX
reference mechanisms, and among other things provides
name-referencing mechanisms:
```latex
\usepackage[user,titleref]{zref}
...
\section{hello}\zlabel{sec:one}
The section name is: \ztitleref{sec:one}.
```
(One might hope that something of this sort would be the
"way of the future", but things move slowly in the LaTeX world: don't hold
your breath.) 

Each of [`titleref`](https://ctan.org/pkg/titleref), [`byname`](https://ctan.org/pkg/smartref) and [`nameref`](https://ctan.org/pkg/nameref)
defines a reference command with the same name as the package:
`\titleref`, `\byname` and `\nameref`. The [`nameref`](https://ctan.org/pkg/nameref)
package also defines a command `\byshortnameref`, which uses the
optional "short" title argument to the chapter and section commands.
(Although it comes from the same author, [`zref`](https://ctan.org/pkg/zref) _doesn't_
define a short-name variant.)

