# Alternative head- and footlines in LaTeX

The standard LaTeX document classes define a small set of 'page
styles' which specify head- and footlines for your document (though
they can be used for other purposes, too).  The standard set is very
limited, but LaTeX is capable of much more.  The internal
LaTeX coding needed to change page styles is not particularly
challenging, but there's no need&nbsp;&mdash; there are packages that provide
useful abstractions that match the way we typically think about these
things.

The [`fancyhdr`](http://ctan.org/pkg/fancyhdr) package provides
simple mechanisms for defining pretty much every head- or footline
variation you could want; the directory also contains some
documentation and one or two smaller packages.  [`Fancyhdr`](http://ctan.org/pkg/Fancyhdr) 
also deals with the tedious behaviour of the standard styles with
[initial pages](./FAQ-nopageno.html), by enabling you to define
different page styles for initial and for body pages.

While [`fancyhdr`](http://ctan.org/pkg/fancyhdr) will work with [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes,
an alternative package, [`scrpage2`](http://ctan.org/pkg/scrpage2), eases integration with the
classes.  [`Scrpage2`](http://ctan.org/pkg/Scrpage2) may also be used as a [`fancyhdr`](http://ctan.org/pkg/fancyhdr)
replacement, providing similar facilities.  The [`KOMA-script`](http://ctan.org/pkg/KOMA-script)
classes themselves permit some modest redefinition of head- and
footlines, without the use of the extra package.

[`Memoir`](http://ctan.org/pkg/Memoir) also contains the functionality of [`fancyhdr`](http://ctan.org/pkg/fancyhdr),
and has several predefined styles.

Documentation of [`fancyhdr`](http://ctan.org/pkg/fancyhdr) is distributed with the package,
in a separate file; documentation of [`scrpage2`](http://ctan.org/pkg/scrpage2) is integrated
with the `scrgui*` documentation files that are distributed with
the [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes.

