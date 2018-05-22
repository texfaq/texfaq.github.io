# Not resetting footnote numbers per chapter




Some classes (for example, [`book`](http://ctan.org/pkg/book) and [`report`](http://ctan.org/pkg/report)) set up a
different set of footnotes per chapter, by resetting the footnote
number at the start of the chapter.  This is essentially the same
action as that of 
[equation, figure and table numbers](./FAQ-running-nos.html),
except that footnote numbers don't get ''decorated'' with the chapter
number, as happens with those other numbers.


The solution is the same: use the [`chngcntr`](http://ctan.org/pkg/chngcntr) package; since the
numbers aren't ''decorated'' you can use the `\counterwithout*`
variant; the code:
```latex
\counterwithout*{footnote}{chapter}
```
is all you need






