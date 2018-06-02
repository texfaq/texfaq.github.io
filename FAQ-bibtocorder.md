---
title: Table of contents rearranges ''`unsrt`'' ordering
category: bibliographies
tags: citations
permalink: /FAQ-bibtocorder
date: 2014-06-10
---

If you're using the [`unsrt`](https://ctan.org/pkg/bibtex) bibliography style, you're
expecting that your bibliography will _not_ be sorted, but that
the entries will appear in the order that they first appeared in your
document.

However, if you're unfortunate enough to need a citation in a section
title, and you also have a table of contents, the citations that now
appear in the table of contents will upset the ''natural'' ordering
produced by the [`unsrt`](https://ctan.org/pkg/bibtex) style.  Similarly, if you have
citations in captions, and have a list of figures (or tables).

There's a pretty simple ''manual'' method for dealing with the
problem&nbsp;&mdash; when you have the document stable:
  

1.  Delete the `aux` file, and any of `toc`,
    `lof`, `lot` files.
2.  Run LaTeX.
3.  Run BibTeX for the last time.
4.  Run LaTeX often enough that things are stable again.

Which is indeed simple, but it's going to get tedious when you've
found errors in your ''stable'' version, often enough.

The package [`notoccite`](https://ctan.org/pkg/notoccite) avoids the kerfuffle, and suppresses
citations while in the table of contents, or lists of figures, tables
(or other floating things: the code is quite general).

