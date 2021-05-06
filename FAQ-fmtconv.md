---
title: Other conversions to and from (La)TeX
category: misc
permalink: /FAQ-fmtconv
---

This page lists comverters to and from LaTeX, as of May 6, 2021

**To LaTeX from:**

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
  http://www.penguin.cz/%7Efojtik/wp2latex/wp2latex.htm  
  Latest version: 3.96 (2021-04-27)
  
- RTF `rtf2latex2e`, by Ujwal Sathyam and Scott Prahl.  
  https://sourceforge.net/projects/rtf2latex2e/  
  It will only convert rtf as saved from Word 2010 and earlier. 
  Rtf saved from the newer versions of Word contains tags which cause rtf2latex2e to segfault.
  Development of it seems to have stalled.
  
- OpenOffice: `Writer2LaTeX` http://writer2latex.sourceforge.net  
  requires: OpenOffice or LibreOffice, and Java.  
  Latest versions: stable 1.6.1 (2018-10-19), snapshot 1.9.3 alpha (2018-10-19)

- Word doc / docx: 
  - `docx2tex` https://github.com/transpect/docx2tex/  
      Latest version: 1.6 - 2021-01-25  
      requires: Java 1.7 up to 1.14
    
  - `wordtolatex` http://www.wordtolatex.com/  (commercial)
  
  - `word2latex` https://www.word2latex.net/  (commercial)
  
  - `Word-to-Latex` https://www.grindeq.com  (commercial)
  
  - `docx2latex` https://www.docx2latex.com/  (commercial)
  
  - `word2tex` https://www.chikrii.com/products/word2tex/  (commercial)
  
- PDF: `Acrobat Reader` (version 5.0 and later) 
  or `PDF Exchange Editor` will output rather feeble
  files that `Word` can read.
    
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

**From LaTeX to:**
  
- Convert LaTeX to `OpenOffice` format, using the
      `tex4ht` command `oolatex`; open the result in `OpenOffice` 
      and "save as" a MS-Word document.
      (Note that `OpenOffice` itself is _not_ on
      CTAN; see <http://www.openoffice.org/>, though most
      `linux` systems offer it as a ready-to-install bundle.)
      
- Convert LaTeX to `Word` format:

  - `tex2word` https://hunyadi.info.hu/levente/en/tex2word  
    Latest version: 2016-03-22 (development stalled)
  
  - `LaTeXML` https://dlmf.nist.gov/LaTeXML/  
    latest version: 0.8.5 (2020-11-17)
  
  - `tex2word` https://www.chikrii.com/products/tex2word/  (commercial)
  
  - `LaTeX-to-Word` https://www.grindeq.com  (commercial)
  
- Convert LaTeX to `rtf`: 
  - `latex2rtf` http://latex2rtf.sourceforge.net/  
    converts only a limited subset of LaTeX markup;
    development stalled

A group at Ohio State University (USA) is working on
a common document format based on SGML, with the ambition that any
format could be translated to or from this one. 

`FrameMaker` provides "import filters" to aid translation from alien formats
(presumably including TeX) to `FrameMaker`s own.
ALso see http://webhome.cs.uvic.ca/~nigelh/fm2latex.html (latest update 2015)
and http://www.cs.stir.ac.uk/~kjt/software/framemaker/#la_mml (latest update 2019)
