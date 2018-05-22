# I asked for ''empty'', but the page is numbered

If you use `\pagestyle{empty}` and you find some pages are
numbered anyway, you are probably encountering one of the style
decisions built into the standard LaTeX classes: that certain
special pages should always appear with `\pagestyle{plain}`,
with a page number at the centre of the page foot.  The special pages
in question are those (in [`article`](http://ctan.org/pkg/article) class) containing a
`\maketitle`, or (in [`book`](http://ctan.org/pkg/book) and [`report`](http://ctan.org/pkg/report) classes)
`\chapter` or `\part` commands.

The simple solution is to reissue the page style _after_ the
command, with effect for a single page, as, for example (in
[`article`](http://ctan.org/pkg/article)):
```latex
\maketitle
\thispagestyle{empty}
```
or (in [`book`](http://ctan.org/pkg/book) or [`report`](http://ctan.org/pkg/report))
```latex
\chapter{foo bar}
\thispagestyle{empty}
```
A similar technique doesn't work for a [`book`](http://ctan.org/pkg/book) or [`report`](http://ctan.org/pkg/report)
`\part` command pages.  For that, and for other detail, take look
at ''[getting rid of page numbers](./FAQ-nopageno.html)''.

