# The size of printed output

The final product of a (La)TeX run is something for a person to
read.  Often, nowadays, that product will be read ''on-screen'', but
the printed page remains a principal output form.

When we come to print our output, it is important that the output fits
on the paper; in some cases, for the output to ''fit'' is good enough.
However, there are circumstances where the actual size of the printed
output, on the page, is crucial to the acceptance of the output.
(This might happen when the output is a book to be published, or when
it's a dissertation which must match the fancies of some bureaucrat
even to be considered.)

Sadly, we often find that the printed output doesn't conform to our
expectations&hellip;

The check-list for such problems has two entries:
  

-  Your output is generated via Adobe `Reader` (or
    possibly `Acrobat Reader`&nbsp;&mdash; older versions of the
    program had the qualified name).  In this case, it may be that
    `Reader` is willfully changing the size of your output:
    read [`Reader` antics](./FAQ-acroantics.html).
-  Something in your TeX system is producing the wrong size (or
    shape) of output: read [paper geometry](./FAQ-papergeom.html).

An alternative approach is to use the (excellent) [`testflow`](http://ctan.org/pkg/testflow)
suite, that provides a detailed outline of the potential problems
together with a sample document and prototype outputs.

