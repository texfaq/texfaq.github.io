# Spaces in macros

It's very easy to write macros that produce space in the typeset
output where it's neither desired nor expected.  Spaces introduced by
macros are particularly insidious because they don't amalgamate with
spaces around the macro (unlike consecutive spaces that you
type), so your output can have a single bloated space that proves
to be made up of two or even more spaces that haven't amalgamated.
And of course, your output can also have a space where none was wanted
at all.

Spaces are produced, inside a macro as elsewhere, by space or tab
characters, or by end-of-line characters.  There are two basic rules
to remember when writing a macro: first, the rules for ignoring spaces
when you're typing macros are just the same as the rules that apply
when you're typing ordinary text, and second, rules for ignoring
spaces do _not_ apply to spaces produced while a macro is being
obeyed (''expanded'').

Spaces are ignored in vertical mode (between paragraphs), at the
beginning of a line, and after a command name.  Since sequences of
spaces are collapsed into one, it 'feels as if' spaces are ignored if
they follow another space.  Space can have syntactic meaning after
certain sorts of non-braced arguments (e.g., _count_ and
_dimen_ variable assignments in Plain TeX) and after certain
control words (e.g., in `\hbox` `to`, so again we have instances
where it 'feels as if' spaces are being ignored when they're merely
working quietly for their living.

Consider the following macro, fairly faithfully adapted from one that
appeared on `comp.text.tex`:
```latex
\newcommand{\stline}[1]{ \bigskip \makebox[2cm]{ \textbf{#1} } }
```
The macro definition contains five spaces:
  

-  after the opening `{` of the macro body; this space will be
    ignored, not because ''because the macro appears at the start of a
    line'', but rather because the macro was designed to operate between
    paragraphs
-  after `\bigskip`; this space will be ignored (while the macro
    is being defined) because it follows a command name
-  after the `{` of the mandatory argument of `\makebox`; even
    though this space will inevitably appear at the start of an output
    line, it will _not_ be ignored
-  after the `}` closing the argument of `\textbf`; this space
    will not be ignored, but may be overlooked if the argument is well
    within the `2cm` allowed for it
-  after the `}` closing the mandatory argument of `\makebox`;
    this space will not be ignored

The original author of the macro had been concerned that the starts of
his lines with this macro in them were not at the left margin, and
that the text appearing after the macro wasn't always properly
aligned.  These problems arose from the space at the start of the
mandatory argument of `\makebox` and the space immediately after the
same argument.  He had written his macro in that way to emphasise the
meaning of its various parts; unfortunately the meaning was rather
lost in the problems the macro caused.

The principal technique for suppressing spaces is the use of
\texttt{
\texttt{
that not even the end of line can contribute an unwanted space).  The
secondary technique is to ensure that the end of line is preceded by a
command name (since the end of line behaves like a space, it will be
ignored following a command name).  Thus the above command would be
written (by an experienced programmer with a similar eye to
emphasising the structure):
```latex
\newcommand{\stline}[1]{%
  \bigskip
  \makebox[2cm]{%
    \textbf{#1}\relax
  }%
}
```
Care has been taken to ensure that every space in the revised
definition is ignored, so none appears in the output.  The revised
definition takes the ''belt and braces'' approach, explicitly dealing
with every line ending (although, as noted above, a space introduced
at the end of the first line of the macro would have been ignored in
actual use of the macro.  This is the best technique, in fact&nbsp;&mdash; it's
easier to blindly suppress spaces than to analyse at every point
whether you actually need to.  Three techniques were used to suppress
spaces:
  

-  placing a[[[texttt]]]
    (as in the 1st, 3rd and 5th lines),
-  ending a line 'naturally' with a control sequence, as in line 2,
    and
-  ending a line with an 'artificial' control sequence, as in line
    4; the control sequence in this case (`\relax`) is a no-op in many
    circumstances (as here), but this usage is deprecated&nbsp;&mdash; a
   [[[texttt]]]

Beware of the (common) temptation to place a space _before_ a
\texttt{
the[[[texttt]]]

In ''real life'', of course, the spaces that appear in macros are far
more cryptic than those in the example above.  The most common spaces
arise from unprotected line ends, and this is an error that
occasionally appears even in macros written by the most accomplished
programmers.

