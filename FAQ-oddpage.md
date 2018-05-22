# Finding if you're on an odd or an even page

[Another question](./FAQ-marginparside.html) discusses the issue
of getting `\marginpar` commands to put their output in the correct
margin of two-sided documents.  This is an example of the general
problem of knowing where a particular bit of text lies: the output
routine is asynchronous, and (La)TeX will usually process quite a
bit of the ''next'' page before deciding to output any page.  As a
result, the `page` counter (known internally in LaTeX as
`\c@page`) is normally only reliable when you're actually _in_
the output routine.

The solution is to use some version of the `\label` mechanism to
determine which side of the page you're on; the value of the page
counter that appears in a `\pageref` command has been inserted in
the course of the output routine, and is therefore safe.

However, `\pageref` itself isn't reliable: one might hope that
```latex
\ifthenelse{\isodd{\pageref{foo}}}{odd}{even}
```
would do the necessary, but both the [`babel`](http://ctan.org/pkg/babel) and
[`hyperref`](http://ctan.org/pkg/hyperref) packages have been known to interfere with the
output of `\pageref`; be careful!

The [`changepage`](http://ctan.org/pkg/changepage) package needs to provide this functionality
for its own use, and therefore provides a command `\checkoddpage`;
this sets a private-use 'label', and the page reference part of that
label is then examined (in a [`hyperref`](http://ctan.org/pkg/hyperref)-safe way) to set a
conditional `\ifoddpage` true if the command was issued on an odd
page.  (The [`memoir`](http://ctan.org/pkg/memoir) class has the same command.)  LaTeX
users who are unfamiliar with TeX's `\if...` commands may use
the [`ifthen`](http://ctan.org/pkg/ifthen) package:
```latex
\usepackage{ifthen,changepage}
...
\checkoddpage
\ifthenelse{\boolean{oddpage}}{<odd page stuff>}{<even page stuff>}
```

Of course, the 'label' contributes to LaTeX's ''Rerun to get
cross-references right'' error messages&hellip;

The Koma-Script classes have an `addmargin*` environment
that also provides the sorts of facilities that the [`changepage`](http://ctan.org/pkg/changepage)
offers.  Koma-Script's supporting command:
`\ifthispageodd{<true>}{<false>}`
executes different things depending on the page number.

The package [`ifoddpage`](http://ctan.org/pkg/ifoddpage) is designed to provide the same
facility; crucially, it can behave ''sensibly'' even if you are
typesetting for one-side printing only; like the [`changepage`](http://ctan.org/pkg/changepage)
it uses a 'check' command `\checkoddpage`.  The conditional 'side'
flags are set using (Plain) TeX conditionals; they are defined
locally, so that you can minimise their use of TeX workspace&nbsp;&mdash;
see the package documentation for the somewhat tricky sequence
involved.  In addition the package provides a command
`\ifoddpageoroneside`, which is true on odd pages of a two-side
document, or on all pages of a one-side document.  Usage is:
```latex
\checkoddpage
\ifoddpage
  odd-side text
\else
  even-side text
\fi
```
The author's recommended usage (trickily) includes the whole operation
in a box; this has the advantage that your test will always work, but
the usual disadvantage that boxes may not split.  In common uses, the
whole work will be done inside a box (as, for example, in the case of
a float), so the elaborate work proposed by the author is not
necessary.

