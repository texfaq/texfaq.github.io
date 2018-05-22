# Typesetting things in landscape orientation

It's often necessary to typeset part of a document in landscape
orientation; to achieve this, one needs not only to change the page
dimensions, but also to instruct the output device to print the
strange page differently.

There are two ''ordinary'' mechanisms for doing two slight variations
of landscape typesetting:
  

-  If you have a single floating object that is wider than it is
    deep, and will only fit on the page in landscape orientation, use
    the [`rotating`](http://ctan.org/pkg/rotating) package; this defines
    `sidewaysfigure` and `sidewaystable`
    environments which create floats that occupy a whole page.
  

    Note that [`rotating`](http://ctan.org/pkg/rotating) has problems in a document that also
    loads the [`float`](http://ctan.org/pkg/float) package, which recommended in other
    answers in these FAQs, for example that on
    [float placement](./FAQ-floats.html).  The [`rotfloat`](http://ctan.org/pkg/rotfloat) package
    loads [`rotating`](http://ctan.org/pkg/rotating) for you, and smooths the interaction with
    [`float`](http://ctan.org/pkg/float).
-  If you have a long sequence of things that need to be typeset in
    landscape (perhaps a code listing, a wide `tabbing`
    environment, or a huge table typeset using [`longtable`](http://ctan.org/pkg/longtable) or
    [`supertabular`](http://ctan.org/pkg/supertabular)), use the [`lscape`](http://ctan.org/pkg/lscape) package (or
    [`pdflscape`](http://ctan.org/pkg/pdflscape) if you're generating PDF output, whether
    using PDFLaTeX or `dvips` and generating PDF from
    that).  Both packages define an environment `landscape`, which
    clears the current page and restarts typesetting in landscape
    orientation (and clears the page at the end of the environment
    before returning to portrait orientation).

No currently available package makes direct provision for typesetting
in both portrait and landscape orientation on the same page (it's not
the sort of thing that TeX is well set-up to do).  If such
behaviour was an absolute necessity, one might use the techniques
described in
["flowing text around figures"](./FAQ-textflow.html), and would
rotate the landscape portion using the rotation facilities of the
[`graphics`](http://ctan.org/pkg/graphics) package.  (Returning from landscape to portrait
orientation would be somewhat easier: the portrait part of the page
would be a bottom float at the end of the landscape section, with its
content rotated.)

To set an entire document in landscape orientation, one might use
[`lscape`](http://ctan.org/pkg/lscape) around the whole document.  A better option is the
`landscape` option of the [`geometry`](http://ctan.org/pkg/geometry) package; if you
also give it `dvips` or `pdftex` option,
[`geometry`](http://ctan.org/pkg/geometry) also emits the rotation instructions to cause the
output to be properly oriented.  The [`memoir`](http://ctan.org/pkg/memoir) class has the same
facilities, in this respect, as does [`geometry`](http://ctan.org/pkg/geometry).

A word of warning: most current TeX previewers do not honour
rotation requests in DVI files.
Your best bet is to convert your output to PostScript or to PDF, and
to view these 'final' forms with an appropriate viewer.

