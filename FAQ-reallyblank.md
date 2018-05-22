# Really blank pages between chapters

If you're using the standard classes, you need to take special action;
the [`memoir`](http://ctan.org/pkg/memoir) class and the [`Koma-Script`](http://ctan.org/pkg/Koma-Script) classes provide
their own support for this&nbsp;&mdash; see below. 

[`Book`](http://ctan.org/pkg/Book) (by default) and [`report`](http://ctan.org/pkg/report) (with `openright` class
option) ensure that each chapter starts on a right-hand (recto) page;
they do this by inserting a `\cleardoublepage` command between
chapters (rather than a mere `\clearpage`).  The empty page thus
created gets to have a normal running header, which some people don't
like.

The (excellent) [`fancyhdr`](http://ctan.org/pkg/fancyhdr) manual covers this issue, basically
advising the creation of a command `\clearemptydoublepage`:
```latex
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{%
  \clearpage
  {\pagestyle{empty}\origdoublepage}%
}
```
The ''obvious'' thing is then to use this command to replace
`\cleardoublepage` in a patched version of the `\chapter` command.
(Make a package of your own containing a copy 
of the command out of the class.)  This isn't particularly difficult,
but you can instead simply subvert `\cleardoublepage` (which isn't
often used elsewhere):
```latex
\let\cleardoublepage\clearemptydoublepage
```
Note: this command works because `\clearemptydoublepage` uses a copy
of `\cleardoublepage`: instructions on macro programming
[patching techniques](./FAQ-patch.html) explain the problem and
why this is a solution.

The [`emptypage`](http://ctan.org/pkg/emptypage) package does this sort of thing for you; all
you need do is load the package, and it does the rest.

The _KOMA-Script_ replacements for the
[`book`](http://ctan.org/pkg/book) and [`report`](http://ctan.org/pkg/report) classes ([`scrbook`](http://ctan.org/pkg/scrbook) and
[`scrreprt`](http://ctan.org/pkg/scrreprt) offers class options `cleardoubleempty`,
`cleardoubleplain` and `cleardoublestandard`
(using the running page style, as normal) that control the appearance
of these empty pages.  The classes also offer do-it-yourself commands
`\cleardoubleempty` (etc.).

The [`memoir`](http://ctan.org/pkg/memoir) class (and the [`nextpage`](http://ctan.org/pkg/nextpage) package)
provide commands `\cleartooddpage` and `\cleartoevenpage`,
which both take an optional argument (the first, with no argument,
being an equivalent of `\cleardoublepage`).  One can achieve
'special' effects by putting commands in the optional argument: the
`\clearemptydoublepage` we're after would be achieved by
`\cleartooddpage[``\thispagestyle{empty}``]`.  The
commands will also serve if you want the surreal effect of ''This page
intentionally left blank'' in the centre of an otherwise empty page.

