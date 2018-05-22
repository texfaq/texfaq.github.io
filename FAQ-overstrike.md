# Overstriking characters

This may be used, for example, to indicate text deleted in the course
of editing.  Both the [`ulem`](http://ctan.org/pkg/ulem) and the [`soul`](http://ctan.org/pkg/soul) packages
provide the necessary facilities.

Overstriking with an ''attached'' comment may be achieved using the
[`pdfcomment`](http://ctan.org/pkg/pdfcomment) package, to which you can give optional arguments
with all sorts of detail.  The comment text is encoded using an Adobe
'annotation'; unfortunately, support for these annotations is not a
common feature of PDF viewers, but if you can safely assume
that your audience will use `Acrobat Reader`, the facility
provides that extra ''shine'' that business users so love.

Overstriking for 
[cancellation in maths expressions](./FAQ-cancellation.html) is achieved
by a different mechanism.

Documentation of [`ulem`](http://ctan.org/pkg/ulem) is in the package file.

