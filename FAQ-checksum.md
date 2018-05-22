# Checksum mismatch in font

When MetaFont generates a font it includes a checksum in the font bitmap
file, and in the font metrics file (TFM).  (La)TeX includes
the checksum from the TFM file in the DVI file.

When `dvips` (or other DVI drivers) process a
DVI file, they compare checksums in the DVI file to
those in the bitmap fonts being used for character images.  If the
checksums don't match, it means the font metric file used by (La)TeX
was not generated from the same MetaFont program that generated the
font.

This commonly occurs when you're processing someone else's DVI
file.

The fonts on your system may also be at fault: possibilities are that
the new TFM was not installed, or installed in a path after an
old TFM file, or that you have a personal cache of bitmaps from
an old version of the font.

In any case, look at the output &ndash; the chances are that it's perfectly
OK, since metrics tend not to change, even when the bitmaps are
improved.  (Indeed, many font designers&nbsp;&mdash; Knuth included&nbsp;&mdash;
maintain the metrics come what may.)

If the output _does_ look bad, your only chance is to regenerate
things from scratch.  Options include: flushing your bitmap cache,
rebuild the TFM file locally, and so on.

