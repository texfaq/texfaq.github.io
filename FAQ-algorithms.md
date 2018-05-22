# Typesetting pseudocode in LaTeX

There is no consensus on the 'right' way to typeset pseudocode.
Consequently, there are a variety of LaTeX packages to choose from
for producing &aelig;sthetically pleasing pseudocode listings.

Pseudocode differs from actual program listings in that it lacks
strict syntax and semantics.  Also, because pseudocode is supposed to
be a clear expression of an algorithm it may need to incorporate
mathematical notation, figures, tables, and other LaTeX features
that do not appear in conventional programming languages.
  [Typesetting program listings](./FAQ-codelist.html) is described
  elsewhere.

You can certainly create your own environment for typesetting
pseudocode using, for example, the `tabbing` or
`list` environments&nbsp;&mdash; it's not difficult, but it may
prove boring.  So it's worth trying the following packages, all
designed specifically for typesetting pseudocode.

The [`algorithms`](http://ctan.org/pkg/algorithms) bundle (which contains packages
[`algorithm`](http://ctan.org/pkg/algorithm) and [`algorithmic`](http://ctan.org/pkg/algorithmic), both of which are
needed for ordinary use) has a simple interface and produces fairly
nice output.  It provides primitives for statements, which can contain
arbitrary LaTeX commands, comments, and a set of iterative and
conditional constructs.  These primitives can easily be redefined to
produce different text in the output.  However, there is no support
for adding new primitives.  Typesetting the pseudocode itself is
performed in [`algorithmic`](http://ctan.org/pkg/algorithmic); the [`algorithms`](http://ctan.org/pkg/algorithms) package
uses the facilities of the [`float`](http://ctan.org/pkg/float) package to number
algorithms sequentially, enable algorithms to float like figures or
tables, and support including a List of Algorithms in a document's
front matter.

Packages in the [`algorithmicx`](http://ctan.org/pkg/algorithmicx) bundle are similar both in
concept and output form to [`algorithmic`](http://ctan.org/pkg/algorithmic) but additionally
provide support for adding new keywords and altering the formatting.
It provides the [`algpseudocode`](http://ctan.org/pkg/algpseudocode) package which is (almost) a
drop-in replacement for [`algorithmic`](http://ctan.org/pkg/algorithmic).  Another package in the
bundle, [`algpascal`](http://ctan.org/pkg/algpascal), uses Pascal-like keywords, indents
differently from [`algpseudocode`](http://ctan.org/pkg/algpseudocode), and puts command arguments
in maths mode instead of text mode.  There is no floating environment
but [`algorithmicx`](http://ctan.org/pkg/algorithmicx), like [`algorithmic`](http://ctan.org/pkg/algorithmic), is compatible
with the [`algorithm`](http://ctan.org/pkg/algorithm) package.  (There have been reports of
difficulty defining new commands to fit with the package;
unfortunately, the author is not available to comment.)

The [`alg`](http://ctan.org/pkg/alg) package, like [`algorithms`](http://ctan.org/pkg/algorithms), offers a
floating algorithm environment with all of the ensuing niceties.
[`alg`](http://ctan.org/pkg/alg), however, can caption its floats in a variety of
(natural) languages.  In addition, [`alg`](http://ctan.org/pkg/alg) unlike
[`algorithms`](http://ctan.org/pkg/algorithms), makes it easy to add new constructs.

The [`newalg`](http://ctan.org/pkg/newalg) package has a somewhat similar interface to
[`algorithms`](http://ctan.org/pkg/algorithms), but its output is designed to mimic the rather
pleasant typesetting used in the book ''_Introduction to Algorithms_''
by Corman, Leiserson, Rivest and Stein. Unfortunately,
[`newalg`](http://ctan.org/pkg/newalg) does not support a floating environment or any
customisation of the output.

''_Bona fide_'' use of the style of ''Introduction to
Algorithms'' may be achieved with Cormen's own [`clrscode`](http://ctan.org/pkg/clrscode):
this is the package as used in the second edition of the book.

Similarly, the style of 
''_Combinatorial Algorithms: Generation, Enumeration and Search_''
is supported by the [`pseudocode`](http://ctan.org/pkg/pseudocode) package, written by the
authors of the book.  It has the common 'Pascal-like' style, and has
some interesting constructs for what one thinks of as Pascal blocks.

The [`algorithm2e`](http://ctan.org/pkg/algorithm2e) is of very long standing, and is widely used
and recommended.  It loads the [`float`](http://ctan.org/pkg/float) package to provide the
option of floating algorithm descriptions, but you can always use the
`H` option of [`float`](http://ctan.org/pkg/float) to have the algorithm appear
''where you write it''.

The usage of the [`program`](http://ctan.org/pkg/program) package is a little different from
that of the other packages.  It typesets programs in maths mode
instead of text mode; and linebreaks are significant.
[`program`](http://ctan.org/pkg/program) lacks a floating environment but does number
algorithms like [`alg`](http://ctan.org/pkg/alg) and [`algorithms`](http://ctan.org/pkg/algorithms).  Customisation
and extension are not supported.  Documentation of the
[`program`](http://ctan.org/pkg/program) package (such as it is) appears in a file
`program.msg` in the distribution.

None of the above are perfect.  The factors that should influence your
choice of package include the output style you prefer, how much you
need to extend or modify the set of keywords, and whether you require
algorithms to float like figures and tables.

