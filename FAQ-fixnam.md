---
title: How to change LaTeX's ''fixed names''
category: programming
tags: latex macros
permalink: /FAQ-fixnam
date: 2014-06-10
---

# How to change LaTeX's ''fixed names''

LaTeX document classes define several typographic operations that
need ''canned text'' (text not supplied by the user).  In the earliest
days of LaTeX 2.09 these bits of text were built in to the body of
LaTeX's macros and were rather difficult to change, but ''fixed name''
macros were introduced for the benefit of those wishing to use
LaTeX in languages other than English.
For example, the special section produced by the `\tableofcontents`
command is always called `\contentsname` (or rather, what
`\contentsname` is defined to mean).
Changing the canned text is now one of the easiest customisations a
user can do to LaTeX.

The canned text macros are all of the form
`\<thing>name`, and changing them is simplicity
itself.  Put:
`\renewcommand{\<thing>name}{Res minor}`
in the preamble of your document, and the job is done.
(However, beware of the [`babel`](https://ctan.org/pkg/babel) package, which requires you to
use a different mechanism: be sure to check
[changing `babel` names](/FAQ-latexwords) if
you're using it.)

The names that are defined in the standard LaTeX classes (and the
[`makeidx`](https://ctan.org/pkg/makeidx) package) are listed
below.  Some of the names are only defined in a subset of the classes
(and the [`letter`](https://ctan.org/pkg/letter) class has a set of names all of its own);
the list shows the specialisation of each name, where appropriate.


 | Command          | Default definition |
 | ---------------- | ---------- |
 | `\abstractname`  |  Abstract |
 | `\alsoname`      |  see also ([`makeidx`](https://ctan.org/pkg/makeidx) package) |
 | `\appendixname`  |  Appendix |
 | `\bibname`       |  Bibliography ([`report`](https://ctan.org/pkg/report),[`book`](https://ctan.org/pkg/book)) |
 | `\ccname`        |  cc ([`letter`](https://ctan.org/pkg/letter)) |
 | `\chaptername`   |  Chapter ([`report`](https://ctan.org/pkg/report),[`book`](https://ctan.org/pkg/book)) |
 | `\contentsname`  |  Contents |
 | `\enclname`      |  encl ([`letter`](https://ctan.org/pkg/letter)) |
 | `\figurename`    |  Figure (for captions) |
 | `\headtoname`    |  To ([`letter`](https://ctan.org/pkg/letter)) |
 | `\indexname`     |  Index |
 | `\listfigurename`|  List of Figures |
 | `\listtablename` |  List of Tables |
 | `\pagename`      |  Page ([`letter`](https://ctan.org/pkg/letter)) |
 | `\partname`      |  Part |
 | `\refname`       |  References ([`article`](https://ctan.org/pkg/article)) |
 | `\seename`       |  see ([`makeidx`](https://ctan.org/pkg/makeidx) package) |
 | `\tablename`     |  Table (for caption) |


