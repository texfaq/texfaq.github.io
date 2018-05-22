# Output to ''other'' printers

In the early years of TeX, there were masses of DVI drivers
for any (then) imaginable kind of printer, but the steam seems rather
to have gone out of the market for production of drivers for
printer-specific formats.  There are several reasons for this, but the
primary one is that few formats offer the flexibility available
through PostScript, and with
[`ghostscript`](http://www.ghostscript.com/) (and its
huge range of printer drivers) there is now little demand for new
printer driver development.

Thus, it is reasonable to [generate PostScript](./FAQ-dvips.html), and
use [`ghostscript`](http://www.ghostscript.com/) to send
the resulting PostScript output to the printer you actually have.

(If you are using a Unix system of some sort, it's generally quite
easy to insert
[`ghostscript`](http://www.ghostscript.com/) into the
print spooling process, which makes printing _really_ simple.)

