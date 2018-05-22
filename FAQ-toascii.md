# Conversion from (La)TeX to plain text

The aim here is to emulate the Unix `nroff`, which formats
text as best it can for the screen, from the same
input as the Unix typesetting program `troff`.

Converting DVI to plain text is the basis of many of these
techniques; sometimes the simple conversion provides a good enough
response.  Options are:
  

-  `dvi2tty` (one of the earliest),
-  `crudetype` and
-  `catdvi`, which is capable of generating Latin-1
    (ISO&nbsp;8859-1) or UTF-8 encoded output.  `Catdvi` was
    conceived as a replacement for `dvi2tty`, but development
    seems to have stopped before the authors were willing to declare the
    work complete.

A common problem is the hyphenation that TeX inserts when
typesetting something: since the output is inevitably viewed using
fonts that don't match the original, the hyphenation usually looks
silly.

Ralph Droms provides a [`txt`](http://ctan.org/pkg/txt) bundle of things in support of
ASCII generation,
but it doesn't do a good job with tables and mathematics.

Another possibility is to
use the LaTeX-to-ASCII conversion program, `l2a`,
although this is really more of a de-TeXing program.

The canonical de-TeXing program is `detex`, which removes
all comments and control sequences 
from its input before writing it to its output.  Its original purpose
was to prepare input for a dumb spelling checker, and it's only usable
for preparing useful ASCII versions of a document in highly
restricted circumstances.

`Tex2mail` is slightly more than a de-TeXer&nbsp;&mdash; it's a
`Perl` script that converts TeX files into
plain text files, expanding various mathematical symbols
(sums, products, integrals, sub/superscripts, fractions, square
roots, &hellip;) into ''ASCII art'' that spreads over
multiple lines if necessary. The result is more readable to human
beings than the flat-style TeX code.

Another significant possibility is to use one of the
[HTML-generation solutions](./FAQ-LaTeX2HTML.html),
and then to use a browser such as `lynx` to dump the resulting
HTML as plain text.

