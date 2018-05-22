# Unable to read an entire line

TeX belongs to the generation of applications written for
environments that didn't offer the sophisticated string and i/o
manipulation we nowadays take for granted (TeX was written in
Pascal, and the original Pascal standard made no mention of i/o, so
that anything but the most trivial operations were likely to be
unportable).

When you overwhelm TeX's input mechanism, you get told:
```latex
! Unable to read an entire line---bufsize=3000.
    Please ask a wizard to enlarge me.
```
(for some value of '3000'&nbsp;&mdash; the quote was from a
`comp.text.tex` posting by a someone who was presumably
using an old TeX).

As the message implies, there's (what TeX thinks of as a) line in
your input that's ''too long'' (to TeX's way of thinking).  Since
modern distributions tend to have tens of thousands of bytes of input
buffer, it's somewhat rare that these messages occur ''for real''.
Probable culprits are:
  

-  A file transferred from another system, without translating
    record endings.  With the decline of fixed-format records (on
    mainframe operating systems) and the increased intelligence of
    TeX distributions at recognising other systems' explicit
    record-ending characters, this is nowadays rather a rare cause of
    the problem.
-  A graphics input file, which a package is examining for its
    bounding box, contains a binary preview section.  Again,
    sufficiently clever TeX distributions recognise this situation,
    and ignore the previews (which are only of interest, if at all, to a
    TeX previewer).

The usual advice is to ignore what TeX says (i.e., anything about
enlarging), and to put the problem right in the source. 

If the real problem is over-long text lines, most self-respecting text
editors will be pleased to automatically split long lines (while
preserving the ''word'' structure) so that they are nowhere any longer
than a given length; so the solution is just to edit the file.

If the problem is a ridiculous preview section, try using
[`ghostscript`](http://www.ghostscript.com/)
to reprocess the file, outputting a ''plain
`eps` file.  (`Ghostscript`s distribution
includes a script `ps2epsi` which will regenerate the preview
if necessary.)  Users of the shareware program 
[`gsview`](http://www.ghostgum.com.au/)
will find buttons to perform the required transformation of the file
being displayed.

