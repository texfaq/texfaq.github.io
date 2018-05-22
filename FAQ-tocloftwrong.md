# Numbers too large in table of contents, etc.

LaTeX constructs the table of contents, list of figures, tables,
and similar tables, on the basis of a layout specified in the class.
As a result, they do _not_ react to the sizes of things in them,
as they would if a `tabular` environment (or something
similar) was used.

This arrangement can provoke problems, most commonly with deep section
nesting or very large page numbers: the numbers in question just don't
fit in the space allowed for them in the class.

A separate answer discusses 
[re-designing the tables](./FAQ-tocloft.html)
and techniques from that answer may be employed to make the numbers
fit:
```latex
\setlength\cftsectionnumwidth{4em}
```

The same command may be employed in documents typeset with the
[`memoir`](http://ctan.org/pkg/memoir) package (by the same author as [`tocloft`](http://ctan.org/pkg/tocloft)).

[`Memoir`](http://ctan.org/pkg/Memoir) has another mechanism for the job:
`\cftsetindents{&lsaquo;_kind_&rsaquo;}{indent}{numwidth}`.  Here
_kind_ is `chapter`, `section`, or whatever; the
_indent_ specifies the 'margin' before the entry starts; and the
_width_ is of the box into which the number is typeset (so needs
to be wide enough for the largest number, with the necessary spacing
to separate it from what comes after it in the line.

