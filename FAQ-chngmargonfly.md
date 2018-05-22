# Changing margins ''on the fly''

One of the surprises characteristic of TeX use is that you cannot
change the width or height of the text within the document, simply by
modifying the text size parameters; TeX can't change the text width
on the fly, and LaTeX only ever looks at text height when starting
a new page.

So the simple rule is that the parameters should only be
changed in the preamble of the document, i.e., before the
`\begin{document}` statement (so before any typesetting has
happened.

To adjust text width within a document we define an environment:
```latex
\newenvironment{changemargin}[2]{%
  \begin{list}{}{%
    \setlength{\topsep}{0pt}%
    \setlength{\leftmargin}{#1}%
    \setlength{\rightmargin}{#2}%
    \setlength{\listparindent}{\parindent}%
    \setlength{\itemindent}{\parindent}%
    \setlength{\parsep}{\parskip}%
  }%
  \item[]}{\end{list}}
```
The environment takes two arguments, and will indent the left and
right margins, respectively, by the parameters' values. Negative
values will cause the margins to be narrowed, so
`\begin{changemargin}{-1cm}{-1cm}` narrows the left and right
margins by 1 centimetre.

Given that TeX can't do this, how does it work?&nbsp;&mdash; well, the
environment (which is a close relation of the LaTeX
`quote` environment) _doesn't_ change the text width
as far as TeX is concerned: it merely moves text around inside the
width that TeX believes in.

The [`changepage`](http://ctan.org/pkg/changepage) package provides ready-built commands to do
the above; it includes provision for changing the shifts applied to
your text according to whether you're on an odd (_recto_) or an
even (_verso_) page of a two-sided document.
[`Changepage`](http://ctan.org/pkg/Changepage)'s structure matches that of the [`memoir`](http://ctan.org/pkg/memoir)
class.

The (earlier) package [`chngpage`](http://ctan.org/pkg/chngpage) provides the same facilities,
but it uses rather different syntax.  [`Changepage`](http://ctan.org/pkg/Changepage)'s structure
matches that of the [`memoir`](http://ctan.org/pkg/memoir) class, and it should be used for
any new work.

Changing the vertical dimensions of a page is more clumsy still: the
LaTeX command `\enlargethispage` adjusts the size of the current
page by the size of its argument.  Common uses are
```latex
\enlargethispage{\baselineskip}
```
to make the page one line longer, or
```latex
\enlargethispage{-\baselineskip}
```
to make the page one line shorter.  The process is (to an extent)
simplified by the [`addlines`](http://ctan.org/pkg/addlines) package: its `\addlines`
command takes as argument the _number_ of lines to add to the
page (rather than a length): the package documentation also provides a
useful analysis of when the command may (or may not) be expected to
work.

