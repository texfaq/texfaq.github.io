# `\special` commands

TeX provides the means to express things that device drivers can
do, but about which TeX itself knows nothing.  For example, TeX
itself knows nothing about how to include PostScript figures into
documents, or how to set the colour of printed text; but some device
drivers do.

Instructions for such things are introduced to your document by means
of `\special` commands; all that TeX does with these commands is
to expand their 
arguments and then pass the command to the DVI file.  In most
cases, there are macro packages provided (often with the driver) that
provide a human-friendly interface to the `\special`; for example,
there's little point including a figure if you leave no gap for it in
your text, and changing colour proves to be a particularly fraught
operation that requires real wizardry.  LaTeX 2e
has standard graphics and colour packages that make figure inclusion,
rotation and scaling, and colour typesetting relatively
straightforward, despite the rather daunting `\special` commands
involved.  (CONTeXT provides similar support, though not by way of
packages.)

The allowable arguments of `\special` depend on the device driver
you're using.  Apart from the examples above, there are `\special`
commands in the emTeX drivers (e.g., `dvihplj`, `dviscr`,
_etc_.)&nbsp;that will draw lines at arbitrary orientations, and
commands in `dvitoln03` that permit the page to be set in
landscape orientation.

Note that `\special` behaves rather differently in PDFTeX, since
there is no device driver around.  There _is_ a concept of
PDF specials, but in most cases `\special` will provoke a
warning when used in PDFTeX.

