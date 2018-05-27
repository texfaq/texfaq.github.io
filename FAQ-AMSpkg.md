---
title: What are the AMS packages (`amsmath`, etc.)?
category: background
tags: math
permalink: /FAQ-AMSpkg
date: 2018-05-27
redirect_from: /FAQ-amspkg
---

# What are the AMS packages (`amsmath`, etc.)?

There are two components to the AMS LaTeX packages: `amsmath` (a collection of
packages that implements multi-line displayed equations, equation numbering,
ellipsis dots, matrices, double accents, multi-line subscripts, text strings in
math environments, and other things) and the AMS document classes (`amsart`,
`amsbook`, and `amsproc`, which are comparable to the three basic LaTeX
classes, and `amsthm`). These components work together to produce output in the
preferred AMS style. The AMS document classes incorporate `amsthm`, and
automatically load `amsmath` and `amsfonts`. `amsmath` and `amsthm` can also be
used independently with non-AMS document classes.

Early in 2016, maintenance of `amsmath` was transferred to the LaTeX Project
team; responsibility for the document classes and `amsthm` remains with the
AMS. The canonical versions of the two collections reside on CTAN in distinct
areas.

## History

These packages were derived from AMSTeX, a TeX macro package based on Plain
TeX, originally written by Michael Spivak for the American Mathematical Society
(AMS) during 1983&ndash;1985 and described in the book ''[The Joy of
TeX](/FAQ-tex-books)''. AMSTeX provides many features for producing more
professional-looking maths formulas with less burden on authors. It pays
attention to the finer details of sizing and positioning that mathematical
publishers care about. However, it lacked automatic numbering and
cross-referencing, and when LaTeX increased in popularity, authors sought to
submit papers to the AMS in LaTeX, so AMSLaTeX was developed.

The AMS no longer recommends the use of AMSTeX, and urges its authors to use
the LaTeX classes and packages instead.


