# Imported graphics in `dvipdfm`

`Dvipdfm` (and `dvipdfmx`) translates direct from
DVI to PDF (all other available routes produce PostScript
output using `dvips` and then convert that to PDF with
[`ghostscript`](http://www.ghostscript.com/)
or `Acrobat`s `Distiller`).

`Dvipdfm`/`Dvipdfmx` are particularly flexible
applications.  They permit the inclusion of bitmap and PDF
graphics (as does [PDFTeX](./FAQ-pdftexgraphics.html)), but are also
capable of employing
[`ghostscript`](http://www.ghostscript.com/) ''on the
fly'' to permit the inclusion of encapsulated PostScript (`eps`)
files by translating them to PDF.  In this way, they combine the good
qualities of `dvips` and of PDFTeX as a means of
processing illustrated documents.

Unfortunately, ''ordinary'' LaTeX can't deduce the bounding box of
a binary bitmap file (such as JPEG or PNG), so you have
to specify the bounding box.  This may be done explicitly, in the
document:
```latex
\usepackage[dvipdfm]{graphicx}
...
\includegraphics[bb=0 0 540 405]{photo.jpg}
```
It's usually not obvious what values to give the `bb` key,
but the program `ebb` will generate a file
containing the information; the above numbers came from an
`ebb` output file `photo.bb`:
```latex
%%Title: /home/gsm10/photo.jpg
%%Creator: ebb Version 0.5.2
%%BoundingBox: 0 0 540 405
%%CreationDate: Mon Mar  8 15:17:47 2004
```
If such a file is available, you may abbreviate the inclusion
code, above, to read:
```latex
\usepackage[dvipdfm]{graphicx}
...
\includegraphics{photo}
```
which makes the operation feel as simple as does including
`eps` images in a LaTeX file for processing with
`dvips`; the [`graphicx`](http://ctan.org/pkg/graphicx) package knows to look for a
`bb` file if no bounding box is provided in the
`\includegraphics` command.

The one place where usage isn't quite so simple is the need to quote
`dvipdfm` explicitly, as an option when loading the
[`graphicx`](http://ctan.org/pkg/graphicx) package: if you are using `dvips`, you
don't ordinarily need to specify the fact, since the default graphics
configuration file (of most distributions) ''guesses'' the
`dvips` option if you're using TeX.

