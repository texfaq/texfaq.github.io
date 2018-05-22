# Page numbering by chapter

When I was a young man, a common arrangement for loose bound technical
manuals is to number pages by chapter.  (It's quite a good scheme, in
those situations: even if your corrections add a whole page to the
chapter, the most you have to redistribute is that chapter.)

The problem, at first sight, seems pretty much the same as that in
another answer on
[running numbers within a chapter](./FAQ-running-nos.html),
and the basic technique is indeed pretty similar.

However, tidying-up loose ends, making sure the page number gets reset
to the correct value at the start of each chapter, and so on, is
slightly more challenging.  This is why the [`chappg`](http://ctan.org/pkg/chappg) package
was written: it does the obvious things, and more.

Users have been known to ask for running page numbers within a
section, but this really doesn't make sense: you need to run page
numbers within document objects that always start on a fresh page.

