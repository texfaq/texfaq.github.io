# Start of line goes awry

This answer concerns two sorts of problems: errors of the form
```latex
! Missing number, treated as zero.
<to be read again> 
                   p
<*> [perhaps]
```
and errors where a single asterisk at the start of a line mysteriously
fails to appear in the typeset output.

Both problems arise because ` ` takes optional arguments.  The
command ` *` means ''break the line here, and inhibit page break
following the line break''; the command ` [`&lsaquo;_dimen_&rsaquo;`]`
means ''break the line here and add &lsaquo;_dimen_&rsaquo; extra vertical space
afterwards''.

The problem arises because ` ` looks for the next
non-blank thing; the test it uses ignores the end of the line in
your input text, so that ` ` comes to imagine that you
were giving it a 'modifier'.

An obvious solution is to enclose the stuff at the start of the new
line in braces, typing:
```latex
{\ttfamily
  /* C-language comment\\
  {[perhaps]} this could be done better\\
  {*}/
}
```
This particular example could be coded (without any problems) in
verbatim, but the behaviour does confuse people.

The problem also appears in maths mode, in arrays and so on.  In this
case, large-scale bracketing of things is _not_ a good idea; the
TeX primitive `\relax` (which does nothing except to block
searches of this nature) may be used.  From another
`comp.text.tex` example:
```latex
\begin{eqnarray}
  [a] &=& b \\
  \relax[a] &=& b
\end{eqnarray}
```
which is a usage this FAQ would not recommend, anyway: refer
to the [reason not to use `eqnarray`](./FAQ-eqnarray.html).

Note that the [`amsmath`](http://ctan.org/pkg/amsmath) package modifies the behaviour of
` ` in maths.  With [`amsmath`](http://ctan.org/pkg/amsmath), the
`eqnarray` example doesn't need any special action
(`\relax` or braces).

