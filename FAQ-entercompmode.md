# Entering compatibility mode

You run your LaTeX job, and it starts by saying
```latex
Entering LaTeX 2.09 COMPATIBILITY MODE
```
followed by lines of asterisks and `!!WARNING!!`.

This means that the document is not written in ''current'' LaTeX
syntax, and that there is no guarantee that all parts of the document
will be formatted correctly.

If the document is someone else's, and you want no more than a copy to
read, ignore the error.  The document may fail elsewhere, but as often
as not it will provide a `dvi` or `pdf` that's
adequate for most purposes.

If it's a new document you have just started working on, you have been
misled by someone.  You have written something like:
  `\documentstyle{article}`
or, more generally:
  `\documentstyle[options]{class}`
These forms are (as the warning says) LaTeX 2.09 syntax, and to get rid
of the warning, you must change the command.

The simple form is easy to deal with:
  `\documentstyle{article}`
should become:
  `\documentclass{article}`
The complex form is more difficult, since LaTeX 2.09 ''options''
conflate two sorts of things&nbsp;&mdash; options for the class (such as
`11pt`, `fleqn`), and packages to be loaded.
So:
  `\documentstyle[11pt,verbatim]{article}`
should become:
  `\documentclass[11pt]{article}`

  `\usepackage{verbatim}`
because `11pt` happens to be a class option, while
[`verbatim`](http://ctan.org/pkg/verbatim) is a package.

There's no simple way to work out what are class options under
LaTeX 2.09; for [`article`](http://ctan.org/pkg/article), the list includes `10pt`,
`11pt`, `12pt`, `draft`,
`fleqn`, `leqno`, `twocolumn` and
`twoside`&nbsp;&mdash; anything else must be a package.

Your document may well ''just work'' after changes like those above;
if not, you should think through what you're trying to do, and consult
documentation on how to do it&nbsp;&mdash; there are lots of 
[free tutorials](./FAQ-tutorials*.html) to help you on your way, if you
don't have access to a LaTeX manual of any sort.

