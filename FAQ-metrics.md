# TeX font metric files for Type 1 fonts

Reputable font vendors such as Adobe supply metric files for each
font, in AFM (Adobe Font Metric) form; these can be converted
to TFM (TeX Font Metric) form. Most modern distributions have
prebuilt metrics which will be more than enough for many people; but you may
need to do the conversion yourself if you have special needs or
acquire a new font. One important question is the _encoding_ of
(Latin character) fonts; while we all more or less agree about the
position of about 96 characters in fonts (the basic ASCII set), the
rest of the (typically) 256 vary. The most obvious problems are with
floating accents and special characters such as the 'pounds sterling'
sign. There are three ways of dealing with this: either you change the
TeX macros which reference the characters (not much fun, and
error-prone); or you change the encoding of the font (easier than you
might think); or you use [virtual fonts](./FAQ-virtualfonts.html) to
_pretend_ to TeX that the encoding is the same as it is used to.
LaTeX 2e has facilities for dealing with fonts in different
encodings; read the [_LaTeX Companion_](./FAQ-latex-books.html) for
more details.  In practice, if you do much non-English (but Latin
script) typesetting, you are strongly recommended to use the
[`fontenc`](http://ctan.org/pkg/fontenc) package with option `T1` to select
['Cork'](./FAQ-ECfonts.html) encoding.

An alternative favoured by some is Y&Y's ''private'' LY1 encoding,
which is designed to sit well with ''Adobe standard'' encoded fonts.
Basic macro support of LY1 is available: note that the
''relation with Adobe's encoding'' means that the LY1 user
needs no virtual fonts.

Alan Jeffrey's `fontinst` package is an AFM to
TFM converter written in TeX; it is used to generate the
files used by LaTeX 2e's PSNFSS package to support use of
PostScript fonts. It is a sophisticated package, not for the faint-hearted,
but is powerful enough to cope with most needs.  Much of its power
relies on the use of [virtual fonts](./FAQ-virtualfonts.html).

For slightly simpler problems, Rokicki's `afm2tfm`,
distributed with `dvips`, is fast and
efficient; note that the metrics and styles that come with
`dvips` are _not_ currently LaTeX 2e compatible.

For the Macintosh (classic), there is a program called
`EdMetrics` which does the job (and more).
`EdMetrics` comes with the (commercial)
[Textures](./FAQ-commercial.html) distribution, but is itself free
software, and is available on CTAN.

