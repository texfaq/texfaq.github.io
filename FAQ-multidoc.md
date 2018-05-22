# A 'report' from lots of 'article's

This is a requirement, for example, if one is preparing the
proceedings of a conference whose papers were submitted in LaTeX.

The nearest things to canned solutions are Peter Wilson's
[`combine`](http://ctan.org/pkg/combine) and Federico Garcia's [`subfiles`](http://ctan.org/pkg/subfiles) classes, but
many approaches have been proposed.  Each of of the offerings has its
own advantages; in particular, several distinctly light-weight
solutions (for example, [`includex`](http://ctan.org/pkg/includex) and [`docmute`](http://ctan.org/pkg/docmute)) are
available, well-suited to less formal documents.

[`Combine`](http://ctan.org/pkg/Combine) defines the means to `\import` entire documents,
and provides means of specifying significant features of the layout of
the document, as well as a global table of contents, and so on.  The
complete set of facilities is pretty complex.  An auxiliary package,
[`combinet`](http://ctan.org/pkg/combinet), allows use of the `\title`s and `\author`s
(etc.) of the `\import`ed documents to appear in the global table
of contents.  The basic structure of a combined document would be:
```latex
\documentclass[...]{combine}
...
\begin{document}
...
<introductory materiel>
...
\begin{papers}
% title and author of first article,
% to go the the main ToC
\coltoctitle{...}
\coltocauthor{...}
\label{art1}
\import{art1}
...
\end{papers}
...
<acknowledgements, etc.>
...
\end{document}
```

The [`subfiles`](http://ctan.org/pkg/subfiles) class is used in the component files of a multi-file
project, and the corresponding [`subfiles`](http://ctan.org/pkg/subfiles) package is used in the
master file; so the structure of the master file looks like:
```latex
\documentclass{<whatever>}
...
\usepackage{subfiles}
...
\begin{document}
...
\subfile{subfile_name}
...
\end{document}
```
while a subfile has the structure:
```latex
\documentclass[mainfile_name]{subfiles}
\begin{document}
...
\end{document}
```
Arrangements may be made so that the component files will
be typeset using different page format, etc., parameters than those
used when they are typeset as a part of the main file.

A more 'raw' toolkit is offered by Matt Swift's [`includex`](http://ctan.org/pkg/includex) and
[`newclude`](http://ctan.org/pkg/newclude) packages, both part of the [`frankenstein`](http://ctan.org/pkg/frankenstein)
bundle.  Note that Matt believes [`includex`](http://ctan.org/pkg/includex) is obsolete
(though it continues to work for this author); furthermore, its
replacement, [`newclude`](http://ctan.org/pkg/newclude) remains ''in development'', as it has
been since 1999.

Both [`includex`](http://ctan.org/pkg/includex) and [`newclude`](http://ctan.org/pkg/newclude) enable you to
`\includedoc` complete articles (in the way that you
`\include` chapter files in an ordinary report).  The preamble
(everything up to `\begin{document}`), and everything after
`\end{document}`, is ignored by both packages.  Thus the
packages don't ''do the whole job'' for you, though: you need to
analyse the package use of the individual papers, and ensure that a
consistent set is loaded in the preamble of the main report.  (Both
packages require [`moredefs`](http://ctan.org/pkg/moredefs), which is also part of the
bundle.)

A neat (and simple) toolkit is offered by the
[`docmute`](http://ctan.org/pkg/docmute) package; once the package is loaded, anything
between `\documentclass[...]{...}` and
`\begin{document}` in an `\input`ed or `\include`d
document is ignored, and then the input is processed up to
`\end{document}` in the input file.  The package does nothing
about `\usepackage` (or anything else) in the preamble of the
included document; it's up to the user to ensure that any packages
needed are loaded, and any other necessary configuration is done, in
the parent document.

The [`standalone`](http://ctan.org/pkg/standalone) package develops on the ideas of
[`docmute`](http://ctan.org/pkg/docmute); it was designed to meet the needs of users who are
developing images from one of the more extreme new graphics packages
(notably [`pgf/tikz`](http://ctan.org/pkg/pgf/tikz)) where the compile time of the graphics is
such that separate compilation is very desirable.
[`Standalone`](http://ctan.org/pkg/Standalone) provides a means of developing the graphics in a
convenient way, detached from the development of the document as a
whole; its value for use in multiple documents is clear.

The user includes the [`standalone`](http://ctan.org/pkg/standalone) package in the main
document, and each subfile uses the [`standalone`](http://ctan.org/pkg/standalone) class.
([`Standalone`](http://ctan.org/pkg/Standalone) uses [`article`](http://ctan.org/pkg/article) for the ''real'' work in
stand-alone mode, but it may be asked to use another).

The real difference from the [`docmute`](http://ctan.org/pkg/docmute) package is
flexibility.  In particular, you can ask that the preambles of the
included documents be gathered up, so that you can construct a good
preamble for the master document.

A final ''compile-together'' approach comes from the [`subdocs`](http://ctan.org/pkg/subdocs)
package.  The driver file contains a `\subdocuments` command:
`\subdocuments[options]{file1, file2, ...}`
(the optional arguments provide layout options, such as control over
whether `\clearpage` or `\cleardoublepage` are used between the
files).  Each of the sub-files will execute
  `\usepackage[master]{subdocs}`
to declare the name, `_master_`, of the calling file;
each of the subfiles reads all the `aux` files, so that
tables of contents may be produced.

A completely different approach is to use the [`pdfpages`](http://ctan.org/pkg/pdfpages)
package, and to include articles submitted in PDF format into a
a PDF document produced by PDFLaTeX.  The package
defines an `\includepdf` command, which takes arguments similar to
those of the `\includegraphics` command.  With keywords in the
optional argument of the command, you can specify which pages you want
to be included from the file named, and various details of the layout
of the included pages.

