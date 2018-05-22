# Imported graphics in `dvips`

`Dvips`, as originally conceived, can only import a single
graphics format: 
[encapsulated PostScript](./FAQ-eps.html) (`eps` files).
`Dvips` also deals with the slightly eccentric EPS that is
created by [MetaPost](./FAQ-MP.html).

Apart from the fact that a depressing proportion of drawing
applications produce corrupt EPS when asked for such output,
this is pretty satisfactory for vector graphics work.

To include bitmap graphics, you need some means of converting them to
PostScript; in fact many standard image manipulators (such as
`ImageMagick`s `convert`) make a good job of
creating EPS files (but be sure to ask for output at PostScript
level&nbsp;2 or higher).  (`Unix` users should beware of
`xv`s claims: it has a tendency to downsample your bitmap to
your screen resolution.)

Special purpose applications `jpeg2ps` (which converts
JPEG files using PostScript level 2 functionality),
`bmeps` (which converts both JPEG and PNG
files) and `a2ping`/`sam2p` (which convert a
bewildering array of bitmap formats to EPS or PDF files;
`sam2p` is one of the engines that `a2ping` uses)
are also considered ''good bets''.

`Bmeps` comes with patches to produce your own version of
`dvips` that can cope with JPEG and PNG direct,
using `bmeps`s conversion library.  `Dvips`, as
distributed by MiKTeX, comes with those patches built-in, but
assuming that capability destroys portability, and is only
recommendable if you are sure you will never want to share your
document.

