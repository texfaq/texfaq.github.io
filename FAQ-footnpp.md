---
title: Footnotes numbered "per page"
category: usage
tags: footnotes
permalink: /FAQ-footnpp
---

The obvious solution is to make the footnote number reset whenever the
page number is stepped, using the 
[LaTeX internal mechanism](FAQ-addtoreset).  Sadly, the place
in the document where the page number is stepped is unpredictable, not
("tidily") at the end of the printed page; so changing the footnote
number only ever works by "luck".

As a result, resetting footnotes is inevitably a complicated process,
using labels of some sort.  It's nevertheless important, given the
common requirement for footnotes marked by symbols (with painfully
small symbol sets).  There are four packages that manage it, one way
or another.

The [`perpage`](https://ctan.org/pkg/perpage) and [`zref-perpage`](https://ctan.org/pkg/zref) packages provide a
general mechanism for resetting counters per page, so can obviously be
used for this task.  The interface is pretty simple:
`\MakePerPage{footnote}` (in [`perpage`](https://ctan.org/pkg/perpage)) or
`\zmakeperpage{footnote}` (in [`zref-perpage`](https://ctan.org/pkg/zref)).  If
you want to restart the counter at something other than&nbsp;1 (for example
to avoid something in the LaTeX footnote symbol list), you can use:
`\MakePerPage[2]{footnote}` (in [`perpage`](https://ctan.org/pkg/perpage)) or
`\zmakeperpage[2]{footnote}` (in [`zref-perpage`](https://ctan.org/pkg/zref)).
Note that you can also load [`zref-perpage`](https://ctan.org/pkg/zref) 

[`Perpage`](https://ctan.org/pkg/Perpage) is a compact and efficient package;
[`zref-perpage`](https://ctan.org/pkg/zref), being a [`zref`](https://ctan.org/pkg/zref) "module", comes with
[`zref`](https://ctan.org/pkg/zref)'s general mechanism for extending the the
`\label`&mdash;`\[page]ref` of LaTeX, which can offer many other
useful facilities.

The [`footmisc`](https://ctan.org/pkg/footmisc) package provides a variety of means of
controlling footnote appearance, among them a package option
`perpage` that adjusts the numbering per page; if you're
doing something else odd about footnotes, it means you may only need
the one package to achieve your ends.

The [`footnpag`](https://ctan.org/pkg/footnpag) package also does per-page footnotes (and
nothing else).  With the competition from [`perpage`](https://ctan.org/pkg/perpage), it's
probably not particularly useful any more.


The [`bidi'](https://ctan.org/pkg/bidi) package (from version 34.4) has an option `perpagefootnote` that
allows you to reset any counter per page from a given integer (not just 0)
and declares the footnote counter to be reset to 0 on each page.