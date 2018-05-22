# Repeated graphics in a document

A logo or ''watermark'' image, or any other image that is repeated in
your document, has the potential to make the processed version of the
document unmanageably large.  The problem is, that the default
mechanisms of graphics usage add the image at every point it's to be
used, and when processed, the image appears in the output file at each
such point.

Huge PostScript files are embarrassing; explaining _why_ such a file
is huge, is more embarrassing still.

The [`epslatex` graphics tutorial](./FAQ-tutbitslatex.html)
describes a technique for avoiding the problem: basically, one
converts the image that's to be repeated into a PostScript subroutine, and
load that as a `dvips` prologue file.  In place of the image,
you load a file (with the same bounding box as the image) containing
no more than an invocation of the subroutine defined in the prologue.

The `epslatex` technique is tricky, but does the job.  Trickier
still is the neat scheme of converting the figure to a one-character
Adobe Type&nbsp;3 outline font.  While this technique is for the ''real
experts'' only (the author of this answer has never even tried it), it has
potential for the same sort of space saving as the `epslatex`
technique, with greater flexibility in actual use.

More practical is Hendri Adriaens' [`graphicx-psmin`](http://ctan.org/pkg/graphicx-psmin); you load
this _in place_ of [`graphicx`](http://ctan.org/pkg/graphicx), so rather than:
```latex
\usepackage[<options>]{graphicx}
```
you will write:
```latex
\usepackage[<options>]{graphicx-psmin}
```
and at the start of your document, you write:
```latex
\loadgraphics[<bb>]{<list of graphics>}
```
and each of the graphics in the list is converted to an ''object'' for
use within the resulting PostScript output.  (This is, in essence, an
automated version of the `epslatex` technique described above.)

Having loaded the package as above, whenever you use
`\includegraphics`, the command checks if the file you've asked for
is one of the graphics in `\loadgraphics` list.  If so, the
operation is converted into a call to the ''object'' rather than a new
copy of the file; the resulting PostScript can of course be _much_ smaller.

Note that the package requires a recent `dvips`, version
5.95b (this version isn't&nbsp;&mdash; yet&nbsp;&mdash; widely distributed).

If your PostScript is destined for conversion to PDF, either by a
[`ghostscript`](http://www.ghostscript.com/)-based
mechanism such as `ps2pdf` or by
(for example) `Acrobat` `Distiller`, the issue isn't
so pressing, since the distillation mechanism will amalgamate graphics
objects whether or not the PostScript has them amalgamated.  PDFTeX does
the same job with graphics, automatically converting multiple uses
into references to graphics objects.

