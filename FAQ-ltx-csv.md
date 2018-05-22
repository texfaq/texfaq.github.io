# Process a CSV file in LaTeX




Comma-separated-variable (CSV) files are a common means of
interchanging simple data between applications; for example, most
spreadsheet applications can provide files containing tables of
numbers with commas between them.  One can envisage these tables as
''LaTeX tables'', and the packages to process them all provide
table generation, one way or another.


For rather a long time, the canonical tools for dealing with such
files have been those provided in the [`datatool`](http://ctan.org/pkg/datatool) bundle;
packages in the bundle allow the user to write procedures to process
numbers, currency amounts, names, etc., and to display them in tables
(including pie charts).


The [`csvsimple`](http://ctan.org/pkg/csvsimple) does similar tasks.  Its processing is
controlled by keys established via the [`pgfkeys`](http://ctan.org/pkg/pgfkeys) package,
which define how each row of the CSV file is to be processed.


For usage ''nearer to the bone'', one might consider the commands
`\docsvlist` and `\forcsvlist` (from the [`etoolbox`](http://ctan.org/pkg/etoolbox)
package).  The first uses the time-honoured LaTeX technique of
changing the definition of a `\do` command; it runs through the
list, and processes every item of the list as the argument of the
`\do` command; so:
```latex
\begin{itemize}
\renewcommand*{\do}[1]{\item #1}
\docsvlist{item1, item2, {item3a, item3b}, item4}
\end{itemize}
```
will convert the elements of a CSV list into an itemised list.


The macro `\forcsvlist` applies a function to each element of a
CSV list; this can of course be used to implement
`\docsvlist`, at the cost of a little clarity.








