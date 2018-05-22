# All the files used by this document

When you're sharing a document with someone else (perhaps as part of a
co-development cycle) it's as well to arrange that both correspondents
have the same set of auxiliary files, as well as the document in
question.  Your correspondent obviously needs the same set of files
(if you use the [`url`](http://ctan.org/pkg/url) package, she has to have [`url`](http://ctan.org/pkg/url)
too, for example).  But suppose you have a bug-free version of the
[`shinynew`](http://ctan.org/pkg/shinynew) package but her copy is still the unstable
original; until you both realise what is happening, such a situation
can be very confusing.

The simplest solution is the LaTeX `\listfiles` command.  This
places a list of the files used and their version numbers in the log
file.  If you extract that list and transmit it with your file, it can
be used as a check-list in case that problems arise.

Note that `\listfiles` only registers things that are input by the
''standard'' LaTeX mechanisms (`\documentclass`, `\usepackage`,
`\include`, `\includegraphics` and so on).
The `\input` command, as modified by LaTeX and used, with
LaTeX syntax, as:
```latex
  \input{mymacros}
```
records file details for `mymacros.tex`, but if you use TeX
primitive syntax for `\input`, as:
```latex
  \input mymacros
```
`mymacros.tex` _won't_ be recorded, and so won't listed by
`\listfiles`&nbsp;&mdash; you've bypassed the mechanism that records its use.

The [`snapshot`](http://ctan.org/pkg/snapshot) package helps the owner of a LaTeX document
obtain a list of the external dependencies of the document, in a form
that can be embedded at the top of the document.  The intended use of
the package is the creation of archival copies of documents, but it
has application in document exchange situations too.

The `bundledoc` system uses the [`snapshot`](http://ctan.org/pkg/snapshot) to produce an
archive (e.g., `tar.gz` or `zip`) of the files needed by your
document; it comes with configuration files for use with
TeX&nbsp;Live-`Unix` and `MiKTeX`.  It's plainly useful when
you're sending the first copy of a document.

The `mkjobtexmf` finds which files are used in a 'job',
either via the `-recorder` option of TeX, or by using the
(Unix) command `strace` to keep an eye on what TeX is
doing.  The files thus found are copied (or linked) to a directory
which may then be saved for transmission or archiving.

