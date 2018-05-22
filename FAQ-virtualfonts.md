# What are virtual fonts?

Virtual fonts provide a means of collecting bits and pieces together
to make the glyphs of a font: the bits and pieces may be glyphs from
''other'' fonts, rules and other ''basic'' typesetting commands, and
the positioning information that specifies how everything comes
together.

An early instance of something like virtual fonts for TeX was
implemented by David Fuchs to use an unusual printer.  However, for
practical purposes for the rest of us, virtual fonts date from when Knuth
specified a format and wrote some support software, in 1989 (he
published an 
[article in _TUGboat_](http://tug.org/TUGboat/tb11-1/tb27knut.pdf)
at the time; a plain text copy is available on CTAN).

Virtual fonts provide a way of telling TeX about something more
complicated than just a one-to-one character mapping.  TeX reads a
TFM file of the font, just as before, but the DVI
processor will read the VF and use its content to specify how
each glyph is to be processed.

The virtual font may contain commands:
  

-  to 'open' one or more (real) fonts for subsequent use,
-  to remap a glyph from one of the (real) fonts for use in the
    virtual font,
-  to build up a more complicated effect (using DVI commands).

In practice, the most common use of virtual fonts is to remap
Adobe Type 1 fonts (see [font metrics](./FAQ-metrics.html)),
though there has also been useful useful work building 'fake' maths
fonts (by bundling glyphs from several fonts into a single virtual
font).  Virtual Computer Modern fonts, making a 
[Cork encoded](./FAQ-ECfonts.html) font from Knuth's originals by using
remapping and fragments of DVI for single-glyph 'accented
characters', were the first ''Type&nbsp;1 format'' Cork-encoded Computer
Modern fonts available.

Virtual fonts are normally created in a single ASCII VPL
(Virtual Property List) file, which includes two sets of information.
The `vptovf` utility will use the VPL file to create
the binary TFM and VF files.

A ''how-to'' document, explaining how to generate a VPL,
describes the endless hours of fun that may be had, doing the job by
hand.  Despite the pleasures to be had, the commonest way (nowadays)
of generating an VPL file is to use the 
`fontinst` package, which is described in more detail
together with the discussion of
[PostScript font metrics](./FAQ-metrics.html).
[`Qdtexvpl`](http://ctan.org/pkg/Qdtexvpl) is another utility for creating ad-hoc virtual
fonts (it uses TeX to parse a description of the virtual font, and
`qdtexvpl` itself processes the resulting DVI file).

