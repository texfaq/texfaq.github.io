# Why use [`fontenc`](http://ctan.org/pkg/fontenc) rather than [`t1enc`](http://ctan.org/pkg/t1enc)?

In the very earliest days of LaTeX 2e, the only way to use the
T1 encoding was [`t1enc`](http://ctan.org/pkg/t1enc); with the summer 1994
''production'' release, the [`fontenc`](http://ctan.org/pkg/fontenc) package appeared, and
provided comprehensive support for use of the encoding.

Nevertheless, the [`t1enc`](http://ctan.org/pkg/t1enc) package remains (as part of the
LaTeX 2.09 compatibility code), but it does very little: it merely
selects font encoding T1, and leaves to the user the business
of generating the character codes required.

Generating such character codes could be a simple matter, _if_
the T1 encoding matched any widely-supported encoding standard,
since in that case, one might expect one's keyboard to generate the
character codes.  However, the T1 encoding is a mix of several
standard encodings, and includes code points in areas of the table
which standard encodings specifically exclude, so no T1
keyboards have been (or ever will be) manufactured.

By contrast, the [`fontenc`](http://ctan.org/pkg/fontenc) package generates the T1
code points from ordinary LaTeX commands (e.g., it generates the
`&eacute;` character codepoint from the command `\``e`).
So, unless you have program-generated T1 input (which is almost
inconceivable), use `\usepackage[T1]{fontenc}` rather than
`\usepackage{t1enc}`.

