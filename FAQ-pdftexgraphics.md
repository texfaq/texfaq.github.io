---
section: Graphics
date: 2014-06-10
---

# Imported graphics in pdfLaTeX

pdfTeX itself has a rather wide range of formats that it can
''natively'' incorporate into its output PDF stream:
JPEG (`jpg` files) for photographs and similar images,
PNG files for artificial bitmap images, and PDF for
vector drawings.  Old versions of pdfTeX (prior to version&nbsp;1.10a)
supported TIFF (`tif` files) format as an alternative
to PNG files; don't rely on this facility, even if you
_are_ running an old enough version of pdfTeX&hellip;

In addition to the ''native'' formats, the standard pdfLaTeX
[`graphics`](https://ctan.org/pkg/graphics) package setup causes Hans Hagen's `supp-pdf`
macros to be loaded: these macros are capable of translating the
output of MetaPost to PDF ''on the fly''; thus MetaPost output
(`mps` files) may also be included in pdfLaTeX documents.

The commonest problem users encounter, when switching from TeX, is
that there is no straightforward way to include EPS files:
since pdfTeX is its own ''driver'', and since it contains no means
of converting PostScript to PDF, there's no direct way the job can
be done.

The simple solution is to convert the EPS to an appropriate
PDF file.  The `epstopdf` program will do this: it's
available either as a Windows executable or as a `Perl`
script to run on Unix and other similar systems.  A LaTeX package,
[`epstopdf`](https://ctan.org/pkg/epstopdf), can be used to generate the requisite PDF
files ''on the fly''; this is convenient, but requires that you
suppress one of TeX's security checks: don't allow its use in files
from sources you don't entirely trust.

The package [`pst-pdf`](https://ctan.org/pkg/pst-pdf) permits other things than ''mere''
graphics files in its argument.  [`Pst-pdf`](https://ctan.org/pkg/Pst-pdf) operates (the
authors suggest) ''like BibTeX''&nbsp;&mdash; you process your file using
pdfLaTeX, then use LaTeX, `dvips` and `ps2pdf`
in succession, to produce a secondary file to input to your next
pdfLaTeX run.  (Scripts are provided to ease the production of the
secondary file.)

A further extension is [`auto-pst-pdf`](https://ctan.org/pkg/auto-pst-pdf), which generates
PDF (essentially) transparently, by spawning a job to process
output such as [`pst-pdf`](https://ctan.org/pkg/pst-pdf) uses.  If your pdfLaTeX
installation doesn't automatically allow it&nbsp;&mdash; see 
[spawning a process](FAQ-spawnprog.md)&nbsp;&mdash; then you need to start
pdfLaTeX with:
```latex
pdflatex -shell-escape <file>
```
for complete ''automation''.

An alternative solution is to use `purifyeps`, a
`Perl` script which uses the good offices of
`pstoedit` and of MetaPost to convert your Encapsulated PostScript to
''Something that looks like the encapsulated PostScript that comes out of
MetaPost'', and can therefore be included directly.  Sadly,
`purifyeps` doesn't work for all `eps` files.

Good coverage of the problem is to be found in Herbert Vo&szlig;'s
[PDF support page](http://pstricks.tug.org/main.cgi?file=pdf/pdfoutput),
which is targeted at the use of [`pstricks`](https://ctan.org/pkg/pstricks) in
pdfLaTeX, and also covers the [`pstricks`](https://ctan.org/pkg/pstricks)-specific package
[`pdftricks`](https://ctan.org/pkg/pdftricks).  A recent alternative (not covered in 
Herbert Vo&szlig;'s page) is [`pdftricks2`](https://ctan.org/pkg/pdftricks2), which offers similar
facilities to [`pdftricks`](https://ctan.org/pkg/pdftricks), but with some useful variations.

