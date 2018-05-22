# Which font files should be kept

MetaFont produces from its run three files, a metrics (TFM) file, a
generic font (GF) file, and a log file; all of these files have the
same base name as does the input (_e.g._, if the input file was
`cmr10.mf`, the outputs will be `cmr10.tfm`,
`cmr10.nnngf` (the file name may be mangled if you are using an
operating system which doesn't permit long file names)
and `cmr10.log`).

For TeX to use the font, you need a TFM file, so you need
to keep that.  However, you are likely to generate the same font
at more than one magnification, and each time you do so you'll
(incidentally) generate another TFM file; these files are
all the same, so you only need to keep one of them.

To preview or to produce printed output, the DVI processor will need a
font raster file; this is what the GF file provides.  However, while
there used (once upon a time) to be DVI processors that could use 
GF files, modern processors  use
packed raster (PK) files (incidentally, PDFTeX also uses
PK files if nothing ''better'' is available, but
see [fuzzy fonts in PDF](./FAQ-fuzzy-type3.html)).
Therefore, you need to generate a PK file from the GF file; the
program `gftopk` does this for you, and once you've done that you
may throw the GF file away.

The log file should never be needed again, unless there was some sort
of problem in the MetaFont run, and need not therefore be kept.

