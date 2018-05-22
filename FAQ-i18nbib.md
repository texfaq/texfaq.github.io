# Non-english bibliographies

Like so much of early (La)TeX software, BibTeX's assumptions were
firmly rooted in what its author knew well, viz., academic papers in
English (particularly those with a mathematical bent).  BibTeX's
standard styles all address exactly that problem, leaving the user who
writes in another language (or who deal with citations in the style of
other disciplines than maths) to strike out into contributed software.

For the user whose language is not English, there are several
alternatives.  Possibly most straightforward is to switch to using
[`biblatex`](http://ctan.org/pkg/biblatex), which can produce a bibliography appropriate to
several languages.  However, [`biblatex`](http://ctan.org/pkg/biblatex) is large and has
correspondingly large documentation (though it is well-written and
pleasingly typeset), so its adoption takes time.

Otherwise, the simplest procedure is to provide translations of
BibTeX styles into the
required language: the solitary [`finplain.bst`](http://ctan.org/pkg/finplain.bst) does that for
Finnish; others one can find are for Danish ([`dk-bib`](http://ctan.org/pkg/dk-bib)), French
([`bib-fr`](http://ctan.org/pkg/bib-fr)), German ([`bibgerm`](http://ctan.org/pkg/bibgerm)), Norwegian
([`norbib`](http://ctan.org/pkg/norbib)) and Swedish ([`swebib`](http://ctan.org/pkg/swebib)) bundles (of which
the [`bib-fr`](http://ctan.org/pkg/bib-fr) set is the most extensive).  The [`spain`](http://ctan.org/pkg/spain)
style implements a traditional Spanish citation style.

These static approaches solve the problem, for the languages that have
been covered by them.  Unfortunately, with such an approach, a lot of
work is needed for every language involved.  Two routes to a solution
of the ''general'' problem are available&nbsp;&mdash; that offered by
[`babelbib`](http://ctan.org/pkg/babelbib), and the 
[[`custom-bib`](http://ctan.org/pkg/custom-bib) mechanism for generating styles](./FAQ-custbib.html).

[`Babelbib`](http://ctan.org/pkg/Babelbib) (which is a development of the ideas of the
[`bibgerm`](http://ctan.org/pkg/bibgerm) package) co-operates with [`babel`](http://ctan.org/pkg/babel) to control
the language of presentation of citations (potentially at the level of
individual items).  The package has a built-in set of languages it
'knows about', but the documentation includes instructions on defining
commands for other languages.  [`Babelbib`](http://ctan.org/pkg/Babelbib) comes with its own
set of bibliography styles, which could be a restriction if there
wasn't also a link from [`custom-bib`](http://ctan.org/pkg/custom-bib).

The [`makebst`](http://ctan.org/pkg/makebst) menu of [`custom-bib`](http://ctan.org/pkg/custom-bib) allows you to
choose a language for the BibTeX style you're generating (there are
14 languages to choose; it looks as if [`spain.bst`](http://ctan.org/pkg/spain.bst), mentioned
above, was generated this way).  If, however, you opt not to specify a
language, you are asked whether you want the style to interact with
[`babelbib`](http://ctan.org/pkg/babelbib); if you do so, you're getting the best of both
worlds&nbsp;&mdash; formatting freedom from [`custom-bib`](http://ctan.org/pkg/custom-bib) and linguistic
freedom via the extensibility of [`babelbib`](http://ctan.org/pkg/babelbib)

