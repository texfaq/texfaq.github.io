---
section: Graphics
permalink: /FAQ-labelfig
date: 2014-06-10
---

# Labelling graphics

''Technical'' graphics (such as graphs and diagrams) are often
labelled with quite complex mathematical expressions: there are few
drawing or graphing tools that can do such things (the honourable
exception being MetaPost, which allows you to program the labels, in
(La)TeX, in the middle of specifying your graphic).

Placing ''labels'' on graphics produced by all those _other_ tools is
what we discuss here.  (Note that the term ''label'' should be
liberally interpreted; many of the techniques _were_ designed for
use when applying labels to figures, but they may be used equally well
to draw funny faces on a figure &hellip; or anything.

The time-honoured [`psfrag`](https://ctan.org/pkg/psfrag) package can help, if your image is
included as an (encapsulated) PostScript file.  Place an unique
text in your graphic, using the normal text features of your tool, and
you can ask [`psfrag`](https://ctan.org/pkg/psfrag) to replace the text with arbitrary
(La)TeX material.  [`Psfrag`](https://ctan.org/pkg/Psfrag)'s ''operative'' command is
`\psfrag{<Orig text>}{<Repl text>}`, which
instructs the system to replace the original (''unique'') text with
the TeX-typeset replacement text.  Optional arguments permit
adjustment of position, scale and rotation; full details may be found
in `pfgguide` in the distribution.

Since [`psfrag`](https://ctan.org/pkg/psfrag) works in terms of (encapsulated) PostScript files,
it needs extra work for use with PDFLaTeX.  Two techniques are
available, using [`pst-pdf` package](/FAQ-pdftexgraphics)
in a mode designed to do this work; and using [`pdfrack`](https://ctan.org/pkg/pdfrack).

The [`Pst-pdf` package](/FAQ-pdftexgraphics) can support
this ''extra work'' usage.  In fact, the [`pst-pdf`](https://ctan.org/pkg/pst-pdf) support
package [`auto-pst-pdf`](https://ctan.org/pkg/auto-pst-pdf) offers a configuration setting
precisely for use with [`psfrag`](https://ctan.org/pkg/psfrag).

If you have the ''right'' environment (see below), you could try the
[`pdfrack`](https://ctan.org/pkg/pdfrack) script bundle.  The script aims to cut each figure
out of your source, using it to produce a small LaTeX file with
nothing but the figure inclusion commands.  Each of these figure files
is then processed to PostScript, compiled using the `\psfrag` commands,
and the resulting output converted to PDF again.

[`Pdfrack`](https://ctan.org/pkg/Pdfrack) is written to use the Unix Bourne shell (or
equivalent); thus your environment needs to be a Unix-based system, or
some equivalent such as `cygwin` under windows.  (What is
more, [`pdfrack`](https://ctan.org/pkg/pdfrack)'s author is rather disparaging about his
package; the present author has never tried it.)

The [`psfragx`](https://ctan.org/pkg/psfragx) package goes one step further than
[`psfrag`](https://ctan.org/pkg/psfrag): it provides a means whereby you can put the
[`psfrag`](https://ctan.org/pkg/psfrag) commands into the preamble of your EPS file
itself.  [`Psfrag`](https://ctan.org/pkg/Psfrag) has such a command itself, but deprecates
it; [`psfragx`](https://ctan.org/pkg/psfragx) has cleaned up the facility, and provides a
script `laprint` for use with `Matlab` to produce
appropriately tagged output.  (In principle, other graphics
applications could provide a similar facility, but apparently none does.)

`Emacs` users may find the embedded editor `iTe` a
useful tool for placing labels: it's a (La)TeX-oriented graphical
editor written in `Emacs Lisp`.  You create
`iteblock` environments containing graphics and text, and
may then invoke `iTe` to arrange the elements relative to one
another.

Another useful approach is [`overpic`](https://ctan.org/pkg/overpic), which overlays a
`picture` environment on a graphic included by use of
`\includegraphics`.  This treatment lends itself to ready placement
of texts and the like on top of a graphic.  The package can draw a
grid for planning your ''attack''; the distribution comes with simple
examples.

The [`lpic`](https://ctan.org/pkg/lpic) package is somewhat similar to [`overpic`](https://ctan.org/pkg/overpic);
it defines an environment `lpic` (which places your
graphic for you): within the environment you may use the command
`\lbl` to position LaTeX material at appropriate places over the
graphic.

[`Pinlabel`](https://ctan.org/pkg/Pinlabel) is another package whose author thought in the same
sort of way as that of [`overpic`](https://ctan.org/pkg/overpic); the documentation explains
in detail how to plan your ''labelling attack''&nbsp;&mdash; in this case by
loading your figure into a viewer and taking measurements from it.
(The package discusses direct use of
[`ghostscript`](http://www.ghostscript.com/) as well as
customised viewers such as
[`gsview`](http://www.ghostgum.com.au/) or
`gv`.)

[`Pstricks`](https://ctan.org/pkg/Pstricks) can of course do everything
that [`overpic`](https://ctan.org/pkg/overpic), [`lpic`](https://ctan.org/pkg/lpic) or [`pinlabel`](https://ctan.org/pkg/pinlabel)
can, with all the flexibility of PostScript programming that it offers.
This capability is exemplified by the [`pst-layout`](https://ctan.org/pkg/pst-layout) package,
which seems to be a superset of both [`overpic`](https://ctan.org/pkg/overpic) and
[`lpic`](https://ctan.org/pkg/lpic).

Similarly, [`pgf/TikZ`](https://ctan.org/pkg/pgf/TikZ) has all the power needed, but no
explicit package has been released.

The [`pstricks`](https://ctan.org/pkg/pstricks) web site has a page with several 
[examples of labelling](http://pstricks.tug.org/main.cgi?file=Examples/overlay)
which will get you started; if [`pstricks`](https://ctan.org/pkg/pstricks) is 
[an option for you](/FAQ-drawing), this route is worth a try.

The confident user may, of course, do the whole job in a picture
environment which itself includes the graphic.  I would recommend
[`overpic`](https://ctan.org/pkg/overpic) or the [`pstricks`](https://ctan.org/pkg/pstricks) approach, but such things
are plainly little more than a convenience over what is achievable
with the do-it-yourself approach.

