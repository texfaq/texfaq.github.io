# Improper `\hyphenation` will be flushed

For example
```latex
! Improper \hyphenation will be flushed.
\'#1->{
       \accent 19 #1}
<*> \hyphenation{Ji-m\'e
                        -nez}
```
(in Plain TeX) or
```latex
! Improper \hyphenation will be flushed.
\leavevmode ->\unhbox 
                      \voidb@x 
<*> \hyphenation{Ji-m\'e
                        -nez}
```
in LaTeX.

As mentioned in
  ''[hyphenation failures](./FAQ-nohyph.html)'',
''words'' containing `\accent` commands may not be hyphenated.  As
a result, any such word is deemed improper in a `\hyphenation`
command.

Hyphenation happens as paragraphs are laid out; by this time, TeX
knows what font is used for each glyph; thus it knows the encoding
being used.  So the solution to the problem is to use a font that
contains the accented character; doing this this ''hides'' the accent
from the hyphenation mechanisms.

For LaTeX users, this is quite an easy task; they select an 8-bit
font with the package, as in `\usepackage[T1]{fontenc}`, and
accented-letter commands such as the `\``e` in
`\hyphenation{Ji-m`\`e-nez}` automatically become the
single accented character by the time the hyphenation gets to look at
it.

