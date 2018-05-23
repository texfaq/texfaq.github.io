---
section: Adjusting the typesetting
subsection: Tables of contents and indexes
revised: 2014-06-10
---
# Table of contents, etc., per chapter

The common style, of a ''small'' table of contents for each part,
chapter, or even section, is supported by the [`minitoc`](https://ctan.org/pkg/minitoc)
package.  The package also supports mini-lists of tables and figures;
but, as the documentation observes, mini-bibliographies present a
different problem&nbsp;&mdash; see
[bibliographies per chapter](FAQ-chapbib.md).

The package's basic scheme is to generate a little `aux` file for
each chapter, and to process that within the chapter.  Simple usage
would be:
```latex
\usepackage{minitoc}
...
\begin{document}
...
\dominitoc \tableofcontents
\dominilof \listoffigures
...
\chapter{blah blah}
\minitoc \mtcskip \minilof
...
```
though a lot of elaborations are possible (for example, you don't need
a `\minitoc` for every chapter).

[`Babel`](https://ctan.org/pkg/Babel) doesn't know about [`minitoc`](https://ctan.org/pkg/minitoc), but
[`minitoc`](https://ctan.org/pkg/minitoc) makes provision for other document languages than
English&nbsp;&mdash; a wide variety is available.  Fortunately, the current
version of the [`hyperref`](https://ctan.org/pkg/hyperref) package does know about
[`minitoc`](https://ctan.org/pkg/minitoc) and treats `\minitoc` tables in the
same way as ''real'' tables of contents.

