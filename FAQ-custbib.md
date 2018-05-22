# Creating a bibliography style

It _is_ possible to write your own: the standard bibliography
styles are distributed in a form with many comments, and there is a description
of the language in the BibTeX distribution (see 
[BibTeX documentation](./FAQ-BibTeXing.html)).
However, it must be admitted that the language in which BibTeX
styles are written is pretty obscure, and one would not recommend
anyone who's not a confident programmer to write their own, though
minor changes to an existing style may be within the grasp of many.

If your style isn't too 'far out', you can probably avoid programming
it by using the facilities of the [`custom-bib`](http://ctan.org/pkg/custom-bib) bundle.  The bundle
contains a file `makebst.tex`, which runs you through a text menu
to produce a file of instructions, which you can then use to generate your
own `bst` file.  This technique doesn't offer entirely new styles
of document, but the [`custom-bib`](http://ctan.org/pkg/custom-bib)'s ''master BibTeX
styles'' already offer significantly more than the BibTeX standard set.

An alternative, which is increasingly often recommended, to use
[[`biblatex`](http://ctan.org/pkg/biblatex)](./FAQ-biblatex.html).  [`Biblatex`](http://ctan.org/pkg/Biblatex) offers
many hooks for adjusting the format of the output of your 'basic'
BibTeX style, and a collection of 'contributed' styles have also
started to appear.  Note.bowever There are not as many of
[`biblatex`](http://ctan.org/pkg/biblatex)'s contributed styles as there are for BibTeX,
and there is no [`custom-biblatex`](http://ctan.org/pkg/custom-biblatex), both of which suggest that
beginners' r&ouml;le models are hard to come by.  As a result, beginners
should probably resist the temptation to write their own contributed
[`biblatex`](http://ctan.org/pkg/biblatex) style.

