# Adobe font formats

Adobe has specified a number of formats for files to represent fonts
in PostScript files; this question doesn't attempt to be encyclopaedic, so
we only discuss the two formats most commonly encountered in the
(La)TeX context, types&nbsp;1 and 3.  In particular, we don't discuss the
OpenType format, whose many advantages now becoming accessible to most
(La)TeX users (by means of
  the widely-used [XeTeX](./FAQ-xetex.html) and the more experimental
  [LuaTeX](./FAQ-luatex.html)).

Adobe Type&nbsp;1 format specifies a means to represent outlines of the glyphs
in a font.  The 'language' used is closely restricted, to ensure that
the font is rendered as quickly as possible.  (Or rather, as quickly
as possible with Adobe's technology at the time the specification was
written: the structure could well be different if it were specified
now.)  The format has long been the basis of the digital type-foundry
business, though nowadays most new fonts are released in OpenType format.

In the (La)TeX context, Type&nbsp;1 fonts are extremely important.  Apart
from their simple 
availability (there are thousands of commercial Type&nbsp;1 text fonts around), the
commonest reader for PDF files has long (in effect) _insisted_ on
their use (see below).

Type&nbsp;3 fonts have a more forgiving specification.  A wide range of
PostScript operators is permissible, including bitmap specifiers.  Type&nbsp;3
is therefore the natural format to be used for programs such as
`dvips` when they auto-generate something to represent
MetaFont-generated fonts in a PostScript file.  It's Adobe Acrobat Viewer's
treatment of bitmap Type&nbsp;3 fonts that has made direct MetaFont output
increasingly unattractive, in recent years.  If you have a PDF
document in which the text looks fuzzy and uneven in Acrobat Reader,
ask Reader for the `File`&rarr;
`Document Properties`&rarr;
`Fonts ...`, and it will likely show some font or other as
''Type&nbsp;3'' (usually with encoding ''Custom'').  The problem has
disappeared with version 6 of Acrobat Reader.  See 
[PDF quality](./FAQ-dvips-pdf.html) for a discussion of
the issue, and for ways of addressing it.

Type&nbsp;3 fonts should not entirely be dismissed, however.  Acrobat
Reader's failure with them is entirely derived from its failure to use
the anti-aliasing techniques common in TeX-ware.  Choose a
different set of PostScript graphical operators, and you can make pleasing
Type&nbsp;3 fonts that don't ''annoy'' Reader.  For example, you may not
change colour within a Type&nbsp;1 font glyph, but there's no such
restriction on a Type&nbsp;3 font, which opens opportunities for some
startling effects.

