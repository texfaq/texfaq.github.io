---
title: Other conversions to and from (La)TeX
category: misc
permalink: /FAQ-fmtconv
---

From:
- troff `Tr2latex`, assists in the translation of a
  `troff` document into LaTeX 2.09 format.  It recognises most
  `-ms` and `-man` macros, plus most `eqn` and some
  `tbl` preprocessor commands.  Anything fancier needs to be
  done by hand. Two style files are provided. There is also a man page
  (which converts very well to LaTeX&hellip;).
  `Tr2latex` is an enhanced version of the earlier
  `troff-to-latex` (which is no longer available).

- WordPerfect `wp2latex` is actively maintained, and is
  available either for Windows or for Unix systems.
  
- RTF `rtf2latex2e`, by Ujwal Sathyam and Scott Prahl. 
  It will only convert rtf as saved from Word 2010 and earlier. 
  Rtf saved from the newer versions of Word contains tags which cause rtf2latex2e to segfault.
  Development of it seems to have stalled.
  
- OpenOffice: Writer2LaTeX http://writer2latex.sourceforge.net

- Word doc / docx: 
  - docx2tex https://github.com/transpect/docx2tex/
  - wordtolatex http://www.wordtolatex.com/  (commercial)
  - word2latex https://www.word2latex.net/  (commercial)
  - Word-to-Latex https://www.grindeq.com  (commercial)
  - docx2latex https://www.docx2latex.com/  (commercial)
  - word2tex https://www.chikrii.com/products/word2tex/  (commercial)
  
- PDF: Acrobat Reader or Windows (version 5.0 and later) 
  or pdf Exchange Editor will output rather feeble
  files that `Word` can read.
    
  For conversion in the other direction:
  
- Convert LaTeX to `OpenOffice` format, using the
      `tex4ht` command `oolatex`; open the result in `OpenOffice` 
      and "save as" a MS-Word document.
      (Note that `OpenOffice` itself is _not_ on
      CTAN; see <http://www.openoffice.org/>, though most
      `linux` systems offer it as a ready-to-install bundle.)
      
- Convert LaTeX to Word format:
  - tex2word https://hunyadi.info.hu/levente/en/tex2word  (development stalled)
  - LaTeXML https://dlmf.nist.gov/LaTeXML/
  - tex2word https://www.chikrii.com/products/tex2word/  (commercial)
  - LaTeX-to-Word https://www.grindeq.com  (commercial)
  
- Convert LaTeX to rtf: 
  - latex2rtf http://latex2rtf.sourceforge.net/ 
    converts only a limited subset of LaTeX markup;
    development stalled

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

A group at Ohio State University (USA) is working on
a common document format based on SGML, with the ambition that any
format could be
translated to or from this one.  `FrameMaker` provides
"import filters" to aid translation from alien formats
(presumably including TeX) to `FrameMaker`s own.
