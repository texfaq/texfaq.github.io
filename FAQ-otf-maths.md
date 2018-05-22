# Unicode Maths using OpenType fonts




The ISO standard Universal Coding Scheme (UCS), which is
commonly known as Unicode, was adopted early by the designers of
TrueType (TTF) and OpenType (OTF) fonts.  The
flexibility of the fonts offers hope, for the first time, of a uniform
method for typesetting essentially any language.


TeX users have been eagerly adopting the fonts, for some time,
using XeTeX (now a rather stable system) and LuaTeX (which is,
at the time of writing, still being developed).


While TeX users were investigating the use of these text fonts,
ISO was extending Unicode to provide a means of expressing
mathematics.  As this work proceeded, MicroSoft and (separately) a
consortium of publishing companies were developing OpenType maths
fonts.  (Microsoft contributed on the development of the concepts,
within the ISO process.)  MicroSoft's OpenType Maths font,
`Cambria Math` has been available for purchase for some time.


The first free OpenType Maths font to appear was 
`Asana Math`, which was eventually followed by
the publishers' consortium's offer of an interim version
of their font, `STIX`, which has been
redeveloped to provide a more usable whole, `XITS`, by a group
of TeX users.


Other fonts are appearing, including 
`TeX Gyre Termes Math` (based on Times-like fonts) and
`Tex Gyre Pagella Math` (based on Palatino-like fonts),
and `LM Math` extending the OpenType version of the
`Latin Modern` font family.


Actually using a unicode maths font is quite a complicated business,
but the LaTeX package [`unicode-math`](http://ctan.org/pkg/unicode-math) (supported
by the [`fontspec`](http://ctan.org/pkg/fontspec) package) does the essential groundwork.


