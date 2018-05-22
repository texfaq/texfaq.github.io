# Choice of Type&nbsp;1 fonts for typesetting Maths

If you are interested in text alone, you can in principle use any of
the huge numbers of text fonts in Adobe Type&nbsp;1, TrueType or OpenType
formats.  The constraint is, of course, that your previewer and
printer driver should support such fonts (TeX itself _only_
cares about metrics, not the actual character programs).

If you also need mathematics, then your choice is more limited, in
particular  by the
demands that TeX makes of maths fonts (for details, see the papers
by
  [B.K.P. Horn in TUGboat 14(3)](http://tug.org/TUGboat/Articles/tb14-3/tb40horn.pdf),
  or by 
  [Thierry Bouche in TUGboat 19(2)](http://tug.org/TUGboat/Articles/tb19-2/tb59bouc.pdf)).
There are several options available, which are
based on Knuth's original designs.  Others complement other
commercial and free text font designs; one set (MicroPress's 'informal math')
stands alone.

Users should also consider the possibilities of typesetting
[maths using OpenType fonts](./FAQ-otf-maths.html).

''Free'' font families that will support TeX mathematics include:

- Computer Modern(75 fonts&nbsp;&mdash; optical scaling) Donald E. Knuth

  The CM fonts were originally designed in MetaFont, but are also
  now available in scalable outline form.  There are commercial as
  well as public domain versions, and there are both Adobe Type&nbsp;1 and
  TrueType versions.  A set of outline versions of the fonts was
  developed as a commercial venture by Y&Y and Blue Sky Research;
  they have since assigned the copyright to the AMS, and the
  fonts are now freely available from CTAN.  Their quality is
  such that they have become the _de facto_ standard for Type&nbsp;1
  versions of the fonts.

- AMS fonts(52 fonts, optical scaling) The AMS

  This set of fonts offers adjuncts to the CM set, including
  two sets of symbol fonts (`msam` and `msbm`) and
  Euler text fonts.
  These are not a self-standing family, but merit discussion here (not
  least because several other families mimic the symbol fonts).
  Freely-available Type&nbsp;1 versions of the fonts are available on
  CTAN.  The [`eulervm`](http://ctan.org/pkg/eulervm) package permits use
  of the Euler maths alphabet in conjunction with text fonts that do
  not provide maths alphabets of their own (for instance, Adobe
  Palatino or Minion).

- Mathpazo version 1.003(5 fonts) Diego Puga

  The Pazo Math fonts are a family of type&nbsp;1 fonts suitable for
  typesetting maths in combination with the Palatino family of text
  fonts.  Four of the five fonts of the distribution are maths
  alphabets, in upright and italic shapes, medium and bold weights;
  the fifth font contains a small selection of ''blackboard bold''
  characters (chosen for their mathematical significance).  Support
  under LaTeX 2e is available in 
  [PSNFSS](./FAQ-usepsfont.html); the fonts are
  licensed under the GPL, with legalese permitting the use of
  the fonts in published documents.

- Fourier/Utopia(15 fonts) Michel Bovani

  `Fourier` is a family built on Adobe `Utopia`
  (which has been released for usage free of charge by Adobe).  The
  fonts provide the basic Computer Modern set of mathematical symbols,
  and add many of the AMS mathematical symbols (though you are
  expected to use some from the AMS fonts themselves).  There
  are also several other mathematical and decorative symbols.  The
  fonts come with a [`fourier`](http://ctan.org/pkg/fourier) package for use with LaTeX;
  text support of OT1 encoding is not provided&nbsp;&mdash; you are
  expected to use T1.

  For a sample, see [http://www.tug.dk/FontCatalogue/utopia/]

- Fourier/New Century SchoolbookMichael Zedler

  `Fouriernc` is a configuration using the Fourier fonts in
  the context of New Century Schoolbook text fonts.

  For a sample, see [http://www.tug.dk/FontCatalogue/newcent/]

- KP-fontsThe Johannes Kepler project

  The `kp-fonts` family provides a comprehensive set of text
  and maths fonts.  The set includes replacement fixed-width and sans
  fonts (though some reports have suggested that these are less
  successful, and their use may be suppressed when loading the fonts'
  [`kpfonts`](http://ctan.org/pkg/kpfonts) LaTeX support package).

  For an example, see [http://www.tug.dk/FontCatalogue/kpserif/]

- MathDesign(3 free families, 3 commercial-based
  families&hellip;so far) Paul Pichaureau

  This set so far offers mathematics fonts to match the free fonts
  Adobe Utopia, URW Garamond and Bitstream Charter (the text versions
  of all of which are separately available, on CTAN, in Type&nbsp;1
  format), and Adobe Garamond Pro, Adobe UtopiaStd and ITC Charter
  (which are commercial fonts, all available for purchase on the web).
  There has been a little comment on these fonts, but none
  from actual users posted to the public forums.  Users, particularly
  those who are willing to discuss their experiences, would obviously
  be welcome.  Browse the CTAN directory and see which you
  want: there is a wealth of documentation and examples.

  For samples of the free variants, see
  [http://www.tug.dk/FontCatalogue/charter/] for URW Charter,
  [http://www.tug.dk/FontCatalogue/garamond/] for URW Garamond and
  [http://www.tug.dk/FontCatalogue/utopia-md/] for Adobe Utopia.

- Belleek(3 fonts) Richard Kinch

  Belleek is the upshot of Kinch's thoughts on how MetaFont might be used
  in the future: they were published simultaneously as MetaFont source,
  as Type&nbsp;1 fonts, and as TrueType fonts.  The fonts act as ''drop-in''
  replacements for the basic MathTime set (as an example of ''what might
  be done'').

  The paper outlining Kinch's thoughts, proceeding from considerations
  of the 'intellectual' superiority of MetaFont to evaluations of why its
  adoption is so limited and what might be done about the problem, is
  to be found at [http://truetex.com/belleek.pdf]

- MTPro2 LitePubish or Perish (Michael Spivak)

  A (functional) subset of the MathTime Pro 2 font set, that is made
  available, free, for general use.  While it does not offer the full
  power of the commercial product (see below), it is nevertheless a
  desirable font set.

- MathptmxAlan Jeffrey, Walter Schmidt and others.

  This set contains maths italic, symbol, extension, and roman virtual
  fonts, built from Adobe Times, Symbol, Zapf Chancery, and the
  Computer Modern fonts.  The resulting mixture is not  entirely
  acceptable, but can pass in many circumstances.  The real advantage
  is that the mathptm fonts are (effectively) free, and the resulting
  PostScript files can be freely exchanged.  Support under LaTeX 2e
  is available in [PSNFSS](./FAQ-usepsfont.html).

  For a sample, see [http://www.tug.dk/FontCatalogue/times/]

- Computer Modern BrightFree scalable outline versions of these
  fonts do exist; they are covered below together with their
  commercial parallels.

- URW Classico(4 fonts)  LaTeX support by Bob Tennent

  These are clones of Zapf's Optima available from CTAN (for
  non-commercial use only).  Mathematics support can be provided by
  using packages [`eulervm`](http://ctan.org/pkg/eulervm) or [`sansmath`](http://ctan.org/pkg/sansmath). As a
  sans-serif font family, Optima is especially suitable for
  presentations.

The excellent _font catalogue_ keeps an 
[up-to-date list](http://www.tug.dk/FontCatalogue/mathfonts.html)
which describes the fonts by giving names and short examples, only.
(At the time of writing&nbsp;&mdash; June 2008&nbsp;&mdash; the list has several that
are only scheduled for inclusion here.

Another useful document is Stephen Hartke's ''Free maths font
survey'', which is available on CTAN in both PDF and
HTML formats.  The survey covers most of the fonts mentioned in
the font catalogue, but also mentions some (such as [`Belleek`](http://ctan.org/pkg/Belleek)
that the catalogue omits.

Fonts capable of setting TeX mathematics, that are available
commercially, include:

- BA Math(13 fonts) MicroPress Inc.

  BA Math is a family of serif fonts, inspired by the elegant
  and graphically perfect font design of John Baskerville.  BA
  Math comprises the fonts necessary for mathematical typesetting
  (maths italic, math symbols and extensions) in normal and bold
  weights.  The family also includes all OT1 and T1
  encoded text fonts of various shapes, as well as fonts with most
  useful glyphs of the TS1 encoding.  Macros for using the
  fonts with Plain TeX, LaTeX 2.09 and current LaTeX are
  provided.

  For further details (including samples) see

  [http://www.micropress-inc.com/fonts/bamath/bamain.htm]
- CH Math(15 fonts) MicroPress Inc.

  CH Math is a family of slab serif fonts, designed as a maths
  companion for Bitstream Charter.  (The distribution includes
  four free Bitstream text fonts, in addition to the 15 hand-hinted
  MicroPress fonts.)
  For further details (including samples) see

  [http://www.micropress-inc.com/fonts/chmath/chmain.htm]

- Computer Modern Bright(62 fonts&nbsp;&mdash; optical scaling) Walter
  Schmidt

  CM Bright is a family of sans serif fonts, based on Knuth's
  CM fonts.  It comprises the fonts necessary for mathematical
  typesetting, including AMS symbols, as well as text and text
  symbol fonts of various shapes.  The collection comes with its own
  set of files for use with LaTeX.  The CM Bright fonts are
  supplied in Type&nbsp;1 format by MicroPress, Inc.   The
  [`hfbright`](http://ctan.org/pkg/hfbright) bundle offers free Type&nbsp;1 fonts for text using
  the OT1 encoding&nbsp;&mdash; the [`cm-super`](http://ctan.org/pkg/cm-super) fonts provide the
  fonts in T1 text encoding but don't support CM bright
  mathematics.

  For further details of Micropress' offering (including samples) see

  [http://www.micropress-inc.com/fonts/brmath/brmain.htm]

- Concrete Math(25 fonts&nbsp;&mdash; optical scaling) Ulrik Vieth

  The Concrete Math font set was derived from the Concrete Roman
  typefaces designed by Knuth.  The set provides a collection of math
  italics, math symbol, and math extension fonts, and fonts of
  AMS symbols that fit with the Concrete set, so that Concrete
  may be used as a complete replacement for Computer Modern.  Since
  Concrete is considerably darker than CM, the family may
  particularly attractive for use in low-resolution printing or in
  applications such as posters or transparencies.  Concrete Math
  fonts, as well as Concrete Roman fonts, are supplied in Type 1
  format by MicroPress, Inc.

  For further information (including samples) see

  [http://www.micropress-inc.com/fonts/ccmath/ccmain.htm]

- HV Math(14 fonts) MicroPress Inc.

  HV Math is a family of sans serif fonts, inspired by the
  Helvetica (TM) typeface.  HV Math comprises the fonts
  necessary for mathematical typesetting (maths italic, maths symbols
  and extensions) in normal and bold weights.  The family also
  includes all OT1 and T1 encoded text fonts of various
  shapes, as well as fonts with most useful glyphs of the TS1
  encoding.  Macros for using the fonts with Plain TeX, LaTeX 2.09
  and current LaTeX are provided.  Bitmapped copies of the fonts
  are available free, on CTAN.

  For further details (and samples) see

  [http://www.micropress-inc.com/fonts/hvmath/hvmain.htm]

- Informal Math(7 outline fonts) MicroPress Inc.

  Informal Math is a family of fanciful fonts loosely based on the
  Adobe's Tekton (TM) family, fonts which imitate handwritten
  text.  Informal Math comprises the fonts necessary for
  mathematical typesetting (maths italic, maths symbols and extensions)
  in normal weight, as well as OT1 encoded text fonts in
  upright and oblique shapes.  Macros for using the fonts with
  Plain TeX, LaTeX 2.09 and current LaTeX are provided.

  For further details (including samples) see

  [http://www.micropress-inc.com/fonts/ifmath/ifmain.htm]

- Lucida Bright _with_ Lucida New Math(25 fonts) Chuck Bigelow and
  Kris Holmes

  Lucida is a family of related fonts including seriffed, sans serif,
  sans serif fixed width, calligraphic, blackletter, fax, Kris Holmes'
  connected handwriting font, _etc_; they're not as 'spindly' as
  Computer Modern, with a large x-height, and include a larger set of
  maths symbols, operators, relations and delimiters than CM
  (over 800 instead of 384: among others, it also includes the
  AMS `msam` and `msbm` symbol sets).  'Lucida
  Bright Expert' 
  (14 fonts) adds seriffed fixed width, another handwriting font,
  smallcaps, bold maths, upright 'maths italic', _etc_., to the
  set.  Support under LaTeX is available under the auspices of the
  PSNFSS, and pre-built metrics are also provided.

  TUG has the right to distribute these fonts; the web site
    ''[Lucida and TUG](http://tug.org/lucida/)''
  has details.

- Adobe Lucida, LucidaSans _and_ LucidaMath(12 fonts)

  Lucida and LucidaMath are generally considered to be a bit heavy.
  The three maths fonts contain only the glyphs in the CM maths
  italic, symbol, and extension fonts.  Support for using LucidaMath
  with TeX is not very good; you will need to do some work
  reencoding fonts _etc_.  (In some sense this set is the
  ancestor of the LucidaBright plus LucidaNewMath font set, which are
  not currently available.)

- MathTime Pro2Publish or Perish (Michael Spivak)

  This latest instance of the MathTime family covers all the weights
  (medium, bold and heavy) and symbols of previous versions of
  MathTime.  In addition it has a much extended range of symbols, and
  many typographic improvements that make for high-quality documents.
  The fonts are supported under both Plain TeX and LaTeX 2e, and
  are exclusively available for purchase from
  [Personal TeX Inc](./FAQ-commercial.html).
  

  For further details and samples and fliers, see
  [http://www.pctex.com/mtpro2.html]

- Minion Pro and MnSymbolAdobe, LaTeX support and packaging by
  Achim Blumensath _et al_.

  `Minion Pro` derives from the widely-available commercial
  OpenType font of the same name by Adobe; scripts are provided to
  convert relevant parts of it to Adobe Type&nbsp;1 format.  The
  [`MinionPro`](http://ctan.org/pkg/MinionPro) package will set up text and maths support using
  `Minion Pro`, but a separate (free) font set
  `MnSymbol` greatly extends the symbol coverage.

- PA Math PA&nbsp;Math is a family of serif fonts
  loosely based on the Palatino (TM) typeface.  PA&nbsp;Math
  comprises the fonts necessary for mathematical typesetting (maths
  italics, maths, calligraphic and oldstyle symbols, and extensions)
  in normal and bold weights. The family also includes all OT1,
  T1 encoded text fonts of various shapes, as well as fonts
  with the most useful glyphs of the TS1 encoding.  Macros for
  using the fonts with Plain TeX, LaTeX 2.09 and current LaTeX
  are provided.

  For further details (and samples) see

  [http://www.micropress-inc.com/fonts/pamath/pamain.htm] 

- TM Math(14 fonts) MicroPress Inc.

  TM Math is a family of serif fonts, inspired by the Times
  (TM) typeface.  TM Math comprises the fonts necessary for
  mathematical typesetting (maths italic, maths symbols and extensions)
  in normal and bold weights. The family also includes all OT1
  and T1 encoded text fonts of various shapes, as well as fonts
  with most useful glyphs of the TS1 encoding.  Macros for
  using the fonts with Plain TeX, LaTeX 2.09 and current LaTeX
  are provided.  Bitmapped copies of the fonts are available free, on
  CTAN.

  For further details (and samples) see

  [http://www.micropress-inc.com/fonts/tmmath/tmmain.htm] 

Two other font sets should be mentioned, even though they don't
currently produce satisfactory output&nbsp;&mdash; their author is no longer
working on them, and several problems have been identified:

- Pxfonts set version 1.0(26 fonts) by Young Ryu

  The `pxfonts` set consists of
  

  -  virtual text fonts using `Adobe` `Palatino`
      (or its URW replacement, `Palladio`)
      with modified plus, equal and slash symbols;
  -  maths alphabets using `Palatino` (or `Palladio`;
  -  maths fonts of all symbols in the computer modern maths fonts
      (`cmsy`, `cmmi`, `cmex` and the Greek
      letters of `cmr`) 
  -  maths fonts of all symbols corresponding to the AMS
      fonts (`msam` and `msbm`);
  -  additional maths fonts of various symbols.

  The text fonts are available in OT1, T1 and LY1
  encodings, and TS encoded symbols are also available.  The
  sans serif and monospaced fonts supplied with the `txfonts`
  set (see below) may be used with `pxfonts`; the
  `txfonts` set should be installed whenever `pxfonts`
  are.  LaTeX, `dvips` and PDFTeX support files are
  included.

  The fonts are not perfect; the widths assigned to the characters in
  the `tfm` file are wrong for some glyphs; this can cause
  sequences of characters to ''look wrong'', or in some cases even to
  overlap; the `newpx` fonts (noted above) aim to reduce
  these problems.

  The fonts are licensed under the GPL; use in published
  documents is permitted.

- Newpxby Michael Sharpe from Young Ryu's `pxfonts`

  This collection is derived from `pxfonts`; the maths fonts
  metrics have been adjusted so that the output is less cramped than
  when `pxfonts` is used; the appearance of the output is
  much improved.  Two packages are provided, [`newpxtext`](http://ctan.org/pkg/newpxtext) for
  using the associated text fonts, and [`newpxmath`](http://ctan.org/pkg/newpxmath) for
  mathematics.

- Txfonts set version 3.1(42 fonts) by Young Ryu

  The `txfonts` set consists of
  

  -  virtual text fonts using `Adobe` `Times` (or
      the URW `Nimbus Roman No9 L` font that
      substitutes for Times, which is distributed as part of the
      URW ''basic 35'' collection) with
      modified plus, equal and slash symbols;
  -  matching sets of sans serif and monospace ('typewriter')
      fonts (the sans serif set is based on `Adobe` `Helvetica`);
  -  maths alphabets using Adobe `Times`, or the URW
      equivalent `NimbusRomanNo9`;
  -  maths fonts of all symbols in the computer modern maths fonts
      (`cmsy`, `cmmi`, `cmex` and the Greek
      letters of `cmr`)
  -  maths fonts of all symbols corresponding to the AMS
      fonts (`msam` and `msbm`);
  -  additional maths fonts of various symbols.

  The text fonts are available in OT1, T1 and LY1
  encodings, and TS encoded symbols are also available.

  The fonts are not perfect; the widths assigned to the characters in
  the `tfm` file are wrong for some glyphs; this can cause
  sequences of characters to ''look wrong'', or in some cases even to
  overlap; the `newtx` fonts (noted above) aim to reduce
  these problems.

  The fonts are licensed under the GPL; use in published
  documents is permitted.
- Txfontsb set version 1.00 by Young Ryu and Antonis Tsolomitis

  The `txfontsb` bundles `txfonts`, extended to
  provide a Small Caps set, Old-Style numbers and Greek text (from the
  GNU Freefont set).
  [Documentation](http://mirrors.ctan.org/fonts/txfontsb/doc/txfontsb.pdf)
  is available for this variant, too.

- Newtxby Michael Sharpe from Young Ryu's `txfonts`

  This collection is derived from `txfonts`; the maths fonts
  metrics have been adjusted so that the output is less cramped than
  when `txfonts` is used; the appearance of the output is
  much improved.  Two packages are provided, [`newtxtext`](http://ctan.org/pkg/newtxtext) for
  using the associated text fonts, and [`newtxmath`](http://ctan.org/pkg/newtxmath) for
  mathematics.  Options are provided to substitute
  letters and symbols from the `Libertine` set, and from the
  Garamond extension font `garamondx` (but note that
  `garamondx`, which is an adaptation of URW Garamond,
  is not available via TeX&nbsp;Live).

Finally, one must not forget:

- Proprietary fontsVarious sources.

  Since having a high quality font set in scalable outline form that
  works with TeX can give a publisher a real competitive advantage,
  there are some publishers that have paid (a lot) to have such font
  sets made for them.  Unfortunately, these sets are not available on
  the open market, despite the likelihood that they're more complete
  than those that are.

We observe a very limited selection of commercial maths font sets; a
Type&nbsp;1 maths font has to be explicitly designed for use with TeX,
which is an expensive business, and is of little appeal in other
markets.  Furthermore, the TeX market for commercial fonts is
minute by comparison with the huge sales of other font sets.

Text fonts in Type&nbsp;1 format are available from many vendors including
Adobe, Monotype and Bitstream.  However, be careful with cheap font
''collections''; many of them dodge copyright restrictions by removing
(or crippling) parts of the font programs such as hinting.  Such
behaviour is both unethical and bad for the consumer.
The fonts may not render well (or at all, under ATM), may not have the
'standard' complement of 228 glyphs, or may not include metric files
(which you need to make TFM files).

TrueType was for a long time the ''native'' format for Windows, but
MicroSoft joined the development of the OpenType specification, and
'modern' windows will work happily with fonts in either format.  Some TeX
implementations such as [TrueTeX](./FAQ-commercial.html) use TrueType
versions of Computer Modern and Times Maths fonts to render TeX
documents in Windows without the need for additional system software like
ATM.  (When used on a system running Windows&nbsp;XP or later,
TrueTeX can also use Adobe Type&nbsp;1 fonts.)

When choosing fonts, your own system environment may not be the only one of
interest.  If you will be sending your finished documents to others for
further use, you should consider whether a given font format will introduce
compatibility problems.  Publishers may require TrueType exclusively because
their systems are Windows-based, or Type&nbsp;1 exclusively, because their systems
are based on the early popularity of that format in the publishing industry.
Many service bureaus don't care as long as you present them with a finished
print file (PostScript or PDF) for their output device.

