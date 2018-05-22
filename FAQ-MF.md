# What is MetaFont?

MetaFont was written by Knuth as a companion to TeX; whereas TeX
defines the layout of glyphs on a page, MetaFont defines the shapes of
the glyphs and the relations between them.  MetaFont details the sizes of
glyphs, for TeX's benefit, and creates bitmaps that may be used to
represent the glyphs, for the benefit of programs that will produce
printed output as post processes after a run of TeX.

MetaFont's language for defining fonts permits the expression of several
classes of things: first (of course), the simple geometry of the
glyphs; second, the properties of the print engine for which the
output is intended; and third, 'meta'-information which can
distinguish different design sizes of the same font, or the difference
between two fonts that belong to the same (or related) families.

Knuth (and others) have designed a fair range of fonts using MetaFont,
but font design using MetaFont is much more of a minority skill (even) than is
TeX macro-writing.
What is more, it is a dying art: few new TeX-related fonts are
produced using MetaFont, nowadays.  Indeed, several of the major font
families (that originated in MetaFont designs) are now seldom used in any
other way than their conversion to an outline font format.

