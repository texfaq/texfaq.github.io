# Where to install packages




We assume here that you have decided what tree to put your files in,
after reading 
''[choosing a TDS tree](./FAQ-what-TDS.html)''.  We will therefore
write `$TEXMF` for it, and you need to substitute the tree
you decided on.


The basic idea is to imitate the directory structure in your
existing tree(s). Here are some examples of where various sorts of
files should go:
```latex
.sty, .cls or .fd: $TEXMF/tex/<format>/<package>/
.mf:   $TEXMF/fonts/source/<supplier>/<font>/
.tfm:  $TEXMF/fonts/tfm/<supplier>/<font>/
.vf:   $TEXMF/fonts/vf/<supplier>/<font>/
.afm:  $TEXMF/fonts/afm/<supplier>/<font>/
.pfb:  $TEXMF/fonts/type1/<supplier>/<font>/
.ttf:  $TEXMF/fonts/truetype/<supplier>/<font>/
.otf:  $TEXMF/fonts/opentype/<supplier>/<font>/
.pool, .fmt, .base or .mem: $TEXMF/web2c
```
and for modern systems (those distributed in 2005 or later, using TDS
v1.1 layouts):
```latex
.map:  $TEXMF/fonts/map/<syntax>/<bundle>/
.enc:  $TEXMF/fonts/enc/<syntax>/<bundle>/
```
(Map and encoding files went to directories under
`$TEXMF/dvips/`, 
in earlier distributions.)


In the lists above &lsaquo;_format_&rsaquo; identifies the format the macros
are designed for&nbsp;&mdash; it can be things such as `plain`,
`generic` (i.e., any format), `latex` or
`context` (or several less common formats).


For fonts, &lsaquo;_font_&rsaquo; refers to the font family (such as `cm`
for Knuth's Computer Modern, `times` for Adobe's Times Roman).
The supplier is usually obvious&nbsp;&mdash; the supplier
''public'' is commonly used for free fonts.


The &lsaquo;_syntax_&rsaquo; (for `map` and `enc` files) is a
categorisation based on the way the files are written; candidates are
names of programs such as `dvips` or `pdftex`.


''Straight'' (La)TeX input can take other forms than the
`sty`, `cls` or `fd` listed above, too
(apart from the 'obvious' `tex`).  Examples are (the
obvious) `tex`, `lfd` for [`babel`](http://ctan.org/pkg/babel) language
definitions, `sto` and `clo` for package and class
options, `cfg` for configuration information,
`def` for variants (such as the types of devices
[`graphics`](http://ctan.org/pkg/graphics) drives).  The `README` of the package should
tell you of any others, though sometimes that information is printed
when the package's [comments are stripped](./FAQ-install-unpack.html).
All of these files should live together with the main package files.


Note that &lsaquo;_font_&rsaquo; may stand for a single font or an entire family:
for example, files for all of Knuth's Computer Modern fonts are to be
found in `.../public/cm`, with various prefixes as appropriate.


The font ''supplier'' _public_ is a sort of hold-all for
''free fonts produced for use with (La)TeX'': as well as Knuth's
fonts, _public_'s directory holds fonts designed by others
(originally, but no longer exclusively, in MetaFont).


Documentation for each package should all go, undifferentiated, into a
directory on the `doc/` subtree of the TDS.  The layout of
the subtree is slightly different: `doc/latex` hosts all
LaTeX documentation directories, but more fundamental things are
covered, e.g., by `doc/etex` or `doc/xetex`.


