# The style of section headings

Suppose that the editor of your favourite journal has specified that section
headings must be centred, in small capitals, and subsection headings ragged 
right in italic, but that you don't want to get involved in the sort of
programming described in section 2.2 of _The LaTeX Companion_
  (see [LaTeX books](./FAQ-latex-books.html); the
  [programming](./FAQ-atsigns.html) itself is discussed elsewhere in this
  FAQ).
The following hack will 
probably satisfy your editor. Define yourself new commands
```latex
\newcommand{\ssection}[1]{%
  \section[#1]{\centering\normalfont\scshape #1}}
\newcommand{\ssubsection}[1]{%
  \subsection[#1]{\raggedright\normalfont\itshape #1}}
```
and then use `\ssection` and `\ssubsection` in place of
`\section` and `\subsection`. This isn't perfect: section numbers
remain in bold, and starred forms need a separate redefinition.

The [`titlesec`](http://ctan.org/pkg/titlesec) package offers a structured approach to the
problem, based on redefinition of the sectioning and chapter commands
themselves.  This approach allows it to offer radical adjustment: its
options provide (in effect) a toolbox for designing your own
sectioning commands' output.

The [`sectsty`](http://ctan.org/pkg/sectsty) package provides a more simply structured set of
tools; while it is less powerful than is [`titlesec`](http://ctan.org/pkg/titlesec), it is
perhaps preferable for minor adjustments, since you can use it after
having read a smaller proportion of the manual.

The [`fncychap`](http://ctan.org/pkg/fncychap) package provides a nice collection of customised
chapter heading designs.  The [`anonchap`](http://ctan.org/pkg/anonchap) package provides a
simple means of typesetting chapter headings ''like section headings''
(i.e., without the ''Chapter'' part of the heading); the
[`tocbibind`](http://ctan.org/pkg/tocbibind) package provides the same commands, in pursuit of
another end.

The [`memoir`](http://ctan.org/pkg/memoir) class includes facilities that match
[`sectsty`](http://ctan.org/pkg/sectsty) and [`titlesec`](http://ctan.org/pkg/titlesec), as well as a bundle of
chapter heading styles (including an [`anonchap`](http://ctan.org/pkg/anonchap)-equivalent).
The [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes also have sets of tools that provide
equivalent functionality, notably formatting specifications `\partformat`,
`\chapterformat`, `\sectionformat`, &hellip;, as well as several
useful overall formatting specifications defined in class options.

Finally, the indefatigable Vincent Zoonekynd supplies examples of how
to program alternative 
[chapter heading styles](http://zoonek.free.fr/LaTeX/LaTeX_samples_chapter/0.html)
and
[section heading styles](http://zoonek.free.fr/LaTeX/LaTeX_samples_section/0.html).
The web pages provide programming examples, and expect users to adapt
them to their own LaTeX use.

