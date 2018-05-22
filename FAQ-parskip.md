# Zero paragraph indent

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
and the result looks pretty awful.  The [`parskip`](http://ctan.org/pkg/parskip) package
patches things up to look reasonable; it's not perfect, but it deals
with most problems.

The Netherlands Users' Group's set of classes includes an
[`article`](http://ctan.org/pkg/article) equivalent ([`artikel3`](http://ctan.org/pkg/artikel3)) and a [`report`](http://ctan.org/pkg/report)
equivalent ([`rapport3`](http://ctan.org/pkg/rapport3)) whose design incorporates zero paragraph
indent and non-zero paragraph skip.

