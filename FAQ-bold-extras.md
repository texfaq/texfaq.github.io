# How to do bold-tt or bold-sc




LaTeX, as delivered, offers no means of handling bold ''teletype''
or small-caps fonts.  There's a practical reason for this (Knuth never
designed such fonts), but there are typographical considerations too
(the ''medium weight'' `cmtt` font is already pretty bold (by
comparison with other fixed-width fonts), and bold small-caps is not
popular with many professional typographers).


There's a set of ''extra'' MetaFont files on CTAN that provide bold
versions of both `cmtt` and `cmcsc` (the small caps font).  With
modern TeX distributions, one may bring these fonts into use simply
by placing them in an 
[appropriate place in the _texmf_ tree](./FAQ-install-where.html)
(these are (La)TeX-specific files, so the ''_public_'' supplier
would be an appropriate place).  Once you've 
[rebuilt the file indexes as necessary](./FAQ-inst-wlcf.html),
TeX (and friends) will automatically build whatever font files they
need when you first make reference to them.  There's a jiffy package
[`bold-extra`](http://ctan.org/pkg/bold-extra) that builds the necessary font data structures
so that you can use the fonts within LaTeX.


Another alternative is to use the [EC fonts](./FAQ-ECfonts.html),
which come with bold variants of the small-caps fonts.


If you need to use Type&nbsp;1 fonts, you can't proceed with Knuth-style
fonts, since there are no Type&nbsp;1 versions of the [`mf-extra`](http://ctan.org/pkg/mf-extra)
set.  There are, however, Type&nbsp;1 distributions of the EC&nbsp;fonts, so you
can switch to EC and use them; alternatives are discussed in
[8-bit Type&nbsp;1 fonts](./FAQ-type1T1.html).


Of course, commercial fixed-width fonts (even the default
`Courier`) almost always come with a bold variant, so that's
not a problem.  Furthermore [PSNFSS](./FAQ-usepsfont.html)
will usually provide ''faked'' small caps fonts, and has no
compunctions about providing them in a bold form.  `Courier`
is (as we all know, to our cost) freely available; a far more
presentable monospace font is `LuxiMono`, which is also
freely available (monospace text in the typeset version of this
FAQ uses `LuxiMono`, with the metrics and LaTeX
support available on the archive.


