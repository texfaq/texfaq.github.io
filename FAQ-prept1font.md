# Preparing a Type&nbsp;1 font

The process of installing a Type&nbsp;1 font set is rather convoluted, and
we will deal with it in two chunks: first (in the present answer)
preparing the font for installation, and second 
[installing a Type&nbsp;1 font](./FAQ-instt1font.html)).

Many fonts are supplied in (La)TeX ready form: such fonts need no
preparation, and may be installed immediately.

However, if you purchase a font from a Type foundry (either direct or
via one of the web stores), you are likely to need to 'prepare' it for
use with (La)TeX.  The rest of this answer discusses this preparation.
  

-  Acquire the font.  A very small set of Type&nbsp;1 fonts is installed
    in most PostScript printers you will encounter.  For those few (whose use
    is covered by the basic PSNFSS package), you don't need the
    Type&nbsp;1 font itself, to be able to print using the font.
  

    For all the myriad other Type&nbsp;1 fonts, to be able to print using
    the font you need the Type&nbsp;1 file itself.  Some of these are
    available for free (they've either been donated to the public
    domain, or were developed as part of a free software project), but
    the vast majority are commercial products, requiring you to spend
    real money.
-  Acquire the fonts' AFM files.  AFM files contain
    information from the font foundry, about the sizes of the characters
    in the font, and how they fit together.  One measure of the quality
    of a font-supplier is that they provide the AFM files by
    default: if the files are not available, you are unlikely to be able
    to use the font with (La)TeX.
-  Rename the AFM files and the Type&nbsp;1 files to match the
    [Berry font naming scheme](./FAQ-fontname.html).
-  Generate TeX metric files from the AFM files.  The
    commonest tool for this task is [`fontinst`](http://ctan.org/pkg/fontinst); the package
    documentation helps, but other guides are available (see below).
    The simplest possible script to pass to [`fontinst`](http://ctan.org/pkg/fontinst) is:
    ```latex
    \latinfamily{xyz}{}
    \bye
    ```
    where `xyz` is the Berry name of the font family.  This
    simple script is adequate for most purposes: its output covers the
    font family in both T1 and OT1 font encodings.  Nevertheless,
    with fancier fonts, more elaborate things are possible with
    [`fontinst`](http://ctan.org/pkg/fontinst): see its documentation for details.
  

    [`Fontinst`](http://ctan.org/pkg/Fontinst) also generates map files, and LaTeX font
    definition (`fd`) files.

Having traversed this list, you have a set of font files ready for
installation.

