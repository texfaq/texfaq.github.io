# Other conversions to and from (La)TeX

- troff`Tr2latex`, assists in the translation of a
  `troff` document into LaTeX 2.09 format.  It recognises most
  `-ms` and `-man` macros, plus most `eqn` and some
  `tbl` preprocessor commands.  Anything fancier needs to be
  done by hand. Two style files are provided. There is also a man page
  (which converts very well to LaTeX&hellip;).
  `Tr2latex` is an enhanced version of the earlier
  `troff-to-latex` (which is no longer available).

- WordPerfect `wp2latex` is actively maintained, and is
  available either for MS-DOS or for Unix systems.
- RTF `Rtf2tex`, by Robert Lupton, is for
  converting Microsoft's Rich Text Format to TeX.  There is also a
  converter to LaTeX by Erwin Wechtl, called `rtf2latex`.
  The latest converter, by Ujwal Sathyam and Scott Prahl, is
  `rtf2latex2e` which seems rather good, though development
  of it seems to have stalled.

  Translation _to_ RTF may be done (for a somewhat
  constrained set of LaTeX documents) by TeX2RTF, which
  can produce ordinary RTF, Windows Help RTF (as well as
  HTML, [conversion to HTML](./FAQ-LaTeX2HTML.html)).
  TeX2RTF is supported on various Unix platforms and under
  Windows&nbsp;3.1
- Microsoft Word A rudimentary (free) program for converting
  MS-Word to LaTeX is `wd2latex`, which runs on MS-DOS;
  it probably processes the output of an archaic version of
  MS-Word (the program itself was archived in 1991).

  For conversion in the other direction, the current preferred
  free-software method is a two-stage process:
  

  -  Convert LaTeX to `OpenOffice` format, using the
      `tex4ht` command `oolatex`;
  -  open the result in `OpenOffice` and 'save as' a
      MS-Word document.

  (Note that `OpenOffice` itself is _not_ on
  CTAN; see [http://www.openoffice.org/], though most
  `linux` systems offer it as a ready-to-install bundle.)

  `tex4ht` can also generate OpenOffice ODT
  format, which may be used as an intermediate to producing Word
  format files.

  `Word2`_TeX_ and _TeX_`2Word` are 
  shareware translators from 
  [Chikrii Softlab](http://www.chikrii.com/); positive users'
  reports have been noted (but not recently).

  If cost is a constraint, the best bet is probably to use an
  intermediate format such as RTF or HTML.
  `Word` outputs and reads both, so in principle this route
  may be useful.

  You can also use PDF as an intermediate format: Acrobat Reader
  for Windows (version 5.0 and later) will output rather feeble
  RTF that `Word` can read.
- Excel `Excel2Latex` converts an `Excel` file
  into a LaTeX `tabular` environment; it comes as a
  `xls` file which defines some `Excel` macros to produce
  output in a new format.
- runoff Peter Vanroose's `rnototex`
  conversion program is written in VMS Pascal.
  The sources are distributed with a VAX executable.
- refer/tib There are a few programs for converting bibliographic
  data between BibTeX and `refer`/`tib` formats.
  The collection includes a shell script converter from BibTeX to
  `refer` format as well. The collection
  is not maintained.
- PC-Write`pcwritex.arc` is a
  print driver for PC-Write that ''prints'' a PC-Write
  V2.71 document to a TeX-compatible disk file.  It was written by Peter
  Flynn at University College, Cork, Republic of Ireland.

[Wilfried Hennings' FAQ](http://www.tug.org/utilities/texconv/index.html),
which deals specifically with conversions between TeX-based formats
and word processor formats, offers much detail as well as tables that
allow quick comparison of features.

A group at Ohio State University (USA) is working on
a common document format based on SGML, with the ambition that any
format could be
translated to or from this one.  `FrameMaker` provides
''import filters'' to aid translation from alien formats
(presumably including TeX) to `FrameMaker`s own.

