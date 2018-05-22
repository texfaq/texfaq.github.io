# The design of tables

In recent years, several authors have argued that the examples, set
out by Lamport in his [LaTeX manual](./FAQ-latex-books.html), have cramped
authors' style and have led to extremely poor table design.  It is in
fact difficult even to work out what many of the examples in Lamport's
book ''mean''.

The criticism focuses on the excessive use of rules (both horizontal
and vertical) and on the poor vertical spacing that Lamport's macros
offer.

The problem of vertical spacing is plain for all to see, and is
addressed in several packages&nbsp;&mdash; see 
''[spacing of lines in tables](./FAQ-struttab.html)''.

The argument about rules is presented in the excellent essay that
prefaces the documentation of Simon Fear's [`booktabs`](http://ctan.org/pkg/booktabs) package,
which (of course) implements Fear's scheme for 'comfortable' rules.
(The same rule commands are implemented in the [`memoir`](http://ctan.org/pkg/memoir) class.)

Lamport's LaTeX was also inflexibly wrong in ''insisting'' that
captions should come at the bottom of a table.  Since a table may
extend over several pages, traditional typography places the caption
at the top of a table float.  The `\caption` command will get its
position wrong (by `10pt`) if you simply write:
```latex
\begin{table}
  \caption{Example table}
  \begin{tabular}{...}
    ...
  \end{tabular}
\end{table}
```
The [`topcapt`](http://ctan.org/pkg/topcapt) package solves this problem:
```latex
\usepackage{topcapt}
...
\begin{table}
  \topcaption{Example table}
  \begin{tabular}{...}
    ...
  \end{tabular}
\end{table}
```
The [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes provide a similar command
`\captionabove`; they also have a class option
`tablecaptionabove` which arranges that `\caption`
_means_ `\captionabove`, in table environments.  The
[`caption`](http://ctan.org/pkg/caption) package may be loaded
with an option that has the same effect:
```latex
\usepackage[tableposition=top]{caption}
```
or the effect may be established after the package has been  loaded:
```latex
\usepackage{caption}
\captionsetup[table]{position=above}
```
(Note that the two ''position'' options are different: actually,
''above'' and ''top'' in these contexts mean the same thing.)

Doing the job yourself is pretty easy: [`topcapt`](http://ctan.org/pkg/topcapt) switches the
values of the LaTeX 2e parameters `\abovecaptionskip` (default
value `10pt`) and `\belowcaptionskip` (default value
`0pt`), so:
```latex
\begin{table}
  \setlength{\abovecaptionskip}{0pt}
  \setlength{\belowcaptionskip}{10pt}
  \caption{Example table}
  \begin{tabular}{...}
    ...
  \end{tabular}
\end{table}
```
does the job (if the length values are right; the package and classes
are more careful!).

