# Unicode and TeX

Unicode is a character code scheme that has the capacity to express
the text of the languages of the world, as well as important symbols
(including mathematics).  Any coding scheme that is directly
applicable to TeX may be expressed in single bytes (expressing up
to 256 characters); Unicode characters may require several bytes, and
the scheme may express a very large number of characters.

For ''old-style'' applications (TeX or PDFTeX) to deal with
Unicode input, the sequence of bytes to make up Unicode character are
processed by a set of macros that deliver a glyph number in an
appropriate font.  The macros that read these bytes is complicated,
and manifests as `utf8` option for the LaTeX distribution
[`inputenc`](http://ctan.org/pkg/inputenc) package; the coverage of that option is limited to
Unicode characters that can be represented using ''LaTeX standard
encodings''.  The separate package [`ucs`](http://ctan.org/pkg/ucs) provides wider, but
less robust, coverage via an [`inputenc`](http://ctan.org/pkg/inputenc) option
`utf8x`.  As a general rule, you should never use
`utf8x` until you have convinced yourself that
`utf8` can not do the job for you.

'Modern' TeX-alike applications, [XeTeX](./FAQ-xetex.html) and
[LuaTeX](./FAQ-luatex.html) read their input using UTF-8
representations of Unicode as standard.  They also use TrueType or
OpenType fonts for output; each such font has tables that tell the
application which part(s) of the Unicode space it covers; the tables
enable the engines to decide which font to use for which character
(assuming there is any choice at all).

