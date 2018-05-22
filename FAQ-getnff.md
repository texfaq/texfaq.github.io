# Getting 'free' fonts not in your distribution

Some fonts are free to use, but may not be sold.  This creates a
dilemma for distributions: users may want the fonts, but since the
distribution is also available on a DVD for sale, the fonts may
not be in the distribtution.

The CTAN archives hold such fonts, together with all the
necessary support files, but even with the support files ready-made,
installing a font is a tedious business.

For TeX&nbsp;Live users, this dilemma is solved by the
`getnonfreefonts` script.  Download the script installer from
[http://tug.org/fonts/getnonfreefonts/]; the web page tells you
how to run the installer to get the script, and what fonts are
currently available

Once the script is installed, you can ask it what it has available by
saying:
```latex
getnonfreefonts -l
```
and you can ask it to install a font (in your local texmf tree) by:
```latex
getnonfreefonts luximono
```
(for example; the printed version of the FAQ uses luximono, so
that the example was to hand&hellip;).

(System adminstrators may use `getnonfreefonts-sys`, which
will install the font in the 'public' `texmf` tree, so that all
users of the system may use the new font.)

The script will download the relevant font files from CTAN,
extract them from their `zip` file, install them and update
the font maps.  It even goes so far as to apologise for how long it's
taking!

