# Where are the `msx` and `msy` fonts?

The `msx` and `msy` fonts were designed by the
American Mathematical Society in the very early days of TeX, for
use in typesetting papers for mathematical journals.  They were
designed using the 'old' MetaFont, which wasn't portable and is no longer
available; for a long time they were only available in 300dpi versions
which only imperfectly matched modern printers.  The AMS has
now redesigned the fonts, using the current version of MetaFont, and the
new versions are called the `msa` and `msb`
families.

Nevertheless, `msx` and `msy` continue to turn up.
There may, of course, still be sites that haven't got around to
upgrading; but, even if everyone upgraded, there would still be the
problem of old documents that specify them.

If you have a `tex` source that requests `msx` and
`msy`, the best technique is to edit it so that it requests
`msa` and `msb` (you only need to change the single
letter in the font names).

A partial re-implementation of the blackboard-bold part of the
`msy` font (covering C, N, R, S and Z, only) is available in
Type&nbsp;1 format; if your mathematical needs only extend that far, the
font could be a good choice.

If you have a DVI file that requests the fonts, there is a package
of [virtual fonts](./FAQ-virtualfonts.html) to map the old to the new series.

