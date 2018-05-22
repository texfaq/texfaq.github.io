# Appendixes

LaTeX provides an exceedingly simple mechanism for appendixes: the
command `\appendix` switches the document from generating sections
(in [`article`](http://ctan.org/pkg/article) class) or chapters (in [`report`](http://ctan.org/pkg/report) or
[`book`](http://ctan.org/pkg/book) classes) to producing appendixes.  Section or chapter
numbering is restarted and the representation of the counter switches
to alphabetic.  So:
```latex
\section{My inspiration}
...

\section{Developing the inspiration}
...

\appendix
\section{How I became inspired}
...
```
would be typeset (in an [`article`](http://ctan.org/pkg/article) document) something like:
*1&nbsp;&nbsp;My inspiration*

&hellip;

*2&nbsp;&nbsp;Developing the inspiration*

&hellip;

*A&nbsp;&nbsp;How I became inspired*

&hellip;
which is quite enough for many ordinary purposes.  Note that, once
you've switched to typesetting appendixes, LaTeX provides you with
no way back&nbsp;&mdash; once you've had an appendix, you can no longer have an
''ordinary'' `\section` or `\chapter`.

The [`appendix`](http://ctan.org/pkg/appendix) provides several ways of elaborating on this
simple setup.  Straightforward use of the package allows you to have a
separate heading, both in the body of the document and the table of
contents; this would be achieved by
```latex
\usepackage{appendix}
...
\appendix
\appendixpage
\addappheadtotoc
```
The `\appendixpage` command adds a separate title ''Appendices''
above the first appendix, and `\addappheadtotoc` adds a similar
title to the table of contents.  These simple modifications cover many
people's needs about appendixes.

The package also provides an `appendices` environment,
which provides for fancier use.  The environment is best controlled by
package options; the above example would be achieved by
```latex
\usepackage[toc,page]{appendix}
...
\begin{appendices}
...
\end{appendices}
```
The great thing that the `appendices` environment gives
you, is that once the environment ends, you can carry on with sections
or chapters as before&nbsp;&mdash; numbering isn't affected by the intervening
appendixes.

The package provides another alternative way of setting appendixes, as
inferior divisions in the document.  The `subappendices`
environment allows you to put separate appendixes for a particular
section, coded as `\subsection`s, or for a particular chapter, coded
as `\section`s.  So one might write:
```latex
\usepackage{appendix}
...
\section{My inspiration}
...
\begin{subappendices}
\subsection{How I became inspired}
...
\end{subappendices}

\section{Developing the inspiration}
...
```
Which will produce output something like:
*1&nbsp;&nbsp;My inspiration*

&hellip;

*1.A&nbsp;&nbsp;How I became inspired*

&hellip;

*2&nbsp;&nbsp;Developing the inspiration*

&hellip;

There are many other merry things one may do with the package; the
user is referred to the package documentation for further details.

The [`memoir`](http://ctan.org/pkg/memoir) class includes the facilities of the
[`appendix`](http://ctan.org/pkg/appendix) package.  The [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes offer a
`\appendixprefix` command for manipulating the appearance of appendixes.

