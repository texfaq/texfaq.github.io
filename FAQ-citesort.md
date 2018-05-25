---
title: Sorting and compressing citations
category: bibliographies
tags: citations
permalink: /FAQ-citesort
date: 2014-06-10
---

# Sorting and compressing citations

If you give LaTeX
`\cite{fred,joe,harry,min}`, its default commands could give
something like ''[2,6,4,3]'';
this looks awful.  One can of course get the things in order by
rearranging the keys in the `\cite` command, but who wants to do
that sort of thing for no more improvement than ''[2,3,4,6]''?

The [`cite`](https://ctan.org/pkg/cite) package sorts the numbers and detects consecutive
sequences, so creating ''[2&ndash;4,6]''.  The [`natbib`](https://ctan.org/pkg/natbib) package,
with the `numbers` and `sor & ompress` options, will
do the same when working with its own numeric bibliography styles
(`plainnat.bst` and `unsrtnat.bst`).

The package [`biblatex`](https://ctan.org/pkg/biblatex) has a built-in style
[`numeric-comp`](https://ctan.org/pkg/biblatex) for its bibliographies.

