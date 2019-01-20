---
title: Alternative head- and footlines in LaTeX
category: formatting
tags: structure
permalink: /FAQ-fancyhdr
---

The standard LaTeX document classes define a small set of "page
styles" which specify head- and footlines for your document (though
they can be used for other purposes, too).  The standard set is very
limited, but LaTeX is capable of much more.  The internal
LaTeX coding needed to change page styles is not particularly
challenging, but there's no need&nbsp;&mdash; there are packages that provide
useful abstractions that match the way we typically think about these
things.

The [`fancyhdr`](https://ctan.org/pkg/fancyhdr) package provides
simple mechanisms for defining pretty much every head- or footline
variation you could want; the directory also contains some
documentation and one or two smaller packages.  [`Fancyhdr`](https://ctan.org/pkg/Fancyhdr) 
also deals with the tedious behaviour of the standard styles with
[initial pages](FAQ-nopageno), by enabling you to define
different page styles for initial and for body pages.

The [`scrlayer-scrpage`](https://ctan.org/pkg/scrlayer-scrpage)
package provides another approach to controlling page headers
and footers.  Use this package instead of [`fancyhdr`](https://ctan.org/pkg/fancyhdr)
for improved integration with the [`KOMA-script`](https://ctan.org/pkg/koma-script) classes.

[`Memoir`](https://ctan.org/pkg/Memoir) also contains the functionality of [`fancyhdr`](https://ctan.org/pkg/fancyhdr),
and has several predefined styles.
