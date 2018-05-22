# Making outline fonts from MetaFont

`TeXtrace`, originally developed by  P&eacute;ter Szab&oacute;, is a
bundle of Unix scripts that use  Martin Weber's freeware boundary
tracing package
[`autotrace`](http://autotrace.sourceforge.net) to 
generate Type&nbsp;1 outline fonts from MetaFont bitmap 
font outputs.  The result is unlikely ever to be of the quality of
the commercially-produced Type&nbsp;1 font, but there's always the
[`FontForge`](http://fontforge.sourceforge.net/) font
editor to tidy things.  Whatever, there
remain fonts which many people find useful and which fail to attract
the paid experts, and auto-tracing is providing a useful service here.
Notable sets of
fonts generated using `TeXtrace` are P&eacute;ter Szab&oacute;'s own
EC/TC font set `tt2001` and Vladimir Volovich's
CM-Super set, which covers the EC, TC, and the
Cyrillic LH font sets (for details of both of which sets, see
[''8-bit'' type 1 fonts](./FAQ-type1T1.html)).

Another system, which arrived slightly later, is 
[`mftrace`](http://www.cs.uu.nl/&nbsp;hanwen/mftrace/):
this is a small `Python` program that does the same job.
`Mftrace` may use either `autotrace` (like
`TeXtrace`) or Peter Selinger's
[`potrace`](http://potrace.sourceforge.net) to produce
the initial outlines to process.  `Mftrace` is said to be
more flexible, and easier to use, than is `TeXtrace`, but both systems
are increasingly being used to provide Type&nbsp;1 fonts to the public domain.

The `MetaType1` system aims to use MetaFont font sources, by way
of MetaPost and a bunch of scripts and so on, to produce high-quality
Type&nbsp;1 fonts.  The first results, the 
[[`Latin Modern`](http://ctan.org/pkg/Latin Modern) fonts](./FAQ-type1T1.html), are now
well-established, and a bunch of existing designs have been reworked
in MetaType1 format.

[`Mf2pt1`](http://ctan.org/pkg/Mf2pt1) is another translator of MetaFont font sources by way of
MetaPost; in addition,
available, [`mf2pt1`](http://ctan.org/pkg/mf2pt1) will use
[`fontforge`](http://fontforge.sourceforge.net/) (if it's
available) to auto-hint the result of its conversion.
([`Mf2pt1`](http://ctan.org/pkg/Mf2pt1) is also written in `perl`.)

