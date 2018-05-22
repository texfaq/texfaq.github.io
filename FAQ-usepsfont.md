# Using Adobe Type 1 fonts with TeX

In order to use any font, TeX needs a
_metric_ file (TFM file).  Several sets of metrics for
common Adobe Type 1 fonts are
available from the archives; for mechanisms for generating new ones,
see [metrics for PostScript fonts](./FAQ-metrics.html).  You
also need the fonts themselves; PostScript printers come with a set of
fonts built in, but to extend your repertoire you usually
need to buy from one of the many commercial font vendors (see, for
example, [''choice of fonts''](./FAQ-psfchoice.html)).

If you use LaTeX 2e, access to your printer's fonts is offered by the
PSNFSS package; the LaTeX3 project team declare that
PSNFSS is a ''required'' part of a LaTeX distribution, and
bug reports may be submitted via the 
[LaTeX bugs system](./FAQ-latexbug.html). 
PSNFSS gives you a set of packages for changing the default
roman, sans-serif and typewriter fonts; _e.g_., the
[`mathptmx`](http://ctan.org/pkg/mathptmx) package will set up `Times`
`Roman` as the main text font (and introduces mechanisms to
typeset mathematics using `Times` and various more-or-less
matching fonts),  while package [`avant`](http://ctan.org/pkg/avant) changes the sans-serif
family to `AvantGarde`, and [`courier`](http://ctan.org/pkg/courier) changes the
typewriter font to `Courier`.  To go with these
packages, you need the font metric files
and font description (`.fd`) files for each font family you
want to use.  For convenience,
metrics for the 'common 35' PostScript fonts found in most PostScript printers
are provided with PSNFSS, packaged as the ''Laserwriter set''.

For older versions of LaTeX there are various schemes, of which the
simplest to use is probably the PSLaTeX macros distributed with
`dvips`.

For Plain TeX, you load whatever fonts you like; if the encoding of
the fonts is not the same as Computer Modern it will be up to you to
redefine various macros and accents, or you can use the font
re-encoding mechanisms available in many drivers and in
`ps2pk` and `afm2tfm`.

Some common problems encountered are discussed elsewhere
(see [problems with PS fonts](./FAQ-psfontprob.html)).

