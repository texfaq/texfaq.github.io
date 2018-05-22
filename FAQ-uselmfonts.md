# Using the Latin Modern fonts

The [`lm`](http://ctan.org/pkg/lm) fonts are an exciting addition to
the armoury of the (La)TeX user: high quality outlines of fonts that
were until recently difficult to obtain, all in a free and
relatively compact package.  However, the spartan information file
that comes with the fonts remarks ''It is presumed that a potential
user knows what to do with all these files''.  This answer aims to
fill in the requirements: the job is really not terribly difficult.

Note that teTeX distributions, from version&nbsp;3.0, already have the
[`lm`](http://ctan.org/pkg/lm) fonts: all you need do is use them.  The fonts may also
be installed via the package manager, in a current MiKTeX system.
The remainder of this answer, then, is for people who don't use such
systems.

The font (and related) files appear on CTAN as a set of
single-entry [TDS trees](./FAQ-tds.html)&nbsp;&mdash;
`fonts`, `dvips`, `tex` and `doc`.  The `doc`
subtree really need not be copied (it's really a pair of sample
files), but copy the other three into your existing Local
`$TEXMF` tree, and
[update the filename database](./FAQ-inst-wlcf.html).

Now, incorporate the fonts in the set searched by PDFLaTeX,
`dvips`, `dvipdfm`/`dvipdfmx`, your
previewers and Type&nbsp;1-to-PK conversion programs, by
  

-  On a teTeX system earlier than version&nbsp;2.0, edit the file
    `$TEXMF/dvips/config/updmap` 
    and insert an absolute path for the `lm.map` just after the
    line that starts `extra_modules="` (and before the closing
    quotes).
-  On a teTeX version&nbsp;2.0 (or later), execute the command
    ```latex
    updmap --enable Map lm.map
    ```
-  On a MiKTeX system earlier than version&nbsp;2.2, the ''Refresh
    filename database'' operation, which you performed after installing
    files, also updates the system's ''PostScript resources database''.
-  On a MiKTeX system, version&nbsp;2.2 or later, update
    `updmap.cfg` as described in the MiKTeX 
    [online documentation](http://docs.miktex.org/manual/psfonts.html#chgupdmapcfg).
    Then execute the command `initexmf --mkmaps`, and the
    job is done.

To use the fonts in a LaTeX document, you should
  `\usepackage{lmodern}`
this will make the fonts the default
for all three LaTeX font families (''roman'', ''sans-serif'' and
''typewriter'').  You also need 
  `\usepackage[T1]{fontenc}`
for text, and 
  `\usepackage{textcomp}`
if you want to use any of the TS1-encoding symbols.  There is
no support for using fonts according to the OT1 encoding.

