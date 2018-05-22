# How to change LaTeX's ''fixed names''

LaTeX document classes define several typographic operations that
need 'canned text' (text not supplied by the user).  In the earliest
days of LaTeX 2.09 these bits of text were built in to the body of
LaTeX's macros and were rather difficult to change, but ''fixed
name'' macros were introduced for the benefit of those wishing to use
LaTeX in languages other than English.
For example, the special section produced by the `\tableofcontents`
command is always called `\contentsname` (or rather, what
`\contentsname` is defined to mean).
Changing the canned text is now one of the easiest customisations a
user can do to LaTeX.

The canned text macros are all of the form
`\&lsaquo;_thing_&rsaquo;name`, and changing them is simplicity
itself.  Put:
`\renewcommand{`\&lsaquo;_thing_&rsaquo;name`}{Res minor}`
in the preamble of your document, and the job is done.
(However, beware of the [`babel`](http://ctan.org/pkg/babel) package, which requires you to
use a different mechanism: be sure to check
[changing [`babel`](http://ctan.org/pkg/babel) names](./FAQ-latexwords.html) if
you're using it.)

The names that are defined in the standard LaTeX classes (and the
[`makeidx`](http://ctan.org/pkg/makeidx) package) are listed
below.  Some of the names are only defined in a subset of the classes
(and the [`letter`](http://ctan.org/pkg/letter) class has a set of names all of its own);
the list shows the specialisation of each name, where appropriate.

<table><tbody>
<tr><td>`\abstractname` </td><td> Abstract</td></tr>
<tr><td>`\alsoname` </td><td> see also ([`makeidx`](http://ctan.org/pkg/makeidx) package)</td></tr>
<tr><td>`\appendixname` </td><td> Appendix</td></tr>
<tr><td>`\bibname` </td><td> Bibliography ([`report`](http://ctan.org/pkg/report),[`book`](http://ctan.org/pkg/book))</td></tr>
<tr><td>`\ccname` </td><td> cc ([`letter`](http://ctan.org/pkg/letter))</td></tr>
<tr><td>`\chaptername` </td><td> Chapter ([`report`](http://ctan.org/pkg/report),[`book`](http://ctan.org/pkg/book))</td></tr>
<tr><td>`\contentsname` </td><td> Contents</td></tr>
<tr><td>`\enclname` </td><td> encl ([`letter`](http://ctan.org/pkg/letter))</td></tr>
<tr><td>`\figurename` </td><td> Figure (for captions)</td></tr>
<tr><td>`\headtoname` </td><td> To ([`letter`](http://ctan.org/pkg/letter))</td></tr>
<tr><td>`\indexname` </td><td> Index</td></tr>
<tr><td>`\listfigurename` </td><td> List of Figures</td></tr>
<tr><td>`\listtablename` </td><td> List of Tables</td></tr>
<tr><td>`\pagename` </td><td> Page ([`letter`](http://ctan.org/pkg/letter))</td></tr>
<tr><td>`\partname` </td><td> Part</td></tr>
<tr><td>`\refname` </td><td> References ([`article`](http://ctan.org/pkg/article))</td></tr>
<tr><td>`\seename` </td><td> see ([`makeidx`](http://ctan.org/pkg/makeidx) package)</td></tr>
`\tablename` </td><td> Table (for caption)
</tbody></table>

