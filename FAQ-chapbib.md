# Separate bibliographies per chapter?

A separate bibliography for each 'chapter' of a document can be provided
with the package [`chapterbib`](http://ctan.org/pkg/chapterbib) (which comes with a bunch of
other good bibliographic things).  The package allows you a
different bibliography for each `\include`d file (i.e., despite the
package's name, the availability of bibliographies is related to the
component source files of the document rather than to the chapters that
logically structure the document).

The package [`bibunits`](http://ctan.org/pkg/bibunits) ties bibliographies to logical units
within the document: the package will deal with chapters and sections
(as defined by LaTeX itself) and also defines a `bibunit`
environment so that users can select their own structuring.

[The [`biblatex`](http://ctan.org/pkg/biblatex) package](./FAQ-biblatex.html), with
`biber`, provides a similar facility; enclose the text for
which you want a local bibliography in a `refsection`
environment, and place a `\printbibliography` command as the last
thing in that environment:
```latex
\begin{refsection}
\chapter{First chapter}
\section{Foo}
Some text \cite{this}
with citations \cite{that}.
\printbibliography
\end{refsection}
```
Then process with LaTeX (of whatever flavour) and use
`biber` to process the bibliography output.  Note that
`\printbibliography` can take an optional argument
`heading=bib title` to provide the bibliography with a
(sub)section title.

