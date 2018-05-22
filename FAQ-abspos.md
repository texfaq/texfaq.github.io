# Putting things at fixed positions on the page

TeX's model of the world is (broadly speaking) that the author
writes text, and TeX and its macros decide how it all fits on the
page.  This is not good news for the author who has, from whatever
source, a requirement that certain things go in exactly the right
place on the page.

There _are_ places on the page, from which things may be hung,
and two LaTeX packages allow you position things relative to such
points, thus providing a means of absolute positioning.

The [`textpos`](http://ctan.org/pkg/textpos) package aids the construction of pages from
''blobs'', dotted around over the page (as in a poster); you give it
the location, and it places your typeset box accordingly.

The [`eso-pic`](http://ctan.org/pkg/eso-pic) defines a ''shipout picture'' that covers the
page.  The user may add `picture`-mode commands to this
picture, which of course can include box placements as well as the
other rather stilted commands of `picture`-mode.
([`Eso-pic`](http://ctan.org/pkg/Eso-pic) requires the services of [`everyshi`](http://ctan.org/pkg/everyshi), which
must therefore also be available.)

