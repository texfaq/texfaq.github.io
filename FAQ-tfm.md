# What are TFM files?

TFM is an acronym for 'TeX Font Metrics'; TFM files hold
information about the sizes of the characters of the font in question,
and about ligatures and kerns within that font.  One TFM file is
needed for each font used by TeX, that is for each design (point)
size for each weight for each family; each TFM file serves for all
magnifications of 'its' font, so that there are (typically) fewer
TFM files than there are [PK](./FAQ-pk.html) files.  TeX,
LaTeX, etc.,
themselves need only know about the sizes of characters and their
interactions with each other, but not what characters look like.  By
contrast, TFM files are not, in principle, needed by the
DVI driver, which only needs to know about the glyphs that each
character selects, so as to print or display them.

Note that TrueType and OpenType fonts contain the necessary metrics,
so that [XeTeX](./FAQ-xetex.html) and [LuaTeX](./FAQ-luatex.html), using
such fonts, have no need of TFM files.  A corollary of this is
that setting up fonts for use by these engines is far _easier_.

