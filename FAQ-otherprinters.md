---
title: Output to ''other'' printers
category: misc
permalink: /FAQ-otherprinters
date: 2014-06-10
---

# Output to ''other'' printers

In the early years of TeX, there were masses of DVI drivers
for any (then) imaginable kind of printer, but the steam seems rather
to have gone out of the market for production of drivers for
printer-specific formats.  There are several reasons for this, but the
primary one is that few formats offer the flexibility available
through PostScript, and with
[`ghostscript`](https://www.ghostscript.com/) (and its
huge range of printer drivers) there is now little demand for new
printer driver development.

Thus, it is reasonable to [generate PostScript](/FAQ-dvips), and
use [`ghostscript`](https://www.ghostscript.com/) to send
the resulting PostScript output to the printer you actually have.

(If you are using a Unix system of some sort, it's generally quite
easy to insert
[`ghostscript`](https://www.ghostscript.com/) into the
print spooling process, which makes printing _really_ simple.)

