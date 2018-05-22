# Typesetting all those TeX-related logos

Knuth was making a particular point about the capabilities of TeX
when he defined the logo.  Unfortunately (in some people's opinion) he thereby
opened floodgates to give the world a whole range of rather silly
'bumpy road' logos for TeX entities such as AMSTeX, PicTeX,
BibTeX, and so on, produced in a flurry of different fonts, sizes,
and baselines&nbsp;&mdash; indeed, everything one might hope to cause them to
obstruct the reading process.  In particular, Lamport invented
LaTeX (silly enough in itself, with a raised small 'A' and a
lowered 'E') and marketing input from Addison-Wesley led to the even
stranger current logo for LaTeX 2e, which appends a lowered 
single-stroke Greek letter &epsilon;.

Sensible users don't have to follow this stuff wherever it goes,
but, for those who insist, a large collection of logos is defined in
the [`texnames`](http://ctan.org/pkg/texnames) package (but note that this set of macros isn't
entirely reliable in LaTeX 2e).
The MetaFont and MetaPost logos can be set in fonts that LaTeX 2e
knows about (so that they scale with the surrounding text) using the
[`mflogo`](http://ctan.org/pkg/mflogo) package; but be aware that booby-traps surround the
use of the Knuthian font for MetaPost (you might get
  something like 'MET[[[&]]]bsp[[[&]]]bsp;[[[&]]]bsp[[[&]]]bsp;T').
You needn't despair, however&nbsp;&mdash; most versions of the logo font
distributed nowadays contain the missing letters, and the author
himself uses just 'MetaPost'.

A well-designed set of macros is provided by package [`hologo`](http://ctan.org/pkg/hologo),
which defines a command `\hologo`, which one uses as (for example)
`\hologo{pdfLaTeX}` for what you might get by typing
`pdf``\LaTeX`, as well as a capitalised version
`\Hologo{pdfLaTeX}` for `Pdf``\LaTeX`.

The package [`metalogo`](http://ctan.org/pkg/metalogo) deals with a problem of these myriad
logos, that's often ignored nowadays: the geometry of characters from
different fonts is (obviously) different, and they naturally fit
together differently.  The package makes it possible for you to adjust
the spacing between the the letters of one of these odd logos (even
the especially weird mirrored ''E'' in XeTeX).

For those who don't wish to acquire the 'proper' logos, the canonical
thing to do is to say `AMS-``\TeX{}`
for AMSTeX, `Pic``\TeX{}`
for PicTeX, `Bib``\TeX{}`
for BibTeX, and so on.

