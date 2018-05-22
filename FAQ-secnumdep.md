# Unnumbered sections in the Table of Contents

The way the relevant parts of sectioning commands work is exemplified
by the way the `\chapter` command uses the counter `secnumdepth`
(described in Appendix&nbsp;C of the LaTeX manual):
  

1.  put something in the `aux` file, which will appear in
    the `toc`;
3.  if the `secnumdepth` counter is greater than or equal to
    zero,
    increase the counter for the chapter and write it out.
4.  write the chapter title.

Other sectioning commands are similar, but with other values used in
the test.

So a simple way to get headings of funny 'sections' such as prefaces
in the table of contents is to use the counter:
```latex
\setcounter{secnumdepth}{-1}
\chapter{Preface}
```
Unfortunately, you have to set `secnumdepth` back to its usual
value (which is&nbsp;2 in the standard styles) before you do any 'section'
which you want to be numbered.

Similar settings are made, automatically, in the LaTeX book class by
the `\frontmatter` and `\backmatter` commands.

The value of the counter `tocdepth` controls which headings
will be finally printed in the table of contents; it is normally set
in the preamble and is a constant for the document.  The package
[`tocvsec2`](http://ctan.org/pkg/tocvsec2) package takes the tedium out of changing the
`secnumdepth` and/or the `tocdepth` counter values at
any point in the body of the document; the commands (respectively)
`\setsecnumdepth` and `\settocdepth` make the changes based on
the _name_ of the sectional unit (`chapter`,
`section`, etc.).

The package [`abstract`](http://ctan.org/pkg/abstract) (see 
[one-column abstracts](./FAQ-onecolabs.html)) includes an option
to add the `abstract` to the table of contents, while the
package [`tocbibind`](http://ctan.org/pkg/tocbibind) has options to include the table of
contents itself, the `bibliography`, `index`, etc., to
the table of contents.

The [`KOMA-Script`](http://ctan.org/pkg/KOMA-Script) classes have commands `\addchap` and
`\addled`, which work like `\chapter` and `\section` but
aren't numbered.  The [`memoir`](http://ctan.org/pkg/memoir) class incorporates the facilities
of all three of the [`abstract`](http://ctan.org/pkg/abstract), [`tocbibind`](http://ctan.org/pkg/tocbibind) and
[`tocvsec2`](http://ctan.org/pkg/tocvsec2) packages.

