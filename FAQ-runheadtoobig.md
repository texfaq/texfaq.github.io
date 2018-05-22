# My section title is too wide for the page header

By default, LaTeX sectioning commands make the chapter or section
title available for use by page headers and the like.  Page headers
operate in a rather constrained area, and it's common for titles too
be too big to fit: the LaTeX sectioning commands therefore take an
optional argument:
```latex
\section[short title]{full title}
```
If the &lsaquo;_short title_&rsaquo; is present, it is used both for the table of
contents and for the page heading.  The usual answer to people who
complain that their title is too big for the running head is to
suggest that they the optional argument.

However, using the same text for the table of contents as for the
running head may also be unsatisfactory: if your chapter titles are
seriously long (like those of a Victorian novel), a valid and rational
scheme is to have a shortened table of contents entry, and a really
terse entry in the running head.

One of the problems is the tendency of page headings to be set in
capitals (which take up more space); so why not set headings as written
for ''ordinary'' reading?  It's not possible to do so with unmodified
LaTeX, but the [`fancyhdr`](http://ctan.org/pkg/fancyhdr) package provides a command
`\nouppercase` for use in its header (and footer) lines to suppress
LaTeX's uppercasing tendencies.  Classes in the [`KOMA-script`](http://ctan.org/pkg/KOMA-script)
bundle don't uppercase in the first place.

In fact, the sectioning commands use 'mark' commands to pass
information to the page headers.  For example, `\chapter` uses
`\chaptermark`, `\section` uses `\sectionmark`, and so on.  With
this knowledge, one can achieve a three-layer structure for chapters:
```latex
\chapter[middling version]{verbose version}
\chaptermark{terse version}
```
which should supply the needs of every taste.

Chapters, however, have it easy: hardly any book design puts a page
header on a chapter start page.  In the case of sections, one has
typically to take account of the nature of the `\*mark` commands:
the thing that goes in the heading is the first mark on the page (or,
failing any mark, the last mark on any previous page).  As a result
the recipe for sections is more tiresome:
```latex
\section[middling version]{verbose version%
              \sectionmark{terse version}}
\sectionmark{terse version}
```
(the first `\sectionmark` deals with the header of the page the
`\section` command falls on, and the second deal with subsequent
pages; note that here, you need the optional argument to `\section`,
even if ''_middling version_'' is in fact the same text as
''_long version''_.)

A similar arrangement is necessary even for chapters if the class
you're using is odd enough that it puts a page header on a chapter's
opening page.

Note that the [`titlesec`](http://ctan.org/pkg/titlesec) package manages the running heads in
a completely different fashion; for example, you can use the optional
argument of sectioning commands for page headers, only, by loading the
package as:
```latex
\usepackage[toctitles]{titlesec}
```
The package documentation offers other useful techniques in this area.

The [`memoir`](http://ctan.org/pkg/memoir) class avoids all the silliness by providing an
extra optional argument for chapter and sectioning commands, for
example:
```latex
\section[middling version][terse version]{verbose version}
```
As a result, it is always possible for users of [`memoir`](http://ctan.org/pkg/memoir) to
tailor the header text to fit, with very little trouble.

