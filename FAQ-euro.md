# Typesetting the Euro sign

The European currency ''Euro'' (&#x20ac;) is represented by a symbol
of somewhat dubious design, but it's an important currency and
(La)TeX users need to typeset it.  When the currency first appeared,
typesetting it was a serious problem for (La)TeX users; things are
easier now (most fonts have some way of providing a Euro sign), but
this answer provides a summary of methods ''just in case''.

Note that the Commission of the European Community at first deemed
that the Euro symbol should always be set in a sans-serif font;
fortunately, this eccentric ruling has now been rescinded, and one may
apply best typesetting efforts to making it appear at least slightly
''respectable'' (typographically).

The TS1-encoded TC fonts provided as part of the EC font
distribution provide Euro glyphs.  The fonts are called Text Companion
(TC) fonts, and offer the same range
of faces as do the EC fonts themselves.  The
[`textcomp`](http://ctan.org/pkg/textcomp) package provides a `\texteuro` command for
accessing the symbol, which selects a symbol to match the surrounding
text.  The design of the symbol in the TC fonts is not
universally loved&hellip;
Nevertheless, use the TC font version of the symbol if you are
producing documents using Knuth's Computer Modern Fonts.

The each of the [`latin9`](http://ctan.org/pkg/latin9) and [`latin10`](http://ctan.org/pkg/latin10) input encoding
definitions for the [`inputenc`](http://ctan.org/pkg/inputenc) package has a euro character
defined (character position 164, occupied in other ISO Latin
character sets by the ''currency symbol'' &#xa4;, which
ordinary people seldom see except in character-set listings&hellip;).
The TC encoding file offers the command `\texteuro` for the
character; that command is (probably) _only_ available from the
[`textcomp`](http://ctan.org/pkg/textcomp) package.

Use of the TC encoding character may therefore made via
`\texteuro` or via the Latin-9 or Latin-10 character in ordinary
text.

Note that there is a Microsoft code page position (128), too, and that has
been added to [`inputenc`](http://ctan.org/pkg/inputenc) tables for CP1252 and
CP1257.  (There's another position in CP858, which has
it in place of ''dotless i'' in CP850; the standardisation of
these things remains within Microsoft, so one can never tell what will
come next&hellip;)

Outline fonts which contain nothing but Euro symbols are available
(free) from
[Adobe](ftp://ftp.adobe.com/pub/adobe/type/win/all/eurofont.exe)&nbsp;&mdash;
the file is packaged as a `Windows` self-extracting
executable, but it may be decoded as a `zip` format archive
on other operating systems.
The [`euro`](http://ctan.org/pkg/euro) bundle contains metrics, `dvips` map
files, and macros (for Plain TeX and LaTeX), for using these
fonts in documents.  LaTeX users will find two packages in the
bundle: [`eurosans`](http://ctan.org/pkg/eurosans) only offers the sans-serif version (to
conform with the obsolete ruling about sans-serif-only symbols; the
package provides the
command `\euro`), whereas [`europs`](http://ctan.org/pkg/europs) matches the Euro symbol
with the surrounding text (providing the command `\EUR`).  To use
either package
with the [`latin9`](http://ctan.org/pkg/latin9) encoding, you need to define `\texteuro`
as an alias for the euro command the package defines.

The Adobe fonts are probably the best bet for use in non-Computer
Modern environments.  They are apparently designed to fit with Adobe
Times, Helvetica and Courier, but can probably fit with a wider range
of modern fonts.

The [`eurofont`](http://ctan.org/pkg/eurofont) package provides a compendious analysis of the
''problem of the euro symbol'' in its documentation, and offers macros
for configuring the source of the glyphs to be used; however, it seems
rather large for everyday use.

The [`euro-ce`](http://ctan.org/pkg/euro-ce) bundle is a rather pleasing MetaFont-only design
providing Euro symbols in a number of shapes.  The file
`euro-ce.tex`, in the distribution, offers hints as to how a
Plain TeX user might make use of the fonts.

Euro symbols are found in several other places, which we list here for
completeness.

The [`marvosym`](http://ctan.org/pkg/marvosym) font contains a Euro symbol (in a number of
typographic styles), among many other good things; the font is
available in both Adobe Type 1 and TrueType formats.

Other MetaFont-based bundles containing Euro symbols are to be found in
[`china2e`](http://ctan.org/pkg/china2e) (whose primary aim is Chinese dates and suchlike
matters) and the [`eurosym`](http://ctan.org/pkg/eurosym) fonts.

