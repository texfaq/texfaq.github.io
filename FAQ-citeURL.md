# URLs in BibTeX bibliographies

There is no citation type for URLs, _per se_, in the
standard BibTeX styles, though Oren Patashnik (the author of
BibTeX) is believed to be considering developing one such for use
with the long-awaited BibTeX version&nbsp;1.0.

The actual information that need be available in a citation of an
URL is discussed at some length in the publicly available
on-line 
[extracts of ISO&nbsp;690&ndash;2](http://www.nlc-bnc.ca/iso/tc46sc9/standard/690-2e.htm);
the techniques below do _not_ satisfy all the requirements of
ISO&nbsp;690&ndash;2, but they offer a solution that is at least
available to users of today's tools.

Until the new version of BibTeX arrives, the simplest technique is
to use the `howpublished` field of the standard styles' `@misc`
function.  Of course, the strictures
about [typesetting URLs](./FAQ-setURL.html) still apply, so the
entry will look like:
```latex
@misc{...,
  ...,
  howpublished = "\url{http://...}"
}
```
A possible alternative approach is to use BibTeX styles other than
the standard ones, that already have URL entry types.
Candidates are:
  

-  The [`natbib`](http://ctan.org/pkg/natbib) styles ([`plainnat`](http://ctan.org/pkg/plainnat),
    [`unsrtnat`](http://ctan.org/pkg/unsrtnat) and [`abbrevnat`](http://ctan.org/pkg/abbrevnat)), which are extensions of
    the standard styles, principally for use with [`natbib`](http://ctan.org/pkg/natbib)
    itself.  However, they've acquired URLs and other ''modern''
    entries along the way.  The same author's [`custom-bib`](http://ctan.org/pkg/custom-bib) is
    also capable of generating styles that honour URL entries.
-  The [`babelbib`](http://ctan.org/pkg/babelbib) bundle, which offers 
    [multilingual bibliographies](./FAQ-i18nbib.html), similarly provides a
    set of standard-style equivalents that have URL entries.
-  More modern styles such as the [`harvard`](http://ctan.org/pkg/harvard) package (if the
    citation styles are otherwise satisfactory for you).
    [`Harvard`](http://ctan.org/pkg/Harvard) bibliography styles all include a `url`
    field in their specification; however, the typesetting offered is
    somewhat feeble (though it does recognise and use
    `LaTeX2HTML` macros if they are available, to create
    hyperlinks).

You can also acquire new BibTeX styles by use of Norman Gray's
[`urlbst`](http://ctan.org/pkg/urlbst) system, which is based on a `Perl` script
that edits an existing BibTeX style file to produce a new
style. The new style thus generated has a `webpage` entry type, and
also offers support for `url` and `lastchecked` fields
in the other entry types.  The `Perl` script comes with a set
of converted versions of the standard bibliography styles.

Another possibility is that some conventionally-published paper,
technical report (or even book) is also available on the Web.  In such
cases, a useful technique is something like:
```latex
@techreport{...,
  ...,
  note = "Also available as \url{http://...}"
}
```
There is good reason to use the [`url`](http://ctan.org/pkg/url) or [`hyperref`](http://ctan.org/pkg/hyperref)
packages in this context: BibTeX has a habit of splitting
lines it considers excessively long, and if there are no space
characters for it to use as 'natural' breakpoints, BibTeX will
insert a comment ([[[texttt]]]
is an acceptable character in an URL.  Any current version of
either of the [`url`](http://ctan.org/pkg/url) or [`hyperref`](http://ctan.org/pkg/hyperref) packages detects this
'[[[texttt]]]
removes it.

