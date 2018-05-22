# Why are my sections numbered 0.1 &hellip;?

This happens when your document is using the standard [`book`](http://ctan.org/pkg/book) or
[`report`](http://ctan.org/pkg/report) class (or one similar), and you've got a `\section`
before your first `\chapter`.

What happens is, that the class numbers sections as 
''&lsaquo;_chapter no_&rsaquo;.&lsaquo;_section no_&rsaquo;'', and until the first
`\chapter` has appeared, the chapter number is 0.  (If you
use`\chapter*`, which doesn't number the chapter it produces, the
problem still arises.)

If you're doing this, it's possible that the [`article`](http://ctan.org/pkg/article) class
is for you; try it and see.  Otherwise, put a `\chapter` before
your sections, or do away with section numbering by using
`\section*` instead.  An alternative way of avoiding numbering is
discussed in 
''[unnumbered sections in the table of contents](./FAQ-secnumdep.html)''.

