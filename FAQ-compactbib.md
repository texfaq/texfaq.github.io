# Reducing spacing in the bibliography

Bibliographies are, in fact, implemented as lists, so all the
confusion about [reducing list item spacing](./FAQ-complist.html) also
applies to bibliographies.

If the [`natbib`](http://ctan.org/pkg/natbib) package 'works' for you (it may not if you are using
some special-purpose bibliography style), the solution is relatively
simple&nbsp;&mdash; add
```latex
\usepackage{natbib}
\setlength{\bibsep}{0.0pt}
```
to the preamble of your document.

The [`compactbib`](http://ctan.org/pkg/compactbib) package has a similar effect.  Its primary
purpose is to produce two bibliographies, and it seems to preclude use
of BibTeX (though the package documentation, in the package file
itself, isn't particularly clear).

Otherwise, one is into unseemly hacking of something or other.  The
[`mdwlist`](http://ctan.org/pkg/mdwlist) package actually does the job, but it doesn't work
here, because it makes a different-named list, while the name
`thebibliography` is built into LaTeX and
BibTeX.  Therefore, we need to 
[patch the underlying macro](./FAQ-patch.html):
```latex
\let\oldbibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
  \oldbibliography{#1}%
  \setlength{\itemsep}{0pt}%
}
```
The [`savetrees`](http://ctan.org/pkg/savetrees) package performs such a patch, among a
plethora of space-saving measures: you can, in principle, suppress all
its other actions, and have it provide you a compressed bibliography
_only_.

