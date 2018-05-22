# How to create a `\subsubsubsection`

LaTeX's set of ''sections'' stops at the level of
`\subsubsection`.  This reflects a design decision by Lamport&nbsp;&mdash;
for, after all, who can reasonably want a section with such huge
strings of numbers in front of it?

In fact, LaTeX standard classes _do_ define ''sectioning''
levels lower than `\subsubsection`, but they don't format them like
sections (they're not numbered, and the text is run-in after the
heading).  These deeply inferior section commands are `\paragraph`
and `\subparagraph`; you can (if you _must_) arrange that these
two commands produce numbered headings, so that you can use them as
`\subsubsubsection`s and lower.

The [`titlesec`](http://ctan.org/pkg/titlesec) package provides a sensible set of macros for
you to adjust the definitions of the sectioning macros, and it may be
used to transform a `\paragraph`s typesetting so that it looks
like that of a `\section`.

If you want to program the change yourself, you'll find that the
commands (`\section` all the way down to `\subparagraph`) are
defined in terms of the internal `startsection` command, which
takes 6&nbsp;arguments.  Before attempting this sort of work, you are well
advised to read the LaTeX sources (`ltsect.dtx` in the
LaTeX distribution) and the source of the standard packages
(`classes.dtx`), or to make use of the 
[LaTeX Companion](./FAQ-latex-books.html), which
discusses the use of `startsection` for this sort of thing.

You will note that Lamport didn't go on adding `sub` to the
names of sectioning commands, when creating commands for the lowest
levels of a document.  This would seem sensible to any but the most
rigorous stickler for symmetry&nbsp;&mdash; it would surely challenge pretty
much anyone's reading of the source of a document, if there was a need
to distinguish `\subsubsubsection` and `\subsubsubsubsection`

