---
section: Adjusting the typesetting
subsection: Typesetting specialities
permalink: /FAQ-overstrike
date: 2014-06-10
---

# Overstriking characters

This may be used, for example, to indicate text deleted in the course
of editing.  Both the [`ulem`](https://ctan.org/pkg/ulem) and the [`soul`](https://ctan.org/pkg/soul) packages
provide the necessary facilities.

Overstriking with an ''attached'' comment may be achieved using the
[`pdfcomment`](https://ctan.org/pkg/pdfcomment) package, to which you can give optional arguments
with all sorts of detail.  The comment text is encoded using an Adobe
''annotation''; unfortunately, support for these annotations is not a
common feature of PDF viewers, but if you can safely assume
that your audience will use `Acrobat Reader`, the facility
provides that extra ''shine'' that business users so love.

Overstriking for 
[cancellation in maths expressions](/FAQ-cancellation) is achieved
by a different mechanism.

Documentation of [`ulem`](https://ctan.org/pkg/ulem) is in the package file.

