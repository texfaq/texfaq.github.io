# Maths symbols don't scale up

By default, the ''large'' maths symbols stay at the same size
regardless of the font size of the text of the document.  There's good
reason for this: the `cmex` fonts aren't really designed to
scale, so that TeX's maths placement algorithms don't perform as
well as they might when the fonts are scaled.

However, this behaviour confounds user expectations, and can lead to
slightly odd-looking documents.  If you want the fonts to scale,
despite the warning above, use the [`exscale`](http://ctan.org/pkg/exscale) package&nbsp;&mdash; just
loading it is enough.

