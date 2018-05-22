# Retrieving (La)TeX from DVI, etc.

The job just can't be done automatically: DVI, PostScript and
PDF are ''final'' formats, supposedly not susceptible to
further editing&nbsp;&mdash; information about where things came from has been
discarded.  So if you've lost your (La)TeX source (or never
had the source of a document you need to work on) you've a serious job
on your hands.  In many circumstances, the best strategy is to retype
the whole document, but this strategy is to be tempered by
consideration of the size of the document and the potential typists'
skills.

If automatic assistance is necessary, it's unlikely that any more than
text retrieval is going to be possible; the (La)TeX markup that
creates the typographic effects of the document needs to be recreated
by editing.

If the file you have is in DVI format, many of the techniques
for [converting (La)TeX to ASCII](./FAQ-toascii.html) are
applicable.  Consider `dvi2tty`, `crudetype` and
`catdvi`.  Remember that there are likely to be problems
finding included material (such as included PostScript figures, that
don't appear in the DVI file itself), and mathematics is
unlikely to convert easily.

To retrieve text from PostScript files, the
`ps2ascii` tool (part of the
[`ghostscript`](http://www.ghostscript.com/)
distribution) is available.  One could try applying this tool to
PostScript derived from an PDF file using `pdf2ps` (also
from the [`ghostscript`](http://www.ghostscript.com/)
distribution), or `Acrobat`
`Reader` itself; an alternative is `pdftotext`,
which is distributed with `xpdf`.

Another avenue available to those with a PDF file they want to
process is offered by Adobe `Acrobat` (version 5 or later):
you can tag the PDF file into an estructured document, output
thence to well-formed XHTML, and import the results into
Microsoft `Word` (2000 or later).  From there, one may
convert to (La)TeX using one of the techniques discussed in
''[converting to and from (La)TeX](./FAQ-fmtconv.html)''.

The result will typically (at best) be poorly marked-up.  Problems may
also arise from the oddity of typical TeX font encodings (notably
those of the maths fonts), which `Acrobat` doesn't know how
to map to its standard Unicode representation.

