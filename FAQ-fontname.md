# What is the ''Berry naming scheme''?

In the olden days, (La)TeX distributions were limited by the
feebleness of file systems' ability to represent long names.  (The
MS-DOS file system was a particular bugbear: fortunately any current
Microsoft system allows rather more freedom to specify file names.
Sadly, the ISO&nbsp;9660 standard for the structure of CD-ROMs has a
similar failing, but that too has been modified by various extension
mechanisms.)

One area in which these short file names posed a particular problem
was that of file names for Type&nbsp;1 fonts.
These fonts are distributed by their vendors with
pretty meaningless short names, and there's a natural ambition to
change the name to something that identifies the font somewhat
precisely.  Unfortunately, names such as ''BaskervilleMT'' are
already far beyond the abilities of the typical feeble file system,
and add the specifier of a font shape or variant, and the difficulties
spiral out of control.  Font companies deal with the issue by
inventing silly names, and providing a map file to show what the
''real'' names.  Thus the Monotype Corporation provides the
translations:
  `bas_____ BaskervilleMT`

  `basb____ BaskervilleMT-Bold`

  `basbi___ BaskervilleMT-BoldItalic`
and so on.  These names could be used within (La)TeX programs,
except that they are not unique: there's nothing to stop Adobe using
`bas_____` for _their_ Baskerville font.

Thus arose the Berry naming scheme.

The basis of the scheme is to encode the meanings of the various parts
of the file's specification in an extremely terse way, so that enough
font names can be expressed even in impoverished file name-spaces.  The
encoding allocates one character to the font ''foundry'' (Adobe, Monotype,
and so on), two to the typeface name (Baskerville, Times Roman, and so
on), one to the weight, shape, and encoding and so on.  

The whole scheme is outlined in the [`fontname`](http://ctan.org/pkg/fontname) distribution,
which includes extensive documentation and a set of tables of fonts
whose names have been systematised.

