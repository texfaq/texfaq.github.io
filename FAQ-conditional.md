# Conditional compilation and ''comments''

While LaTeX (or any other TeX-derived package) isn't really like a
compiler, people regularly want to do compiler-like things using it.
Common requirements are conditional 'compilation' and 'block
comments', and several LaTeX-specific means to this end are available.

The simple `\newcommand{`\gobble`}`[1]`{}` 
and `\iffalse`` ... ``\fi` aren't really satisfactory (as
a general solution) for comments, since the matter being skipped is
nevertheless scanned by TeX, not always as you would expect.  The
scanning imposes restrictions on what you're allowed to skip; this may
not be a problem in _today's_ job, but could return to bite you
tomorrow.  For an example of surprises that may come to bite you,
consider the following example (derived from real user experience):
```latex
\iffalse % ignoring this bit
consider what happens if we
use \verb+\iftrue+ -- a surprise
\fi
```
The `\iftrue` is spotted by TeX as it scans, ignoring the
`\verb` command; so the `\iffalse` isn't terminated by the
following `\fi`.  Also, `\gobble` is pretty inefficient at
consuming anything non-trivial, since all the matter to be skipped is
copied to the argument stack before being ignored.

If your requirement is for a document from which whole chapters (or
the like) are missing, consider the LaTeX
`\include`/`\includeonly` system.  If you `\include` your
files (rather than `\input` them&nbsp;&mdash; see 
[What's going on in my `\include` commands?](./FAQ-include.html)),
LaTeX writes macro traces of what's going on at the end of each
chapter to the `aux` file; by using `\includeonly`, you can give
LaTeX an exhaustive list of the files that are needed.  Files that
don't get `\include`d are skipped entirely, but the document
processing continues as if they _were_ there, and page, footnote,
and other numbers are not disturbed.  Note that you can choose which
sections you want included interactively, using the
[`askinclude`](http://ctan.org/pkg/askinclude) package.

A variant on the `\includeonly` mechanism is offered by the
[`stampinclude`](http://ctan.org/pkg/stampinclude) package, which takes advantage of the PDFTeX
`\pdffilemoddate` command.  When an `\include`d file is
processed in a LaTeX document, an `aux` file is created
holding data such as page-number ranges and chapter/section numbers.
When `\stampinclude` is included in a document, it compares the
file system modification times for each file and its corresponding
`aux` file; the file is only compiled in ''this run'' of the
document if the file is newer than its corresponding `aux`
file.  The package requires a current PDFTeX, and will also run on
LuaTeX if the [`pdftexcmds`](http://ctan.org/pkg/pdftexcmds) package is available
([`pdftexcmds`](http://ctan.org/pkg/pdftexcmds) emulates the requisite PDFTeX commands using
`lua`.  Apart from this requirement, [`stampinclude`](http://ctan.org/pkg/stampinclude) is
a low-maintenace object; include it in your document and it silently
does its job.  When you want a final version of your document, delete
all the `aux` files, and and [`stampinclude`](http://ctan.org/pkg/stampinclude) won't
interfere.)

The inverse can be done using the [`excludeonly`](http://ctan.org/pkg/excludeonly) package: this
allows you to exclude a (list of) `\include`d files from your
document, by means of an `\excludeonly` command.

If you want to select particular pages of your document, use Heiko
Oberdiek's [`pagesel`](http://ctan.org/pkg/pagesel) or the [`selectp`](http://ctan.org/pkg/selectp) packages.  You
can do something similar with an existing PDF document (which
you may have compiled using `pdflatex` in the first place),
using the [`pdfpages`](http://ctan.org/pkg/pdfpages) package.  The job is then done with a
document looking like:
```latex
\documentclass{article}
\usepackage[final]{pdfpages}
\begin{document}
\includepdf[pages=30-40]{yoursource.pdf}
\end{document}
```
(To include all of the document, you write
```latex
\includepdf[pages=-]{yoursource.pdf}
```
omitting the start and end pages in the optional argument.)

If you want flexible facilities for including or excluding small
portions of a file, consider the [`comment`](http://ctan.org/pkg/comment), [`version`](http://ctan.org/pkg/version) or
[`optional`](http://ctan.org/pkg/optional) packages.

The [`comment`](http://ctan.org/pkg/comment) package allows you to declare areas of a document to be
included or excluded; you make these declarations in the preamble of
your file.  The command `\includecomment{version-name}`
declares an environment `version-name` whose content will
be included in your document, while
`\excludecomment{version-name}` defines an environment whose
content will be excluded from the document.  The package uses a method
for exclusion that is pretty robust, and can cope with ill-formed
bunches of text (e.g., with unbalanced braces or `\if` commands).

(These FAQs employ the [`comment`](http://ctan.org/pkg/comment) package to alter layout
between the printed (two-column) version and the PDF version
for browsing; there are `narrowversion` and
`wideversion` for the two versions of the file.)

[`version`](http://ctan.org/pkg/version) offers similar facilities to `comment.sty`
(i.e., `\includeversion` and `\excludeversion` commands);
it's far ''lighter weight'', but is less robust (and in particular,
cannot deal with very large areas of text being included/excluded).

A significant development of [`version`](http://ctan.org/pkg/version), confusingly called
[`versions`](http://ctan.org/pkg/versions) (i.e., merely a plural of the old package name).
[`Versions`](http://ctan.org/pkg/Versions) adds a command
`\markversion{version-name}` which defines an environment
that prints the included text, with a clear printed mark around it.

[`optional`](http://ctan.org/pkg/optional) defines a command `\opt`; its first argument is
an 'inclusion flag', and its second is text to be included or
excluded.  Text to be included or excluded must be well-formed
(nothing mismatched), and should not be too big&nbsp;&mdash; if a large body of
text is needed, `\input` should be used in the argument.
The documentation (in the package file itself) tells you
how to declare which sections are to be included: this can be done in
the document preamble, but the documentation also suggests ways in
which it can be done on the command line that invokes LaTeX, or
interactively.

And, not least of this style of conditional compilation,
[`verbatim`](http://ctan.org/pkg/verbatim) (which should be available in any distribution)
defines a `comment` environment, which enables the
dedicated user of the source text editor to suppress bits of a
LaTeX source file.  The [`memoir`](http://ctan.org/pkg/memoir) class offers the same
environment.

An interesting variation is the [`xcomment`](http://ctan.org/pkg/xcomment) package.  This
defines an environment whose body is all excluded, apart from
environments named in its argument.  So, for example:
```latex
\begin{xcomment}{figure,table}
  This text is not included
  \begin{figure}
    This figure is included
  \end{figure}
  This is not included, either
  \begin{table}
    This table also included
  \end{table}
  ...
\end{xcomment}
```

The [`tagging`](http://ctan.org/pkg/tagging) package offers another neat set of syntax, which
allow the user to apply ''tags'' to chunks of text, and to include and
exclude tagged text, according to the tags.  For example, the user may
'use' text marked with some tags, and to 'drop' marked with others:
```latex
\usetag{<tag list>}
\droptag{<tag list>}
```
(the tag lists consist of comma-separated single words).

There are then commands
```latex
\tagged{<tag list>}{<text>}
```
which reproduces the text only if the &lsaquo;_tag list_&rsaquo; contains at
least one tag listed in the `\usetag` comand, and
```latex
\untagged{<tag list>}{<text>}
```
which only reproduces the text unless the &lsaquo;_tag list_&rsaquo; contains
none of the tags mention in the `\droptag` command.

Further commands offer an if-then-else setup, and specify
`taggedblock` and `untaggedblock` environments
that.

Another valuable aspect of the problem is covered by the
[`extract`](http://ctan.org/pkg/extract) package.  The package allows you to produce a
''partial copy'' of an existing document: 
the package was developed to permit production of a ''book of
examples'' from a set of lecture notes.  The package documentation
shows the following usage:
```latex
\usepackage[
  active,
  generate=foobar,
  extract-env={figure,table},
  extract-cmd={chapter,section}
]{extract}
```
which will cause the package to produce a file `foobar.tex`
containing all the `figure` and `table`
environments, and the `\chapter` and `\section` commands, from
the document being processed.  The new file `foobar.tex` is
generated in the course of an otherwise ordinary run on the 'master'
document.  The package provides a good number of other facilities,
including (numeric or labelled) ranges of environments to extract, and
an `extract` environment which you can use to create complete
ready-to-run LaTeX documents with stuff you've extracted.

