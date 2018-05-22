# Finding new fonts

Nowadays, new fonts are seldom developed by industrious people using
MetaFont, but if such do appear, they will nowadays be distributed in
the same way as any other part of (La)TeX collections.  (An
historical review of Metafont fonts available is held on CTAN
as ''MetaFont font list''.)

Nowadays, most new fonts that appear are only available in some
scalable outline form, and a large proportion is distributed under
commercial terms.  Such fonts will only make their way to the free
distributions (at least TeX&nbsp;Live and MiKTeX) if their licensing
is such that the distributions can accept them.  Commercial fonts
(those you have to pay for) do not get to distributions, though
support for some of them is held by CTAN.

Arranging for a new font to be usable by (La)TeX is very different,
depending on which type of font it is, and which TeX-alike engine
you are using; roughly speaking:
  

-  MetaFont fonts will work without much fuss (provided their
    sources are in the correct place in the installation's tree);
    TeX-with-`dvips`, and PDFTeX are ''happy'' with them.
    While a new font will need 'generating' (by running MetaFont, etc.),
    distributions are set up to do that ''on the fly'' and to save the
    results (for next time).
-  Adobe Type 1 fonts can be made to work, after `tfm`
    and (usually) `vf` files have been created from their
    metric (`afm`) files; `map` files also need to
    be created.  Such fonts will work with PDFTeX, and with the
    ('vanilla')(La)TeX and `dvips` combination.
-  TrueType fonts can be made to work with PDFTeX&nbsp;&mdash; see
  [Using TrueType fonts with TeX&hellip;](http://www.radamir.com/tex/ttf-tex.htm)
    (a rather dated document, dicsussing use with MiKTeX&nbsp;1.11).
-  TrueType and OpenType fonts are the usual sort used by XeTeX
    and LuaTeX; while straightforward use is pretty easy, one is
    well-advised to use a package such as [`fontspec`](http://ctan.org/pkg/fontspec) to gain
    access to the full range of a font's capabilities.

The answer ''[choice of scalable fonts](./FAQ-psfchoice.html)'' discusses
fonts that are configured for general (both textual and mathematical)
use with (La)TeX.  The list of such fonts is sufficiently short that
they _can_ all be discussed in one answer.

