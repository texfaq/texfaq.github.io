# Documented LaTeX sources (`dtx` files)

LaTeX 2e, and many contributed LaTeX macro packages, are written
in a [literate programming style](./FAQ-lit.html), with source and
documentation in the
same file.  This format in fact originated before the
days of the LaTeX project as one of the ''Mainz'' series of
packages.  A documented source file conventionally has the suffix
`dtx`, and will normally be 'stripped' before use with
LaTeX; an installation (`ins`) file is normally provided,
to automate this process of removing comments for speed of loading.
If the `ins` file is available, you may process _it_
with LaTeX to produce the package (and, often, auxiliary files).

Output should look something like:
```latex
Generating file(s) ./foo.sty 

Processing file foo.dtx (package) -> foo.sty
File foo.dtx ended by \endinput.
Lines  processed: 2336
Comments removed: 1336
Comments  passed: 2
Codelines passed: 972
```
The lines `Processing &hellip; ended by `\endinput`` may
be repeated if the `dtx` file provides more than one
'unpacked' file.

To read the comments ''as a document'', you can run LaTeX on the
`dtx` file to produce a nicely formatted version of the
documented code.  (Most LaTeX packages on CTAN, nowadays, already
have PDF of the result of processing the `dtx` file,
as ''documentation''.)

Several packages may be included in one `dtx` file, with
conditional sections, and there are facilities for indexes of macros,
etc.  All of this m&eacute;lange is sorted out by directives in the
`ins` file; conventional indexing utilities may be necessary
for ''full'' output.

Anyone may write `dtx` files; the format is explained in
[The LaTeX Companion](./FAQ-latex-books.html), and a tutorial is available
from CTAN (which comes with skeleton `dtx` and
`ins` files).

Composition of `dtx` files is supported in `emacs` by
[AUC-TeX](./FAQ-editors.html).

The (unix-based) script `dtxgen` generates a proforma basic
`dtx` file, which could be useful when starting a new
project.

Another route to an `dtx` file is to write the
documentation and the code separately, and then to combine them using
the `makedtx` system.  This technique has particular value in
that the documentation file can be used separately to generate
HTML output; it is often quite difficult to make 
[LaTeX to HTML conversion](./FAQ-LaTeX2HTML.html) tools deal
with `dtx` files, since they use an unusual class file.

The `sty2dtx` system goes one step further: it attempts to
create a `dtx` file from a 'normal' `sty` file
with comments.  It works well, in some circumstances, but can become
confused by comments that aspire to ''structure'' (e.g., tabular
material, as in many older packages' file headers).

The `dtx` files are not used by LaTeX after they have been
processed to produce `sty` or `cls` (or whatever)
files.  They need not be kept with the working system; however, for
many packages the `dtx` file is the primary source of
documentation, so you may want to keep `dtx` files elsewhere.

An interesting sideline to the story of `dtx` files is the
[`docmfp`](http://ctan.org/pkg/docmfp) package, which extends the model of the [`doc`](http://ctan.org/pkg/doc)
package to
  [MetaFont](./FAQ-MF.html) and [MetaPost](./FAQ-MP.html),
thus permitting documented distribution of bundles containing code for
MetaFont and MetaPost together with related LaTeX code.

