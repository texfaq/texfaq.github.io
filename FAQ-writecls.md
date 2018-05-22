# Learning to write LaTeX classes and packages

There's nothing particularly magic about the commands you use when
writing a package, so you can simply bundle up a set of LaTeX
`\(re)newcommand` and `\(re)newenvironment` commands, put them in
a file `package.sty` and you have a package.

However, any but the most trivial package will require rather more
sophistication.  Some details of LaTeX commands for the job are to
be found in 'LaTeX 2e for class and package writers'
(`clsguide`, part of the LaTeX documentation distribution).
Beyond this, a good knowledge of TeX itself is valuable: thus books
such as the [TeXbook](./FAQ-tex-books.html) or 
[TeX by topic](./FAQ-ol-books.html) are relevant.  With good TeX
knowledge it is possible to use the documented source of LaTeX as
reference material (dedicated authors will acquaint themselves with the
source as a matter of course).  A complete set of the documented
source of LaTeX may be prepared by processing the file
`source2e.tex` in the LaTeX distribution.  Such processing is
noticeably tedious, but Heiko Oberdiek has prepared a well-linked
PDF version, which is in the file `base.tds.zip` of his
`latex-tds` distribution.  Individual files in the LaTeX
distribution may be processed separately with LaTeX, like any
well-constructed [`dtx` file](./FAQ-dtx.html).

Writing good classes is not easy; it's a good idea to read some
established ones (`classes.dtx`, for example, is the documented
source of the standard classes other than [`Letter`](http://ctan.org/pkg/Letter), and may
itself be formatted with LaTeX).  Classes that are not part of the
distribution are commonly based on ones that are, and start by loading
the standard class with `\LoadClass`&nbsp;&mdash; an example of this
technique may be seen in [`ltxguide.cls`](http://ctan.org/pkg/ltxguide.cls)

An 
[annotated version of [`article`](http://ctan.org/pkg/article)](http://tug.org/TUGboat/Articles/tb28-1/tb88flynn.pdf),
as it appears in `classes.dtx`, was published in
TUGboat 28(1).  The article, by Peter Flynn, is a good guide to
understanding `classes.dtx`

