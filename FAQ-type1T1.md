# Finding '8-bit' Type&nbsp;1 fonts

Elsewhere, answers to these FAQs recommend that you use an
'8-bit' font to permit 
[accentuation of inflected languages](./FAQ-hyphenaccents.html),
and also recommend the use of Type&nbsp;1 fonts to ensure that
you get [good quality PDF](./FAQ-fuzzy-type3.html).  These
recommendations used to be contradictory: one could not just
''switch'' from the free CM fonts to free Cork- (or similarly)
encoded Type&nbsp;1 fonts.  The first approach that started to alleviate
these problems, was the development of virtual fonts that make
a good approach to the Cork encoding (see below).  Now, however, we
have ''true'' Type&nbsp;1 fonts available: as always, we have an
embarrassment of riches with three free alternatives, and one
commercial and one shareware version.

[`CM-super`](http://ctan.org/pkg/CM-super) is an
auto-traced set which encompasses all of the T1 and TS1
encodings as well as the T2* series (the family of encodings
that cover languages based on Cyrillic alphabets).  These fonts are
pretty easy to install (the installation instructions are clear), but
they are huge: don't try to install them if you're short of disc
space.

[`CM-LGC`](http://ctan.org/pkg/CM-LGC) is a similar ''super-font'' set, but of much more
modest size; it covers T1, TS1 and T2A
encodings (as does [`CM-super`](http://ctan.org/pkg/CM-super), and also covers the LGR
encoding (for typesetting Greek, based on Claudio Beccari's MetaFont
sources).  [`CM-LGC`](http://ctan.org/pkg/CM-LGC) manages to be small by going to the
opposite extreme from [`CM-super`](http://ctan.org/pkg/CM-super), which includes fonts at all
the sizes supported by the original EC (a huge range);
[`CM-LGC`](http://ctan.org/pkg/CM-LGC) has one font per font shape, getting other sizes by
scaling.  There is an inevitable loss of quality inherent in this
approach, but for the disc-space-challenged machine, [`CM-LGC`](http://ctan.org/pkg/CM-LGC)
is an obvious choice.

[`Tt2001`](http://ctan.org/pkg/Tt2001) is a simple scan of the EC and TC
fonts, and has some virtues&nbsp;&mdash; it's noticeably smaller than
[`CM-super`](http://ctan.org/pkg/CM-super) while being less stark than [`CM-LGC`](http://ctan.org/pkg/CM-LGC).

[`Latin`](http://ctan.org/pkg/Latin) [`Modern`](http://ctan.org/pkg/Modern) is produced using the
program [`MetaType1`](./FAQ-textrace.html).  The
[`Latin`](http://ctan.org/pkg/Latin) [`Modern`](http://ctan.org/pkg/Modern) set comes with T1, TS1
LY1 encoded variants (as well as a variant using the Polish
QX encoding); for the glyph set it covers, its outlines seem
rather cleaner than those of [`CM-super`](http://ctan.org/pkg/CM-super).  [`Latin`](http://ctan.org/pkg/Latin)
[`Modern`](http://ctan.org/pkg/Modern) is more modest in its disc space demands than is
[`CM-super`](http://ctan.org/pkg/CM-super), while not being nearly as stark in its range of
design sizes as is [`CM-LGC`](http://ctan.org/pkg/CM-LGC)&nbsp;&mdash;  [`Latin`](http://ctan.org/pkg/Latin)
[`Modern`](http://ctan.org/pkg/Modern)'s fonts are offered in the same set of sizes as the
original [`CM`](http://ctan.org/pkg/CM) fonts.  It's hard to argue with the choice:
Knuth's range of sizes has stood the test of time, and is one of the
bases on which the excellence of the TeX system rests.

[Virtual fonts](./FAQ-virtualfonts.html) help us deal with the problem,
since they allow us to map ''bits of DVI file'' to single
characters in the virtual font; so we can create an ''&eacute;'' character
by recreating the DVI commands that would result from the code
`\``e`.  However, since this involves two characters being
selected from a font, the arrangement is sufficient to fool
`Acrobat` `Reader`: you can't use the program's
facilities for searching for text that contains inflected characters,
and if you _cut_ text from a window that contains such a
character, you'll find something unexpected (typically the accent and
the 'base' characters separated by a space) when you `paste`
the result.  However, if you can live with this difficulty, virtual
fonts are a useful and straightforward solution to the problem.

There are two virtual-font offerings of CM-based 8-bit
fonts&nbsp;&mdash; the [`ae`](http://ctan.org/pkg/ae) (''almost EC'') and
[`zefonts`](http://ctan.org/pkg/zefonts) sets; the [`zefonts`](http://ctan.org/pkg/zefonts) set has wider coverage
(though the [`ae`](http://ctan.org/pkg/ae) set may be extended to offer guillemets by
use of the [`aeguill`](http://ctan.org/pkg/aeguill) package).  Neither offers characters such
as `eth` and `thorn` (used in, for example, in
Icelandic), but the [`aecompl`](http://ctan.org/pkg/aecompl) package works with the
[`ae`](http://ctan.org/pkg/ae) fonts to provide the missing characters from the
EC fonts (i.e., as bitmaps).

The sole remaining commercial CM-like 8-bit font comes from
Micropress, who offer the complete EC set
in Type&nbsp;1 format, as part of their range of outline versions of fonts
that were originally distributed in MetaFont format.  See
[''commercial distributions''](./FAQ-commercial.html).

The shareware 
[BaKoMa TeX distribution](./FAQ-TeXsystems.html) offers a
set of Type&nbsp;1 EC fonts, as an extra shareware option.  (As far
as the present author can tell, these fonts are _only_ available
to users of BaKoMa TeX: they are stored in an archive format that
seems not to be publicly available.)

Finally, you can use one of the myriad text fonts available in Type&nbsp;1
format (with appropriate PSNFSS metrics for T1 encoding,
or metrics for some other 8-bit encoding such as LY1).  However,
if you use someone else's text font (even something as simple as
Adobe's Times family) you have to find a matching family of
mathematical fonts, which is a non-trivial undertaking&nbsp;&mdash;
see [''choice of scalable fonts''](./FAQ-psfchoice.html).
  very large download)

