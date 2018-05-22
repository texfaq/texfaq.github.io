# Sorting lists of citations

BibTeX has a sorting function, and most BibTeX styles sort the
citation list they produce; most people find this desirable.

However, it is perfectly possible to write a
`thebibliography` environment that _looks_ as if it
came from BibTeX, and many people do so (in order to save time in
the short term).

The problem arises when `thebibliography`-writers decide
their citations need to be sorted.  A common misapprehension is to
insert `\bibliographystyle{alpha}` (or similar) and expect
the typeset output to be sorted in some magical way.  BibTeX
doesn't work that way!&nbsp;&mdash; if you write `thebibliography`,
you get to sort its contents.  BibTeX will only sort the contents
of a `thebibliography` environment when it creates it, to
be inserted from a `bbl` file by a `\bibliography` command.

