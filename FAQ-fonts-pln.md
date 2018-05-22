# Using non-standard fonts in Plain TeX




Plain TeX (in accordance with its description) doesn't do anything
fancy with fonts: it sets up the fonts that Knuth found he needed when
writing the package, and leaves you to do the rest.


To use something other than Knuth's default, you can use Knuth's
mechanism, the `\font` primitive:
```latex
\font\foo=nonstdfont
...
\foo
Text set using nonstdfont ...
```
The name you use (`nonstdfont`, above) is the name of the
`tfm` file for the font you want.


If you want to use an italic version of `\foo`, you need to use
`\font` again:
```latex
\font\fooi=nonstdfont-italic
...
\fooi
Text set using nonstdfont italic...
```
This is all very elementary stuff, and serves for simple use of fonts.
However, there are wrinkles, the most important of which is the matter
of [font encodings](./FAQ-whatenc.html).  One almost never sees new fonts
that use Knuth's eccentric font encodings&nbsp;&mdash; but those encodings are
built into Plain TeX, so that some macros of Plain TeX need to be
changed to use the fonts.  LaTeX gets around all these problems by
using a ''font selection scheme''&nbsp;&mdash; this 'NFSS' ('N'
for 'new', as opposed to what LaTeX 2.09 had) carries around with it
separate information about the fonts you use, so the changes to
encoding-specific commands happen automagically.


If you only want to use the [EC fonts](./FAQ-ECfonts.html), you
can in principle use the [`ec-plain`](http://ctan.org/pkg/ec-plain) bundle, which gives you a version
of Plain TeX which you can run in the same way that you run
Plain TeX using the original CM fonts, by invoking
`tex`.  ([`Ec-plain`](http://ctan.org/pkg/Ec-plain) also extends the EC fonts,
for reasons which aren't immediately clear, but which might cause
problems if you're hoping to use Type 1 versions of the fonts.)


The [`font_selection`](http://ctan.org/pkg/font_selection) package provides a sort of halfway house:
it provides font face and size, but not family selection.  This gives
you considerable freedom, but leaves you stuck with the original
CM fonts.  It's a compact solution, within its restrictions.


Other Plain TeX approaches to the problem (packages
[`plnfss`](http://ctan.org/pkg/plnfss), [`fontch`](http://ctan.org/pkg/fontch) and [`ofs`](http://ctan.org/pkg/ofs)) break out of the
Plain TeX model, towards the sort of font selection provided by
CONTeXT and LaTeX&nbsp;&mdash; font selection that allows you to change
family, as well as size and face.  The remaining packages all make
provision for using encodings other than Knuth's OT1.


[`Plnfss`](http://ctan.org/pkg/Plnfss) has a rather basic set of font family details;
however, it is capable of using font description (`fd`) files
created for LaTeX.  (This is useful, since most modern mechanisms
for integrating outline fonts with TeX generate `fd` files
in their process.)


[`Fontch`](http://ctan.org/pkg/Fontch) has special provision for T1 and TS1
encodings, which you select by arcane commands, such as:
```latex
\let\LMTone\relax
\input fontch.tex
```
for T1.


[`Ofs`](http://ctan.org/pkg/Ofs) seems to be the most thoroughly thought-through of the
alternatives, and can select more than one encoding: as well as
T1 it covers the encoding IL2, which is favoured in the
Czech Republic and Slovakia.  [`Ofs`](http://ctan.org/pkg/Ofs) also covers mathematical fonts,
allowing you the dubious pleasure of using fonts such as the 
[`pxfonts` and `txfonts`](./FAQ-psfchoice.html).


The [`pdcmac`](http://ctan.org/pkg/pdcmac) Plain TeX macro package aims to be a complete
document preparation environment, like [Eplain](./FAQ-eplain.html).  One
of its components is a font selection scheme, [`pdcfsel`](http://ctan.org/pkg/pdcfsel), which
is rather simple but adequately powerful for many uses.  The package
doesn't preload fonts: the user is required to declare the fonts the
document is going to use, and the package provides commands to select
fonts as they're needed.  The distribution includes a configuration to
use Adobe 'standard' fonts for typesetting text.  (Eplain itself
seems not to offer a font selection scheme.)


The [`font-change`](http://ctan.org/pkg/font-change) collection takes a rather different
approach&nbsp;&mdash; it supplies what are (in effect) a series of templates
that may be included in a document to change font usage.  The
package's documentation shows the effect rather well.


Simply to change font _size_ in a document (i.e., not changing
the default font itself), may be done using the rather straightforward
[`varisize`](http://ctan.org/pkg/varisize), which offers font sizes ranging from 7&nbsp;points to
20&nbsp;points (nominal sizes, all).  Font size commands are generated when
any of the package files is loaded, so the `11pt.tex` defines a
command `\elevenpoint`; each of the files ensures there's a ''way
back'', by defining a `\tenpoint` command.






