# Characters missing from PDF output




If you're using `Acrobat` `Distiller` to create your
PDF output, you may find
characters missing.  This may manifest
itself as messed-up maths equations (missing
''-'' signs, for example), or bits missing
from large symbols.  Early versions of `Distiller` used to
ignore character positions 0&ndash;31 and 128&ndash;159 of every font: Adobe's
fonts never use such positions, so why should `Distiller`?


Well, the answer to this question is ''because Adobe don't produce all
the world's fonts''&nbsp;&mdash; fonts like `Computer`
`Modern` were around before Adobe came on the scene, and
_they_ use positions 0&ndash;31.  Adobe don't react to complaints like
that in the previous sentence, but they do release new versions of
their programs; and `Distiller`, since at least version&nbsp;4.0,
_has_ recognised the font positions it used to shun.


Meanwhile, TeX users with old versions of `Distiller` need
to deal with their fonts.  `Dvips` comes to our aid: the
switch `-G1` (''remap characters''), which moves the offending
characters out of the way.  The PDF configuration file
(`-Ppdf`), recommended 
in ''[the wrong type of fonts](./FAQ-fuzzy-type3.html)'',
includes the switch.


The switch is not without its problems; pre-2003 versions of
`dvips` will apply it to Adobe fonts as well, causing
[havoc](./FAQ-charshift.html), but fortunately
that problem is usually soluble.  However, a document using both
CM and Adobe-specified fonts is stuck.  The only real solution
is either to upgrade `dvips`, or to spend money to upgrade
`Distiller`.


