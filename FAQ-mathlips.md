---
title: Ellipses
category: usage
tags: math
permalink: /FAQ-mathlips
---

Ellipses are commonly required, and LaTeX natively supplies a fair
range (`\dots`, `\cdots`, `\vdots` and `\ddots`).  By using
the [`graphics`](https://ctan.org/pkg/graphics) package, one can change the slope of the
`\ddots` command, as in
```latex
$ ... \reflectbox{$\ddots$} ... $
```
While this works, it is not a recommended way of achieving the desired
result (see below).  Moreover, LaTeX's range is not adequate to
everyone's requirements, and at least three packages provide
extensions to the set.

The AMSLaTeX bundle provides a range of "semantically-named"
ellipses, for use in different situations: `\dotsb` for use between
pairs of binary operators, `\dotsc` for use between pairs of commas,
and so on.

The [`yhmath`](https://ctan.org/pkg/yhmath) package defines an `\adots` command, which is
the analogue of `\ddots`, sloping forwards rather than backwards.
The [`yhmath`](https://ctan.org/pkg/yhmath) package comes with a rather interesting font that
extends the standard `cmex`; details are in the documentation.

The [`mathdots`](https://ctan.org/pkg/mathdots) package (besides fixing up the behaviour of
(La)TeX `\ddots` and `\vdots` when the font size changes)
provides an "inverse diagonal" ellipsis `\iddots` (doing the same
job as [`yhmath`](https://ctan.org/pkg/yhmath)'s `\adots`, but better).

Documentation of [`yhmath`](https://ctan.org/pkg/yhmath) appears, processed, in the
distribution (thus saving you the bother of installing the package
before being able to read the documentation).  Documentation of
[`mathdots`](https://ctan.org/pkg/mathdots) appears at the end the package file itself.

