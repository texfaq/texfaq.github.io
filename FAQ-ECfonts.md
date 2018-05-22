# What are the EC fonts?

A font provides a number of _glyphs_. In order that the glyphs
may be printed, they are [_encoded_](./FAQ-whatenc.html), and the
encoding is used as an index into tables within the font.  For various
reasons, Knuth chose deeply eccentric encodings for his Computer
Modern family of fonts; in particular, he chose different encodings
for different fonts, so that the application using the fonts has to
remember which font of the family it's using before selecting a
particular glyph.

When TeX version 3 arrived, most of the drivers for the
eccentricity of Knuth's encodings went away, and at TUG's Cork
meeting, an encoding for a set of 256 glyphs, for use in TeX text,
was defined.  The intention was that these glyphs should cover 'most'
European languages that use Latin alphabets, in the sense of including
all accented letters needed.  (Knuth's CMR fonts missed things
necessary for Icelandic and Polish, for example, which the Cork fonts
do have, though even Cork encoding's coverage isn't complete.)
LaTeX refers to the Cork encoding as T1, and provides the
means to use fonts thus encoded to avoid problems with the interaction
of accents and hyphenation 
(see [hyphenation of accented words](./FAQ-hyphenaccents.html)).

The first MetaFont-fonts to conform to the Cork encoding were the EC
fonts. They look CM-like, though their metrics differ from CM-font
metrics in several areas.  They have long been regarded as 'stable' (in
the same sense that the CM fonts are stable: their metrics are
unlikely ever to change).  Each EC font is, of course, roughly twice the
size of the corresponding CM font, and there are far more of them than
there are CM fonts.  The simple number of fonts proved problematic in
the production of Type&nbsp;1 versions of the fonts, but EC or
EC-equivalent fonts in Type&nbsp;1 or TrueType form (the latter only from
  [commercial suppliers](./FAQ-commercial.html)).
Free [auto-traced versions](./FAQ-textrace.html)&nbsp;&mdash; the CM-super and
the LGC fonts, and the Latin Modern series (rather directly generated
from Metafont sources), are available.

Note that the Cork encoding doesn't cover mathematics (so that no
''T1-encoded'' font families can not support it).  If you're using
Computer-Modern-alike fonts, this doesn't actually matter: your system
will have the original Computer Modern mathematical fonts (or the
those distributed with the Latin Modern set), which cover 'basic' TeX
mathematics; more advanced mathematics are likely to need separate
fonts anyway.  Suitable mathematics fonts for use with other font
families are discussed in 
''[choice of scalable fonts](./FAQ-psfchoice.html)''.

The EC fonts are distributed with a set of 'Text Companion' (TC) fonts
that provide glyphs for symbols commonly used in text. The TC fonts
are encoded according to the LaTeX TS1 encoding, and are not
necessarily as 'stable' are the EC fonts are.  Note that modern
distributions tend not to distribute the EC fonts in outline format, but
rather to provide Latin Modern for T1-encoded Computer Modern-style
fonts.  This can sometimes cause confusion when users are recompiling
old documents.

The Cork encoding is also implemented by virtual fonts provided in the
PSNFSS system, for Adobe Type 1 fonts, and also by most other such
fonts that have been developed (or otherwise made available) for use
with (La)TeX. 

Note that T1 (and other eight-bit font encodings) are superseded in
the developing TeX-family members [XeTeX](./FAQ-xetex.html) and
[LuaTeX](./FAQ-luatex.html), which use Unicode as their base encoding,
and use Unicode-encoded fonts (typically in `ttf` or
`otf` formats).  The [`cm-unicode`](http://ctan.org/pkg/cm-unicode) fonts carry the
flag in this arena, along with the Latin Modern set.

