# Adjusting the presentation of section numbers

The general issues of adjusting the appearance of section headings are
pretty complex, and are covered in 
the question on
[the style of section headings](./FAQ-secthead.html).

However, people regularly want merely to change the way the section
number appears in the heading, and some such people don't mind writing
out a few macros.  This answer is for _them_.

The section number is typeset using the
  [LaTeX internal](./FAQ-atsigns.html)
`seccntformat` command, which is given the ''name'' (section,
subsection, &hellip;) of the heading, as argument.  Ordinarily,
`seccntformat` 
merely outputs the section number, and then a `\quad` of space:
```latex
\renewcommand*{\@seccntformat}[1]{%
  \csname the#1\endcsname\quad
}
```
Suppose you want to put a stop after every section (subsection,
subsubsection, &hellip;) number, a trivial change may be implemented by
simple modification of the command:
```latex
\renewcommand*{\@seccntformat}[1]{%
  \csname the#1\endcsname.\quad
}
```
However, many people want to modify section numbers, but not
subsection numbers, or any of the others.  To do this, one must make
`seccntformat` switch according to its argument.  The following
technique for doing the job is slightly wasteful, but is efficient
enough for a relatively rare operation:
```latex
\renewcommand*{\@seccntformat}[1]{%
  \csname the#1\endcsname
  \csname adddot@#1\endcsname\quad
}
```
which uses a second-level command to provide the dot, if it has been
defined; otherwise it merely appends `\relax` (which does nothing
in this context).  The definition of the second-level command (the
version for the `section`, here) specifies what to put after a
section number, but it could be used to put anything after it:
```latex
\newcommand*{\adddot@section}{.}
```
Note that all the command definitions above are dealing in
[LaTeX internal commands](./FAQ-atsigns.html), so the above
code should be in a package file, for preference.

The [`Koma-script`](http://ctan.org/pkg/Koma-script) classes have different commands for specifying
changes to section number presentation: `\partformat`,
`\chapterformat` and `\othersectionlevelsformat`, but otherwise
their facilities are similar to those of ''raw'' LaTeX.

