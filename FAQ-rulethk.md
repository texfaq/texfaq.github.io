# The thickness of rules in LaTeX tables

The rules in a LaTeX table are by default `0.4pt` thick;
this is in fact a default built in at the lowest level, and applies to
all rules (including those separating blocks of running text).

Sometimes, however, we look at a table and find we want the rules to
stand out&nbsp;&mdash; perhaps to separate the text from the rest of the body
text, or to make the sections of the table stand out from one another.
However, a quick review of any LaTeX manual will reveal no
technique for making any one rule stand out, and a little
experimentation shows that it is indeed pretty difficult to prevent
a change ''bleeding'' out to affect other rules in the same table.

If you look at what we have to say on the 
[design of tables](./FAQ-destable.html), elsewhere
among these FAQs, and you may sense that the design of LaTeX
simply skipped the issues surrounding table design: _that's_
presumably why there's no facilities to help you.

Specifically, the length `\arrayrulewidth` affects the thickness of
the rules (both horizontal and vertical) within both
`tabular` and `array` environments.  If you
change from the default (see above) only as far as
```latex
\setlength{\arrayrulewidth}{1pt}
```
the change is remarkably striking.  However, really quite subtle user
level programming proves incapable of changing just _one_ rule:
it's necessary to delve into the (rather tricky) code of `\hline`
and `\cline` themselves.

Fortunately, this job has already been done for the community: the
[`booktabs`](http://ctan.org/pkg/booktabs) package defines three different classes of rule
(`\toprule`, `\midrule` and `\bottomrule`), and the package
documentation offers hints on how to use them.  You are
_strongly_ advised to read the documentation pretty carefully.

The [`memoir`](http://ctan.org/pkg/memoir) class includes the [`booktabs`](http://ctan.org/pkg/booktabs) package, and
repeats the documentation in its compendious manual.

Note that none of the above mentions the issue of the weight of
vertical rules (except in passing).  For the reasons, see the
documentation of the [`booktabs`](http://ctan.org/pkg/booktabs) package (again); vertical
rules in tables are in any case even more trickily coded than are
horizontal rules, and if their lack of configurability makes them
still less attractive, so much the better for the design of your
document.

