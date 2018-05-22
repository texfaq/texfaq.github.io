# What are PK files?

PK files (packed raster) are the canonical form of TeX font
bitmaps.  The output from [MetaFont](./FAQ-useMF.html) includes a generic
font (GF) file and the utility `gftopk` produces a
PK file from that.

There are potentially a lot of PK files, as one
is needed for each font: that is for each magnification of each
design (point) size for each weight for each font in each family.

Further, since the PK files for one printer do not necessarily
work well for another, the whole set needs to be duplicated for each
printer type at a site.

While this menagerie of bitmaps can (in principle) provide fonts that
are closely matched to the capabilities of each printer, the size of
the collection (and the resulting difficulty of maintaining it) has
been a potent driver to the move towards outline fonts such as
[Adobe Type 1 fonts](./FAQ-adobetypen.html).

