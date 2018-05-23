---
section: Adjusting the typesetting
subsection: Document structure
revised: 2014-06-10
---
# Page numbering ''&lsaquo;_n_&rsaquo; of &lsaquo;_m_&rsaquo;''

Finding the page number of the last page of a document, from within
the document, is somewhat tricky.  The [`lastpage`](https://ctan.org/pkg/lastpage) and
[`zref-lastpage`](https://ctan.org/pkg/zref-lastpage) packages define a label
`LastPage` whose number is _right_ (after sufficiently many
passes through LaTeX, of course).  The [`memoir`](https://ctan.org/pkg/memoir) class also
defines a ''last page'' label.

The documentation of the [`fancyhdr`](https://ctan.org/pkg/fancyhdr) package spells out exactly
how one might actually use this information to produce page numbering
as suggested in the question.

