---
title: LaTeX internal "abbreviations", etc.
category: programming
tags: macros latex
permalink: /FAQ-ltxabbrv
---

In the deeps of time, when TeX first happened, computers had
extremely limited memory, and were (by today's standards) painfully
slow.  When LaTeX came along, things weren't much better, and even
when LaTeX2e appeared, there was a strong imperative to save memory
space (and to a lesser extent) CPU time.

From the very earliest days, Knuth used shortcut macros to speed
things up.  LaTeX, over the years, has extended Knuth's list by a
substantial amount.  An interesting feature  of the "abbreviations" is
that on paper, they may look longer than the thing they stand for;
however, to (La)TeX they _feel_ smaller&hellip;

The table at the end of this answer lists the commonest of these
"abbreviations".  It is not complete; as always, if the table
doesn't help, try the LaTeX source.  The table lists each
abbreviation's _name_ and its _value_, which provide most of
what a user needs to know.  The table also lists the abbreviation's
_type_, which is a trickier concept: if you need to know, the
only real confusion is that the abbreviations labelled "defn" are
defined using an `_xxxx_def` command.


 | Name      |  Type  |  Value  |
 | --------- | ------ | -------- |
 | `\m@ne`   |  count |  -1  |
 | `\p@`     |  dimen |  1pt  |
 | `\z@`     |  dimen |  0pt  |
 | `\z@skip` |  skip  |  0pt plus 0pt minus 0pt |
 | `\@ne`    |  defn  |  1  |
 | `\tw@`    |  defn  |  2 |
 | `\thr@@`  |  defn  |  3  |
 | `\sixt@@n`|  defn  |  16  |
 | `\@cclv`  |  defn  |  255  |
 | `\@cclvi` |  defn  |  256  |
 | `\@m`     |  defn  |  1000  |
 | `\@M`     |  defn  |  10000  |
 | `\@MM`    |  defn  |  20000  |
 | `\@vpt`   |  macro |  5  |
 | `\@vipt`  |  macro |  6  |
 | `\@viipt` |  macro |  7  |
 | `\@viiipt`|  macro |  8  |
 | `\@ixpt`  |  macro |  9  |
 | `\@xpt`   |  macro |  10  |
 | `\@xipt`  |  macro |  10.95 |
 | `\@xiipt` |  macro |  12  |
 | `\@xivpt` |  macro |  14.4  |
 | `\@xviipt`|  macro |  17.28  |
 | `\@xxpt`  |  macro |  20.74  |
 | `\@xxvpt` |  macro |  24.88  |
 | `\@plus`  |  macro |  `plus`  |
 | `\@minus` |  macro |  `minus`  |


