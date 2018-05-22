# 'Installing' a PostScript printer built-in font

There is a ''standard'' set of fonts that has appeared in every PostScript
printer since the second generation of the type.  These fonts
(8&nbsp;families of four text fonts each, and three special-purpose fonts)
are of course widely used, because of their simple availability.  The
set consists of:
  

-  `Times` family (4 fonts)
-  `Palatino` family (4 fonts)
-  `New` `Century` `Schoolbook` family (4 fonts)
-  `Bookman` family (4 fonts)
-  `Helvetica` family (4 fonts)
-  `Avant` `Garde` (4 fonts)
-  `Courier` family (4 fonts)
-  `Utopia` family (4 fonts)
-  Zapf `Chancery` (1 font)
-  Zapf `Dingbats` (1 font)
-  `Symbol` (1 font)

All these fonts are supported, for LaTeX users, by the
[`psnfss`](http://ctan.org/pkg/psnfss) set of metrics and support files in the file
`lw35nfss.zip` on CTAN.  Almost any remotely modern TeX
system will have some version of [`psnfss`](http://ctan.org/pkg/psnfss) installed, but
users should note that the most recent version has much improved
coverage of maths with `Times` (see package
[`mathptmx`](http://ctan.org/pkg/mathptmx)) and with `Palatino` (see package
[`mathpazo`](http://ctan.org/pkg/mathpazo), as well as a more reliable set of font metrics.

The archive `lw35nfss.zip` is laid out according to the
TDS, so in principle, installation consists simply of
''unzipping'' the file at the root of a `texmf` tree.

Documentation of the [`psnfss`](http://ctan.org/pkg/psnfss) bundle is provided in
`psnfss2e.pdf` in the distribution.

