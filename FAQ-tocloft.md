# The format of the Table of Contents, etc.

The formats of entries in the table of contents (TOC) are
controlled by a number of internal commands (discussed in section&nbsp;2.3
of [_The LaTeX Companion_](./FAQ-latex-books.html).  The commands
`pnumwidth`, `tocrmarg` and `dotsep` control the space
for page numbers, the indentation of the right-hand margin, and the
separation of the dots in the dotted leaders, respectively.  The
series of commands named `\l@_xxx_`, where `_xxx_`
is the name of a sectional heading (such as `chapter` or
`section`, &hellip;) control the layout of the corresponding
heading, including the space for section numbers.  All these internal
commands may be individually redefined to give the effect that you
want.

All that work may be avoided, using the package [`tocloft`](http://ctan.org/pkg/tocloft)
which provides a set of user-level commands that may be used to change
the TOC formatting.  Since exactly the same mechanisms are used
for the List of Figures and List of Tables, the layout of these
sections may be controlled in the same way.

The [`etoc`](http://ctan.org/pkg/etoc) package offers similar flexibility, together with
multicolumn tables of contents and boxes around tables (and the like).

The [`KOMA-Script`](http://ctan.org/pkg/KOMA-Script) classes provides an optional variant structure
for the table of contents, and calculates the space needed for the
numbers automatically.  The [`memoir`](http://ctan.org/pkg/memoir) class includes the functionality
of [`tocloft`](http://ctan.org/pkg/tocloft).

