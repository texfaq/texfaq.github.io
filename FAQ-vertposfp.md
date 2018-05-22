# Vertical layout of float pages

By default, LaTeX vertically centres the floats on a float page;
the present author is not alone in not liking this arrangement.
Unfortunately, the control of the positioning is ''buried'' in
LaTeX-internal commands, so some care is needed to change the
layout.

Float pages use three LaTeX lengths (i.e., TeX skips) to define
their layout:

- `fptop` defines the distance from the
  top of the page to the top of the first float,
- `fpsep` defines the separation between
  floats, and
- `fpbot` defines the distance from the
  bottom of the last float on the page to the bottom of the page.

(In fact, the output routine places a skip of `fpsep` above each float, so
the `fptop` skip is always followed by a correction for that.)

The LaTeX defaults are:
  `fptop` = `0pt + 1fil`

  `fpsep` = `8pt + 2fil`

  `fpbot` = `0pt + 1fil`

so that the gaps expand to fill the space not occupied by floats, but
if there is more than one float on the page, the gap between them will
expand to twice the space at top and bottom.

Those who understand this stuff will be able to play elaborate games,
but the commonest requirement, that the floats start at the top of the
page, is a simple thing to do:
```latex
\makeatletter
\setlength{\@fptop}{0pt}
\makeatother
```
Surprisingly, you may find this setting leaves your floats too high on
the page.  One can justify a value of `5pt` (in place of
`0pt`)&nbsp;&mdash; it's roughly the difference between `\topskip`
and the height of normal (`10pt`) text.

Note that this is a ''global'' setting (best established in a class
file, or at worst in the document preamble); making the change for a
single float page is likely (at the least) to be rather tricky.

