# How to alter the alignment of tabular cells

One often needs to alter the alignment of a tabular `p` ('paragraph')
cell, but problems at the end of a table row are common.  With a
`p` cell that looks like:
```latex
... & \centering blah ... \\
```
one is liable to encounter errors that complain about a ''misplaced
`\noalign` or ''[extra alignment tab](./FAQ-altabcr.html)'', or the like.
The problem is that the command ` ` means different things in
different circumstances: the `tabular` environment
switches the meaning to a value for use in the table, and
`\centering`, `\raggedright` and `\raggedleft` all change the
meaning to something incompatible.  Note that the problem only
arises in the last cell of a row: since each cell is set into a box,
its settings are lost at the `\&` (or ` `) that
terminates it. 

In the old days, the actual value of ` ` that the
`tabular` environment uses was only available as an
internal command.  Nowadays, the value is a public command, and you
can in principle use it explicitly:
```latex
... & \centering blah ... \tabularnewline
```
(but that's a rather verbose way of doing things).

The [`array`](http://ctan.org/pkg/array) package provides a command `\arraybackslash`
which restores ` ` to its correct (within table) meaning;
the command may be used in [`array`](http://ctan.org/pkg/array)'s ''field format'' preamble
specifications:
```latex
\begin{tabular}{... >{\centering\arraybackslash}p{50mm}}
...
```

The `\tabularnewline` and `\arraybackslash` commands are
(somewhat) modern additions to LaTeX and the [`array`](http://ctan.org/pkg/array)
package, respectively.  In the unlikely event that neither is
available, the user may try the (old) solution which preserves the
meaning of ` `:
```latex
\newcommand\PBS[1]{\let\temp=\\%
  #1%
  \let\\=\temp
}
```
which one uses within a table as:
```latex
... & \PBS\centering blah ... \\
```
or in the preamble as:
```latex
\begin{tabular}{...>{\PBS\centering}p{5cm}}
```

