# Drawing Feynman diagrams in LaTeX

Michael Levine's [`feynman`](http://ctan.org/pkg/feynman) bundle for drawing the diagrams in
LaTeX 2.09 is still available.

Thorsten Ohl's [`feynmf`](http://ctan.org/pkg/feynmf) is designed for use with current
LaTeX, and works in
combination with MetaFont (or, in its [`feynmp`](http://ctan.org/pkg/feynmp) incarnation, with
MetaPost).  The `feynmf` or
`feynmp` package reads a description of the diagram written
in TeX, and writes out code.  MetaFont (or MetaPost) can then produce a
font (or PostScript file) for use in a subsequent LaTeX run.  For
new users, who have access to MetaPost, the PostScript version is
probably the better route, for document portability and other reasons.

Jos Vermaseren's [`axodraw`](http://ctan.org/pkg/axodraw) is mentioned as an alternative in
the documentation of [`feynmf`](http://ctan.org/pkg/feynmf), but it is written entirely in
terms of `dvips` `\special` commands, and is thus rather
imperfectly portable.

An alternative approach is implemented by Norman Gray's [`feyn`](http://ctan.org/pkg/feyn)
package.  Rather than creating complete diagrams as postscript images,
[`feyn`](http://ctan.org/pkg/feyn) provides a font (in a variety of sizes) containing
fragments, which you can compose to produce complete diagrams.  It
offers fairly simple diagrams which look good in equations, rather
than complicated ones more suitable for display in figures.

