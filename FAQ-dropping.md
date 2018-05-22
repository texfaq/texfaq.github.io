# Big letters at the start of a paragraph

A common style of typesetting, now seldom seen except in newspapers,
is to start a paragraph (in books, usually the first of a chapter)
with its first letter set large enough to span several lines.

This style is known as ''dropped capitals'', or (in French)
&laquo;lettrines&raquo;,
and TeX's primitive facilities for hanging indentation make its
(simple) implementation pretty straightforward.

The [`dropping`](http://ctan.org/pkg/dropping) package does the job simply, but has a curious
attitude to the calculation of the size of the font to be used for the
big letters.  Examples appear in the package documentation, so before
you process the `dtx`, the package itself must already be
installed.  Unfortunately, [`dropping`](http://ctan.org/pkg/dropping) has an intimate relation
to the set of device drivers available in an early version of the
LaTeX graphics package, and it cannot be trusted to work with
modern offerings such as PDFTeX or DVIpdfm, let
alone such modernisms as XeTeX.  As a result, the package is widely
deprecated, nowadays.

The more recent [`lettrine`](http://ctan.org/pkg/lettrine) package is generally more reliable.
It has a well-constructed array of options, and an impressive set of
examples adds to the package's document.

