# How to adjust list spacing

[Lamport's book](./FAQ-latex-books.html) lists various
parameters for the layout of list (things like `\topsep`,
`\itemsep` and `\parsep`), but fails to mention that they're set
automatically within the standard (LaTeX-defined) lists.  This
happens because each list
executes a command `list``&lsaquo;_depth_&rsaquo;` (the depth
appearing as a lower-case roman numeral); what's more, the top-level
`listi` is usually reset when the font size is changed.  As a
result, it's rather tricky for 
the user to control list spacing.  Of course, the real answer is to use
a document class designed with more modest list spacing, but we all
know such things are hard to come by.  The [`memoir`](http://ctan.org/pkg/memoir) class doesn't
provide more compact lists, but offers the user control over the list
spacing using `\firmlist` and `\tightlist` (and `*`-ed
versions of them); see section&nbsp;8.6 of the memoir manual.

There are packages that provide some control of list spacing, but they
seldom address the separation from surrounding text (defined by
`\topsep`).  The [`expdlist`](http://ctan.org/pkg/expdlist) package, among its many controls
of the appearance of `description` lists, offers a
compaction parameter (see the documentation); the [`mdwlist`](http://ctan.org/pkg/mdwlist)
package offers a `\makecompactlist` command for users' own list
definitions, and uses it to define compact lists
`itemize*`, `enumerate*` and
`description*`.  In fact, you can write lists such as
these commands define pretty straightforwardly&nbsp;&mdash; for example:
```latex
\newenvironment{itemize*}%
  {\begin{itemize}%
    \setlength{\itemsep}{0pt}%
    \setlength{\parskip}{0pt}}%
  {\end{itemize}}
```
The [`paralist`](http://ctan.org/pkg/paralist) package provides several approaches to list
compaction:
  

-  its `asparaenum` environment formats each item as if
    it were a paragraph introduced by the enumeration label (which saves
    space if the item texts are long);
-  its `compactenum` environment is the same sort of
    compact list as is provided in [`expdlist`](http://ctan.org/pkg/expdlist) and
    [`mdwlist`](http://ctan.org/pkg/mdwlist); and
-  its `inparaenum` environment produces a list ''in
    the paragraph'', i.e., with no line break between items, which is a
    great space-saver if the list item texts are short.

The package will manipulate its `enumerate` environment
labels just like the [[`enumerate`](http://ctan.org/pkg/enumerate) package](./FAQ-enumerate.html)
does.

[`Paralist`](http://ctan.org/pkg/Paralist) also provides `itemize` equivalents
(`asparaitem`, etc.), and `description`
equivalents (`asparadesc`, etc.).

The [`multenum`](http://ctan.org/pkg/multenum) package offers a more regular form of
[`paralist`](http://ctan.org/pkg/paralist)'s `inparaenum`; you define a notional
grid on which list entries are to appear, and list items will always
appear at positions on that grid.  The effect is somewhat like that of
the 'tab' keys on traditional typewriters; the package was designed
for example sheets, or lists of answers in the appendices of a book.

The [`expdlist`](http://ctan.org/pkg/expdlist), [`mdwlist`](http://ctan.org/pkg/mdwlist) and [`paralist`](http://ctan.org/pkg/paralist)
packages all offer other facilities for list configuration: you should
probably not try the ''do-it-yourself'' approaches outlined below if
you need one of the packages for some other list configuration
purpose.

For ultimate flexibility (including manipulation of `\topsep`), the
[`enumitem`](http://ctan.org/pkg/enumitem) package permits adjustment of list parameters using
a ''_key_=&lsaquo;_value_&rsaquo;'' format.
For example, one might write
```latex
\usepackage{enumitem}
...
\begin{enumerate}[topsep=0pt, partopsep=0pt]
\item ...
\item ...
\end{enumerate}
```
to suppress all spacing above and below your list, or
```latex
\usepackage{enumitem}
...
\begin{enumerate}[itemsep=2pt,parsep=2pt]
\item ...
\item ...
\end{enumerate}
```
to set spacing between items and between paragraphs within items.
[`Enumitem`](http://ctan.org/pkg/Enumitem) also permits manipulation of the label format in a
more ''basic'' (and therefore more flexible) manner than the 
[[`enumerate`](http://ctan.org/pkg/enumerate) package](./FAQ-enumerate.html) does.

The ultimate in compaction (of every sort) is offered by the
[`savetrees`](http://ctan.org/pkg/savetrees) package; compaction of lists is included.  The
package's prime purpose is to save space at every touch and turn:
don't use it if you're under any design constraint whatever!

