---
title: Getting "free" fonts not in your distribution
category: fonts
permalink: /FAQ-getnff
---

Some fonts are free to use, but may not be sold.  This creates a
dilemma for distributions: users may want the fonts, but since the
distribution is also available on a DVD for sale, the fonts may
not be in the distribution.

The CTAN archives hold such fonts, together with all the
necessary support files, but even with the support files ready-made,
installing a font is a tedious business.

For TeX&nbsp;Live users, this dilemma is solved by the
`getnonfreefonts` script.  Download the script installer from
<https://tug.org/fonts/getnonfreefonts/>; the web page tells you
how to run the installer to get the script, and what fonts are
currently available

Once the script is installed, you can ask it what it has available by
saying:
```
getnonfreefonts --sys  -l
```
and you can ask it to install a font by:
```
getnonfreefonts --sys luximono
```
(for example; the printed version of the FAQ uses luximono, so
that the example was to hand&hellip;).


The script will download the relevant font files from CTAN,
extract them from their `zip` file, install them and update
the font maps.  It even goes so far as to apologise for how long it's
taking!

