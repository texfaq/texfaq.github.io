# 1-column abstract in 2-column document

One often requires that the abstract of a paper should appear across
the entire page, even in a two-column paper.  The required trick is:
```latex
\documentclass[twocolumn]{article}
...
\begin{document}
... % \author, etc
\twocolumn[
  \begin{@twocolumnfalse}
    \maketitle
    \begin{abstract}
      ...
    \end{abstract}
  \end{@twocolumnfalse}
  ]
```
Unfortunately, with the above `\thanks` won't work in the
`\author` list.  If you need such specially-numbered footnotes, you
can make them like this:
```latex
\title{Demonstration}
\author{Me, You\thanks{}}
\twocolumn[
  ... as above ...
]
{
  \renewcommand{\thefootnote}%
    {\fnsymbol{footnote}}
  \footnotetext[1]{Thanks for nothing}
}
```
and so on.

As an alternative, among other facilities the [`abstract`](http://ctan.org/pkg/abstract) package 
provides a
`\saythanks` command and a `onecolabstract` environment
which remove the need to fiddle with the `\thanks` and
footnoting. They can be used like this:
```latex
\twocolumn[
  \maketitle             % full width title
  \begin{onecolabstract} % ditto abstract
    ... text
  \end{onecolabstract}
]
\saythanks            % typeset any \thanks
```
The [`memoir`](http://ctan.org/pkg/memoir) class offers all the facilities of [`abstract`](http://ctan.org/pkg/abstract).

