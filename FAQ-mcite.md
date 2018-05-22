# Multiple citations

A convention sometimes used in physics journals is to ''collapse'' a group of
related citations into a single entry in the bibliography.  BibTeX,
by default, can't cope with this arrangement, but the [`mcite`](http://ctan.org/pkg/mcite)
and [`mciteplus`](http://ctan.org/pkg/mciteplus) packages deal with the problem.

[`mcite`](http://ctan.org/pkg/mcite) overloads the `\cite` command to recognise a
`*` at the start of a key, so that citations of the form
```latex
\cite{paper1,*paper2}
```
appear in the document as a single citation, and appear arranged
appropriately in the bibliography itself.  You're not limited to
collapsing just two references.  You can mix ''collapsed'' references
with ''ordinary'' ones, as in
```latex
\cite{paper0,paper1,*paper2,paper3}
```
Which will appear in the document as 3&nbsp;citations ''[4,7,11]''
(say)&nbsp;&mdash; citation '4' will refer to paper&nbsp;0, '7' will refer to a
combined entry for paper&nbsp;1 and paper&nbsp;2, and '11' will refer to
paper&nbsp;3.

You need to make a small change to the bibliography style
(`bst`) file you use; the [`mcite`](http://ctan.org/pkg/mcite) package
documentation tells you how to do that.

Most recent versions of [`REVTeX`](http://ctan.org/pkg/REVTeX) (version 4.1 and later), in
conjunction with recent versions of [`natbib`](http://ctan.org/pkg/natbib), already contain
support for combined citations and so no longer even need
[`mciteplus`](http://ctan.org/pkg/mciteplus) (but [`mciteplus`](http://ctan.org/pkg/mciteplus) is more general and will
work with many other class and package combinations).

The [`mciteplus`](http://ctan.org/pkg/mciteplus) package adresses many of the infelicites of
[`mcite`](http://ctan.org/pkg/mcite).  Again, 'ordinary' `bst` files will not
work with [`mciteplus`](http://ctan.org/pkg/mciteplus), but the package documentation explains
how to patch an existing BibTeX style.

The [`collref`](http://ctan.org/pkg/collref) package takes a rather different approach to the
problem, and will work with most (if not all) BibTeX packages.
[`Collref`](http://ctan.org/pkg/Collref) spots common subsets of the references, so if it
sees a sequence
```latex
\cite{paper0,paper1,paper2,paper3}
...
\cite{some_other_paper,paper1,paper2,and_another}
```
it will collect `paper1` and `paper2` as a multiple reference.

