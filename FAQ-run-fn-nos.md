---
title: Not resetting footnote numbers per chapter
category: usage
permalink: /FAQ-run-fn-nos
date: 2014-06-10
---

# Not resetting footnote numbers per chapter

Some classes (for example, [`book`](https://ctan.org/pkg/book) and [`report`](https://ctan.org/pkg/report)) set up a
different set of footnotes per chapter, by resetting the footnote
number at the start of the chapter.  This is essentially the same
action as that of 
[equation, figure and table numbers](/FAQ-running-nos),
except that footnote numbers don't get ''decorated'' with the chapter
number, as happens with those other numbers.

The solution is the same: use the [`chngcntr`](https://ctan.org/pkg/chngcntr) package; since the
numbers aren't ''decorated'' you can use the `\counterwithout*`
variant; the code:
```latex
\counterwithout*{footnote}{chapter}
```
is all you need

