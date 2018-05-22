# Footnotes in tables

The standard LaTeX `\footnote` command doesn't work in tables;
the tabular environment (and its ''relations'') traps footnotes, and
they can't escape to the bottom of the page.  As a result, you get
footnote marks in the table, and nothing else.

This accords with common typographic advice: footnotes and tables are
reckoned not to mix.

The solution, if you accept the advice, is to use ''table notes''.
The package [`threeparttable`](http://ctan.org/pkg/threeparttable) provides table notes, and
[`threeparttablex`](http://ctan.org/pkg/threeparttablex) additionally supports them in
`longtable`s.  [`Threeparttable`](http://ctan.org/pkg/Threeparttable) works happily in
ordinary text, or within a `table` float. 

The [`ctable`](http://ctan.org/pkg/ctable) package extends the model of
[`threeparttable`](http://ctan.org/pkg/threeparttable), and also uses the ideas of the
[`booktabs`](http://ctan.org/pkg/booktabs) package.  The `\ctable` command does the complete
job of setting the table, placing the caption, and defining the
notes.  The ''table'' may consist of diagrams, and a parameter in
`\ctable`s optional argument makes the float that is created a
''figure'' rather than a ''table''.

If you really want ''real'' footnotes in tables, despite the expert
advice, you can:
  

-  Use `\footnotemark` to position the little marker
    appropriately, and then put in `\footnotetext` commands to fill in
    the text once you've closed the `tabular` environment.
    This is described in Lamport's book, but it gets messy if there's
    more than one footnote.
-  Stick the `tabular` environment in a
    `minipage`.  Footnotes in the 
    table then ''work'', in the `minipage`s style, with no
    extra effort.  (This is, in effect, somewhat like table notes, but
    the typeset appearance isn't designed for the job.)
-  Use [`tabularx`](http://ctan.org/pkg/tabularx) or [`longtable`](http://ctan.org/pkg/longtable) from the LaTeX
    tools distribution; they're noticeably less efficient than the
    standard `tabular` environment, but they do allow
    footnotes.
-  Use [`tablefootnote`](http://ctan.org/pkg/tablefootnote); it provides a command `\tablefootnote`,
    which does the job without fuss.
-  Use [`footnote`](http://ctan.org/pkg/footnote), which provides an
    `savenotes` which collects all footnotes and emits them
    at the end of the environment; thus if you put your
    `tabular` environment inside a `savenotes`
    environment, the footnotes will appear as needed.  Alternatively,
    you may use `\makesavenoteenv{tabular}` in the preamble of your
    document, and tables will all behave as if they were inside a
    `savenotes` environment.
-  Use [`mdwtab`](http://ctan.org/pkg/mdwtab) from the same bundle; it will handle
    footnotes as you might expect, and has other facilities to increase
    the beauty of your tables.  Unfortunately, it may be incompatible
    with other table-related packages, though not those in the standard 'tools'
    bundle.

All the techniques listed will work, to some extent, whether in a float or
in ordinary text.  The author of this FAQ answer doesn't actually
recommend any of them, believing that table notes are the way to go&hellip;

