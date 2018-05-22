# ''Missing number, treated as zero''

In general, this means you've tried to assign something to a count,
dimension or skip register that isn't (in TeX's view of things) a
number.  Usually the problem will become clear using the
[ordinary techniques of examining errors](./FAQ-erroradvice.html).

Two LaTeX-specific errors are commonly aired on the newsgroups.

The commonest arises from attempting to use an example from the
[_The LaTeX Companion_ (first edition)](./FAQ-latex-books.html), and is
exemplified by the following error text:
```latex
! Missing number, treated as zero.
<to be read again> 
                   \relax 
l.21 \begin{Ventry}{Return values}
```
The problem arises because, in its first edition, the
_Companion_'s examples always assumed that the [`calc`](http://ctan.org/pkg/calc)
package is loaded: this fact is mentioned in the book, but often not
noticed.  The remedy is to load the [`calc`](http://ctan.org/pkg/calc) package in any
document using such examples from the _Companion_.  (The problem
does not really arise with the second edition; copies of all the
examples are available on the accompanying CD-ROM, or on
CTAN.)

The other problem, which is increasingly rare nowadays, arises from
misconfiguration of a system that has been upgraded from LaTeX 2.09:
the document uses the [`times`](http://ctan.org/pkg/times) package, and the error appears
at `\begin{document}`.  The file search paths are wrongly set
up, and your `\usepackage{times}` has picked up a LaTeX 2.09
version of the package, which in its turn has invoked another which
has no equivalent in LaTeX 2e.  The obvious solution is to rewrite
the paths so that LaTeX 2.09 packages are chosen only as a last resort
so that the startlingly simple LaTeX 2e [`times`](http://ctan.org/pkg/times) package will
be picked up.  Better still is to replace the whole thing with
something more modern still; current [`psnfss`](http://ctan.org/pkg/psnfss) doesn't provide
a [`times`](http://ctan.org/pkg/times) package&nbsp;&mdash; the alternative [`mathptmx`](http://ctan.org/pkg/mathptmx)
incorporates `Times`-like mathematics, and a sans-serif face
based on `Helvetica`, but scaled to match `Times`
text rather better.

