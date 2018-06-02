---
title: Choosing a bibliography style
category: bibliographies
tags: citations
permalink: /FAQ-whatbst
date: 2014-06-10
---

A large proportion of people are satisfied with one of Patashnik's
original ''standard'' styles, [`plain`](https://ctan.org/pkg/bibtex), [`unsrt`](https://ctan.org/pkg/bibtex),
[`abbrv`](https://ctan.org/pkg/bibtex) and [`alpha`](https://ctan.org/pkg/bibtex).  However, no style in that set
supports the ''author-date'' citation style that is popular in many
fields; but there are a very large number of contributed styles
available, that _do_ support the format.

(Note that author-date styles arose because the simple and clear
citation style that [`plain`](https://ctan.org/pkg/bibtex) produces is so awkward in a
traditional manuscript preparation scenario.  However, TeX-based
document production does away with all those difficulties, leaving us
free once again to use the simple option.)

Fortunately, help is at hand, on the Web, with this problem:
  

-  a sample text, showing the sorts of style choices available, can
    be found on 
    [Ken Turner's web site](http://www.cs.stir.ac.uk/~kjt/software/latex/showbst.html);
-  an excellent survey, that lists a huge variety of styles,
    sorted into their nominal topics as well as providing a good range
    of examples, is the Reed College 
    ''[Choosing a BibTeX style](http://web.reed.edu/cis/help/LaTeX/bibtexstyles.html)''.

Of course, these pages don't cover everything; the problem the
inquisitive user faces, in fact, is to find what the various available
styles actually do.  This is best achieved (if the links above don't
help) by using [`xampl.bib`](https://ctan.org/pkg/bibtex) from the BibTeX documentation
distribution: one can get a pretty good feel for any style one has to
hand using this ''standard'' bibliography.  For style
`my-style.bst`, the simple LaTeX document:
```latex
\documentclass{article}
\begin{document}
\bibliographystyle{my-style}
\nocite{*}
\bibliography{xampl}
\end{document}
```
will produce a representative sample of the citations the style will
produce.  (Because [`xampl.bib`](https://ctan.org/pkg/bibtex) is so extreme in some of its
''examples'', the BibTeX run will also give you an interesting
selection of BibTeX's error messages&hellip;)

