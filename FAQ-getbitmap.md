# Acquiring bitmap fonts

When CTAN was young, most people would start using TeX
with a 300 dots-per-inch (dpi) laser printer, and sets of Computer
Modern bitmap fonts for this resolution are available on CTAN.
(There are separate sets for write-black and write-white printers, as
well as sets at 120&nbsp;dpi and 240&nbsp;dpi.)

There used to regular requests that CTAN should hold
a wider range of resolutions, but they were resisted for two reasons:
  

-  The need to decide which printers to generate fonts for.  The
    broad-brush approach taken for 300&nbsp;dpi printers was (more or less)
    justified back then, given the dominance of certain printer
    'engines', but nowadays one could not make any such assumption.
-  Given the above, it has been near-impossible to justify the
    space that would be required by a huge array of bitmap fonts.

Fortunately, (La)TeX distribution technology has put a stop to these
arguments: most (if not all) current distributions generate bitmap
fonts as needed, and cache them for later re-use.  The impatient
user, who is determined that all bitmap fonts should be created once
and for all, may be supported by scripts such as `allcm`
(distributed with TeX&nbsp;Live, at least; otherwise such a
person should consult ''[the use of MetaFont](./FAQ-useMF.html))''.

If your output is to a PostScript-capable device, or if your output is
destined to be converted to PDF, you should switch to
using Type&nbsp;1 versions of the CM fonts.  Two free
sets are available; the older ([`bakoma`](http://ctan.org/pkg/bakoma)) is
somewhat less well produced than the [`bluesky`](http://ctan.org/pkg/bluesky) fonts, which were
originally professionally produced and sold, but were then released
for general public use by their originators Y&Y and Bluesky Research,
in association with the AMS and other scientific publishers
(they are nowadays available under the SIL's Open Fonts Licence).  The
two sets contain slightly different ranges of fonts, but you are
advised to use the [`bluesky`](http://ctan.org/pkg/bluesky) set except when [`bakoma`](http://ctan.org/pkg/bakoma)
is for some reason absolutely unavoidable.  In recent years, several
other 'MetaFont' fonts have been converted to Type&nbsp;1 format; it's
uncommon ever to need to generate bitmap fonts for any purpose other
than previewing&nbsp;&mdash; see 
[''previewing documents with Type&nbsp;1 fonts''](./FAQ-PSpreview.html)&nbsp;&mdash;
if even then.

More modern fonts may be used in place of the Computer Modern set.  The
[EC fonts](./FAQ-ECfonts.html) and the 
[Latin Modern fonts](./FAQ-uselmfonts.html) are both close relatives with
wider ranges of glyphs to offer.

