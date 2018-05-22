# Why does LaTeX split footnotes across pages?

LaTeX splits footnotes when it can think of nothing better to do.
Typically, when this happens, the footnote mark is at the bottom of
the page, and the complete footnote would overfill the page.  LaTeX
could try to salvage this problem by making the page short of both the
footnote and the line with the footnote mark, but its priorities told
it that splitting the footnote would be preferable.

As always, the best solution is to change your text so that the
problem doesn't occur in the first place.  Consider whether the text
that bears the footnote could move earlier in the current page, or on
to the next page.

If this isn't possible, you might want to change LaTeX's perception
of its priorities: they're controlled by
`\interfootnotelinepenalty`&nbsp;&mdash; the larger it is, the less willing
LaTeX is to split footnotes.

Setting
```latex
\interfootnotelinepenalty=10000
```
inhibits split footnotes altogether, which will cause `Underfull`
`\vbox` messages unless you also specify `\raggedbottom`.  The
default value of the penalty is `100`, which is rather mild.

An alternative technique is to juggle with the actual size of the
pages.  `\enlargethispage` changes the size of the current page by
its argument (for example, you might say
`\enlargethispage{`\baselineskip`}` to add a single line
to the page, but you can use any ordinary TeX length such as
`15mm` or `-20pt` as argument).  Reducing the size of
the current page could force the offending text to the next page;
increasing the size of the page may allow the footnote to be included
in its entirety.  It may be necessary to change the size of more than
one page.

The [`fnbreak`](http://ctan.org/pkg/fnbreak) package detects (and generates warnings about)
split footnotes.

