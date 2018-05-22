# PDFTeX destination &hellip; ignored

The warning:
```latex
! pdfTeX warning (ext4): destination with the same identifier
(name{page.1}) has been already used, duplicate ignored
```
arises because of duplicate page numbers in your document.  The
problem is usually soluble: see 
[PDF page destinations](./FAQ-pdfpagelabels.html)&nbsp;&mdash; which
answer also describes the problem in more detail.

If the identifier in the message is different, for example
`name{figure.1.1}`, the problem is (often) due to a problem of
package interaction.  The `README` in the [`hyperref`](http://ctan.org/pkg/hyperref)
distribution mentions some of these issues&nbsp;&mdash; for example,
`equation` and `eqnarray` as supplied by the
[`amsmath`](http://ctan.org/pkg/amsmath) package; means of working around the problem are
typically supplied there.

Some packages are simply incompatible with
[`hyperref`](http://ctan.org/pkg/hyperref), but most work simply by ignoring it.  In most
cases, therefore, you should load your package before you load
[`hyperref`](http://ctan.org/pkg/hyperref), and [`hyperref`](http://ctan.org/pkg/hyperref) will patch things up so
that they work, so you can utilise your (patched) package _after_
loading both:
  `\usepackage{_your package_}`

  `...`

  `\usepackage[_opts_]{hyperref}`

  `...`

  &lsaquo;_code that uses your package_&rsaquo;
For example:
```latex
\usepackage{float}          % defines \newfloat
...
\usepackage[...]{hyperref}  % patches \newfloat
...
\newfloat{...}{...}{...}
```
You should load packages in this order as a matter of course, unless
the documentation of a package says you _must_ load it after
[`hyperref`](http://ctan.org/pkg/hyperref).  (There are few packages that require to be
loaded after hyperref: one such is [`memoir`](http://ctan.org/pkg/memoir)'s
''[`hyperref`](http://ctan.org/pkg/hyperref) fixup'' package [`memhfixc`](http://ctan.org/pkg/memhfixc).)

If loading your packages in the (seemingly) ''correct'' order doesn't
solve the problem, you need to [seek further help](./FAQ-gethelp.html).

