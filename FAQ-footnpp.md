# Footnotes numbered ''per page''

The obvious solution is to make the footnote number reset whenever the
page number is stepped, using the 
[LaTeX internal mechanism](./FAQ-addtoreset.html).  Sadly, the place
in the document where the page number is stepped is unpredictable, not
(''tidily'') at the end of the printed page; so changing the footnote
number only ever works by 'luck'.

As a result, resetting footnotes is inevitably a complicated process,
using labels of some sort.  It's nevertheless important, given the
common requirement for footnotes marked by symbols (with painfully
small symbol sets).  There are four packages that manage it, one way
or another.

The [`perpage`](http://ctan.org/pkg/perpage) and [`zref-perpage`](http://ctan.org/pkg/zref-perpage) packages provide a
general mechanism for resetting counters per page, so can obviously be
used for this task.  The interface is pretty simple:
`\MakePerPage{footnote}` (in [`perpage`](http://ctan.org/pkg/perpage)) or
`\zmakeperpage{footnote}` (in [`zref-perpage`](http://ctan.org/pkg/zref-perpage)).  If
you want to restart the counter at something other than&nbsp;1 (for example
to avoid something in the LaTeX footnote symbol list), you can use:
`\MakePerPage[2]{footnote}` (in [`perpage`](http://ctan.org/pkg/perpage)) or
`\zmakeperpage[2]{footnote}` (in [`zref-perpage`](http://ctan.org/pkg/zref-perpage)).
Note that you can also load [`zref-perpage`](http://ctan.org/pkg/zref-perpage) 

[`Perpage`](http://ctan.org/pkg/Perpage) is a compact and efficient package;
[`zref-perpage`](http://ctan.org/pkg/zref-perpage), being a [`zref`](http://ctan.org/pkg/zref) ''module'', comes with
[`zref`](http://ctan.org/pkg/zref)'s general mechanism for extending the the
`\label`&mdash;`\[page]ref` of LaTeX, which can offer many other
useful facilities.

The [`footmisc`](http://ctan.org/pkg/footmisc) package provides a variety of means of
controlling footnote appearance, among them a package option
`perpage` that adjusts the numbering per page; if you're
doing something else odd about footnotes, it means you may only need
the one package to achieve your ends.

The [`footnpag`](http://ctan.org/pkg/footnpag) package also does per-page footnotes (and
nothing else).  With the competition from [`perpage`](http://ctan.org/pkg/perpage), it's
probably not particularly useful any more.

