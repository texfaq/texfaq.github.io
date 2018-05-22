# Better script fonts for maths

The font selected by `\mathcal` is the only script font 'built
in'. However, there are other useful calligraphic fonts included with
modern TeX distributions.

- Euler The [`eucal`](http://ctan.org/pkg/eucal) package (part of most sensible TeX
  distributions; the fonts are part of the AMS font set) gives
  a slightly curlier font than the default. The package changes the
  font that is selected by `\mathcal`.

  Type 1 versions of the fonts are available in the AMS fonts
  distribution.
- mathabx The `mathabx` bundle provides calligraphic
  letters (in both upper and lower case); the fonts were developed in
  MetaFont, but a version in Adobe Type 1 format is available.  The
  bundle's documentation offers a series of comparisons of its
  calligraphic set with Computer Modern's (both regular mathematical
  and calligraphic letters); the difference are not large.
- mnsymbol The `mnsymbol` bundle provides (among many
  other symbols) a set of calligraphic letters, though (again) they're
  rather similar to the default Computer Modern set.
- RSFS The [`mathrsfs`](http://ctan.org/pkg/mathrsfs) package uses a really fancy script
  font (the name stands for ''Ralph Smith's Formal Script'') which is
  already part of most modern TeX distributions (Type&nbsp;1 versions of
  the font are also provided, courtesy of Taco Hoekwater).  The package
  creates a new command `\mathscr`.
- RSFSO The bundle [`rsfso`](http://ctan.org/pkg/rsfso) provides a less dramatically
  oblique version of the RSFS fonts; the result proves quite
  pleasing&nbsp;&mdash; similar to the effect of the the (commercial) script
  font in the Adobe Mathematical Pi collection.
- Zapf Chancery is the standard PostScript calligraphic font.  There
  is no package but you can easily make it available by means of the
  command
```latex
\DeclareMathAlphabet{\mathscr}{OT1}{pzc}{m}{it} 
```
  in your preamble.  You may find the font rather too big; if so, you
  can use a scaled version of it like this:
```latex
\DeclareFontFamily{OT1}{pzc}{}
\DeclareFontShape{OT1}{pzc}{m}{it}{<-> s * [0.900] pzcmi7t}{}
\DeclareMathAlphabet{\mathscr}{OT1}{pzc}{m}{it}
```
  Adobe Zapf Chancery (which the above examples use) is distributed in
  any but the most basic PostScript printers.  A substantially identical
  font (to the extent that the same metrics may be used) is
  available from URW, called URW Chancery L: it is distributed
  as part of the ''URW base35'' bundle; the
  [`urwchancal`](http://ctan.org/pkg/urwchancal) package (which includes virtual fonts to tweak
  appearance) provides for its use as a calligraphic font.

  The TeX Gyre font family also includes a Chancery replacement,
  `Chorus`; use it with [`tgchorus`](http://ctan.org/pkg/tgchorus) (and ignore the
  complaints about needing to change font shape).

Examples of the available styles are linked from the packages'
catalogue entries.

