# Version control using RCS, CVS or the like

If you use RCS, CVS, `Subversion`,
`Bazaar` or `Git` to maintain
your (La)TeX documents under version control, you may need some
mechanism for including the version details in your document, in such
a way that they can be typeset (that is, rather than just hiding them
inside a comment).

The most complete solution for RCS and CVS is to use the
(LaTeX) package [`rcs`](http://ctan.org/pkg/rcs), which allows you to parse and
display the contents of RCS keyword fields in an extremely
flexible way.  The package [`rcsinfo`](http://ctan.org/pkg/rcsinfo) is simpler, but does most
of what you want, and some people prefer it; it is explicitly
compatible with `LaTeX2HTML`.

If, however, you need a solution which works without using external
packages, or which will work in Plain TeX, then you can use the
following minimal solution:
```latex
\def\RCS$#1: #2 ${\expandafter\def\csname RCS#1\endcsname{#2}}
\RCS$Revision: 1.47 $ % or any RCS keyword
\RCS$Date: 2014/01/28 18:17:23 $
...
\date{Revision \RCSRevision, \RCSDate}
```

If you are a user of `Subversion`, the package [`svn`](http://ctan.org/pkg/svn)
may be for you.  It has explicit cleverness about dealing with dates:
`\documentclass``{&lsaquo;_foo_&rsaquo;}`

`...`

`\usepackage{svn}`

`\SVNdate`` $Date$`

`\author{...}`

`\title{...}`

`...`

`\begin{document}`

`\maketitle`

`...`

`\end{document}`
will (once `subversion` has committed a copy of the document)
cause `\maketitle` use the date that has been written into the
`$Date$` keyword.

Another alternative for `Subversion` users is the
[`svninfo`](http://ctan.org/pkg/svninfo) package, which has much the same mechanisms as does
[`svn`](http://ctan.org/pkg/svn) but with a rather different focus.  [`Svninfo`](http://ctan.org/pkg/Svninfo)
does the date trick that [`svn`](http://ctan.org/pkg/svn) performs (controlled by a
package option), and can set up page foot-lines using 
[package [`fancyhdr`](http://ctan.org/pkg/fancyhdr)](./FAQ-fancyhdr.html).  There isn't much to
choose between the two packages: you should read the packages'
documentation to see which suits you best.

An alternative script-based approach to version control has been taken
by the [`vc`](http://ctan.org/pkg/vc) bundle, that in certain situations might work more
reliably than any of the packages mentioned above.  The [`vc`](http://ctan.org/pkg/vc)
bundle supports `Bazaar`, `Git` and
`Subversion` usage and works with both LaTeX and
Plain TeX.  Note that [`vc`](http://ctan.org/pkg/vc) is the only option that
currently claims to support `Bazaar`-controlled repositories.

Finally, for now, the [`gitinfo`](http://ctan.org/pkg/gitinfo) package supports
`Git`-controlled documents.

