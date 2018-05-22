# What is Texinfo?

Texinfo is a documentation system that uses one source file to produce
both on-line information and printed output.  So instead of writing
two different documents, one for the on-line help and the other for a
typeset manual, you need write only one document source file.  When
the work is revised, you need only revise one document.  By
convention, Texinfo source file names end with a `texi` or
`texinfo` extension.

Texinfo is a macro language, somewhat similar to LaTeX, but with
slightly less expressive power.  Its appearance is of course rather
similar to any TeX-based macro language, except that its macros
start with `@` rather than the `\` that's more commonly used in
TeX systems.

You can write and format Texinfo files into Info files within GNU
`emacs`, and read them using the `emacs` Info
reader.  You can also format Texinfo files into Info files using
`makeinfo` and read them using `info`, so you're not
dependent on `emacs`.  The distribution includes a
`Perl` script, `texi2html`, that will convert
Texinfo sources into HTML: the language is a far better fit to
HTML than is LaTeX, so that the breast-beating agonies of
[converting LaTeX to HTML](./FAQ-LaTeX2HTML.html) are largely
avoided.

Finally, of course, you can also print the files, or convert them to
PDF using PDFTeX.

