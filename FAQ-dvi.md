# What is a DVI file?

'DVI' is supposed to be an acronym for
DeVice-Independent, meaning that the file may be
processed for printing or viewing on most kinds of typographic output
device or display.

A DVI file (that is, a file with the type or extension
`dvi`) is the main output file of ''original'' TeX (later
TeX-like systems, such as [PDFTeX](./FAQ-whatpdftex.html) may use
other formats).

A DVI file contains all the information that is needed for
printing or previewing, except for the actual bitmaps or outlines of
fonts, and any material to be introduced by means of 
[`\special` commands](./FAQ-specials.html).  Characters in the
DVI file (representing glyphs for printing or display) appear
in an encoding determined in the document.

Any TeX input file should produce the same DVI file
regardless of which implementation of TeX is used to produce it.

An DVI file may be processed by a [DVI driver](./FAQ-driver.html)
to produce further output designed specifically for a particular
printer, or for output in another format (for distribution), or it may
be used by a previewer for display on a computer screen.

Note that [XeTeX](./FAQ-xetex.html) (released some time after
PDFTeX) uses an ''extended DVI format'' (XDV) to send
its output to a close-coupled [DVI driver](./FAQ-driver.html),
`xdvipdfmx`.

The canonical reference for the structure of a DVI file is the
source of Knuth's program `dvitype` (whose original purpose,
as its name implies, was to view the content of a DVI file).
A partially complete ''standard'' for the way they should be
processed may offer further enlightenment.

