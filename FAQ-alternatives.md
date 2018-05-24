---
section: Current TeX-related projects
permalink: /FAQ-alternatives.html
date: 2018-05-24
redirect_from: /FAQ-ant
---

# Alternatives to TeX

The idea of using a programmatic approach to typeset documents is not limited
to TeX, and there have been many different approaches explored over the years.
Some of these seek to potentially replace TeX, others are more complementary.
The use of (La)TeX-like syntax is seen in some, though not all, of these.

The projects listed here are entirely distinct from TeX or its derivatives
(they are not ''TeX-like'' programs).

## Active projects

### Patoline

[Patoline](http://patoline.org/) is a typesetting system written in OCaml and
using a mix of TeX-like syntax and ''escape'' to OCaml to provide typesetting
control. Patoline aims for a module design, and fast numerical processing.

### SILE

[SILE](http://sile-typesetter.org/) is a typesetting system written in Lua and
using the HarfBuzz font shaper. It's input syntax is somewhat inspired by
LaTeX, for example
```latex
\begin{document}
Hello SILE!
\end{document}
```
is a valid SILE document (notice the _lack_ of a preamble here).

### Speedata Publisher

[Speedata Publisher](https://www.speedata.de/en/) is like SILE written in Lua,
but uses LuaTeX (not pure Lua) to provide the ''back-end''. This means it does
feature a _tiny_ TeX-based wrapper, but once that has handed over to Lua, TeX
is not involved. Speedata Publisher is particularly well-suited to some areas
in which TeX is less successful, for example more image-rich documents.

## Historical projects

### The ANT typesetting system

Achim Blumensath's ANT project aimed not to replicate TeX with a different
implementation technique, but rather to provide a replacement for TeX which
uses TeX-like typesetting algorithms in a very different programming
environment. ANT's markup language was modelled on (La)TeX, but implemented in
OCaml.
