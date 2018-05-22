# What are encodings?

Let's start by defining two concepts, the _character_ and the
_glyph_.
The character is the abstract idea of the 'atom' of a
language or other dialogue: so it might be a letter in an alphabetic
language, a syllable in a syllabic language, or an ideogram in an
ideographic language.  The glyph is the mark created on screen or
paper which represents a character.  Of
course, if reading is to be possible, there must be some agreed
relationship between the glyph and the character, so while the precise
shape of the glyph can be affected by many other factors, such as the
capabilities of the writing medium and the designer's style, the
essence of the underlying character must be retained.

Whenever a computer has to represent characters, someone has to define
the relationship between a set of numbers and the characters they
represent.  This is the essence of an encoding: it is a mapping
between a set of numbers and a set of things to be represented.

TeX of course deals in encoded characters all the time: the
characters presented to it in its input are encoded, and it emits
encoded characters in its DVI or PDF output.  These
encodings have rather different properties.

The TeX input stream was pretty unruly back in the days when Knuth
first implemented the language.  Knuth himself prepared documents on
terminals that produced all sorts of odd characters, and as a result
TeX contains some provision for translating its input (however
encoded) to something regular.  Nowadays, 
the operating system translates keystrokes into a code appropriate for
the user's language: the encoding used is usually a national or
international standard, though some operating systems use ''code
pages'' (as defined by Microsoft).  These standards and code pages often
contain characters that may not appear in the TeX system's input
stream.  Somehow, these characters have to be dealt with&nbsp;&mdash; so
an input character like ''&eacute;'' needs to be interpreted by TeX in
a way that that at least mimics the way it interprets `\``e`.  

The TeX output stream is in a somewhat different situation:
characters in it are to be used to select glyphs from the fonts to be
used.  Thus the encoding of the output stream is notionally a font
encoding (though the font in question may be a
[virtual font](./FAQ-virtualfonts.html)).  In principle, a
fair bit of what appears in the output stream could be direct
transcription of what arrived in the input, but the output stream
also contains the product of commands in the input, and translations
of the input such as ligatures like 
`fi`.

Font encodings became a hot topic when the
[Cork encoding](./FAQ-ECfonts.html)
appeared, because of the possibility of suppressing
`\accent` commands in the output stream (and hence improving the
quality of the hyphenation of text in inflected languages, which is
interrupted by the `\accent` commands&nbsp;&mdash; see
[''how does hyphenation work''](./FAQ-hyphen.html)).
To take advantage of the diacriticised characters represented in the
fonts, it is necessary to arrange that whenever the
command sequence `\``e` has been input
(explicitly, or implicitly via the sort of mapping of input mentioned
above), the character that codes the position of the ''&eacute;'' glyph is
used.

Thus we could have the odd arrangement that the diacriticised character in
the TeX input stream is translated into TeX commands that would
generate something looking like the input character; this sequence of
TeX commands is then translated back again into a single
diacriticised glyph as the output is created.  This is in fact
precisely what the LaTeX packages [`inputenc`](http://ctan.org/pkg/inputenc) and
[`fontenc`](http://ctan.org/pkg/fontenc) do, if operated in tandem on (most) characters in
the ISO&nbsp;Latin-1 input encoding and the T1 font encoding.
At first sight, it seems eccentric to have the first package do a thing, and
the second precisely undo it, but it doesn't always happen that way:
most font encodings can't match the corresponding input encoding
nearly so well, and the two packages provide the sort of symmetry the
LaTeX system needs.

