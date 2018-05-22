# `` and `@` in macro names

Macro names containing `@` are _internal_ to LaTeX, and
without special treatment just don't work in ordinary use.  A nice
example of the problems caused is discussed in 
[`` in vertical mode](./FAQ-atvert.html)''.

The problems users see are caused by copying bits of a class
(`cls` file) or 
package (`sty` file) into a document, or by including a class or
package file into a LaTeX document by some means other than
`\documentclass` or `\usepackage`.  LaTeX defines internal
commands whose names contain the character `@` to
avoid clashes between its internal names and names that we would
normally use in our documents.  In order that these commands may work
at all, `\documentclass` and `\usepackage` play around with the
meaning of `@`.

If you've included a file some other way (for example, using
`\input`), you can probably solve the problem by using the correct
command.

If you're using a fragment of a package or class, you may well feel
confused: books such as the first edition of the 
[The LaTeX Companion](./FAQ-latex-books.html) 
are full of fragments of packages as examples for you to employ.
The second edition of the _Companion_ makes clearer how you
should use these fragments, and in addition, the code of
all the examples is now available on CTAN.
To see the technique in practice, look at the example below, from file
`2-2-7.ltx` in the _Companion_ examples directory:
```latex
\makeatletter
\renewcommand\subsection{\@startsection
  {subsection}{2}{0mm}%name, level, indent
  {-\baselineskip}%             beforeskip
  {0.5\baselineskip}%            afterskip
  {\normalfont\normalsize\itshape}}% style
\makeatother
```
(That example appears on page 29 of _The LaTeX Companion_,
second edition.)

The alternative is to treat all these fragments as a package proper,
bundling them up into a `sty` file and including them with
`\usepackage`; this way you hide your LaTeX internal code somewhere
that LaTeX internal code is expected, which often looks 'tidier'.

