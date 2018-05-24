---
section: Macro programming
subsection: LaTeX macro programming
permalink: /FAQ-latexqual.html
date: 2014-06-10
---

# The quality of your LaTeX

The [`l2tabu`](https://ctan.org/pkg/l2tabu) tutorial (mentioned in 
[online introductions](FAQ-man-latex.md)) is undoubtedly a
good read.

However, it's always difficult to remember the things you should
_not_ do, when there are so many things to remember that you
really must do: some automation is useful&hellip;.

The nicely-named [`nag`](https://ctan.org/pkg/nag) allows you to apply a configurable set
of checks to your document, as you run it through LaTeX; you get
messages like:
```latex
Package nag Warning: Command \bf is an old LaTeX 2.09 command. 
(nag)                Use \bfseries or \textbf instead on input line 30.
```
  (the package provides a demo file which contains most of the sorts
  of errors you might make&nbsp;&mdash; the example is one of them).
While [`l2tabu`](https://ctan.org/pkg/l2tabu) and [`nag`](https://ctan.org/pkg/nag) alert you to _possible_
programming errors, you should not forget that they are merely
commenting on _style_; don't assume that a [`nag`](https://ctan.org/pkg/nag) error is
going to damn your code&nbsp;&mdash; rather, note the issue and try to train
your fingers not to do the same ''next time''.

The `lacheck` program analyses your source and comments on
it; its view of what is ''bad'' is _very_ subjective (the
documentation says), but it can be useful.

There's also a web site
[TeXidate](http://www.kohm.name/markus/texidate.html)
which will do a static analysis of your document (unfortunately, you
have to paste your document source into a text window).  The site
doesn't seem as comprehensive as [`nag`](https://ctan.org/pkg/nag), but it allows you to
download its script, which you can then juggle with to make it more
draconian.
  language that is convenient for you

