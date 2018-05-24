---
title:  Zero paragraph indent
section: Adjusting the typesetting
subsection: Typesetting specialities
date: 2014-06-10
---

The conventional way of typesetting running text has no separation
between paragraphs, and the first line of each paragraph in a block of
text indented.

In contrast, one common convention for typewritten text was to have no
indentation of paragraphs; such a style is often required for
''brutalist'' publications such as technical manuals, and in styles
that hanker after typewritten manuscripts, such as
officially-specified dissertation formats.

Anyone can see, after no more than a moment's thought, that if the
paragraph indent is zero, the paragraphs must be separated by blank
space: otherwise it is sometimes going to be impossible to see the
breaks between paragraphs.

The simple-minded approach to zero paragraph indentation is thus:
```latex
\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}
```
and in the very simplest text, it's a fine solution.

However, the non-zero `\parskip` interferes with lists and the like,
and the result looks pretty awful.  The [`parskip`](https://ctan.org/pkg/parskip) package
patches things up to look reasonable; it's not perfect, but it deals
with most problems.

The Netherlands Users' Group's set of classes includes an
[`article`](https://ctan.org/pkg/article) equivalent ([`artikel3`](https://ctan.org/pkg/ntgclass)) and a [`report`](https://ctan.org/pkg/report)
equivalent ([`rapport3`](https://ctan.org/pkg/ntgclass)) whose design incorporates zero paragraph
indent and non-zero paragraph skip.

