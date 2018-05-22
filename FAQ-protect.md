# What's the reason for 'protection'?

Sometimes LaTeX saves data it will reread later. These data are
often the argument of some command; they are the so-called moving
arguments.  ('Moving' because data are moved around.)  Candidates
are all arguments that may go into table of contents, list of figures,
_etc_.; namely, data that are written to an auxiliary file and
read in later.  Other places are those data that might appear in head-
or footlines.  Section headings and figure captions are the most
prominent examples; there's a complete list in Lamport's book
(see [TeX-related books](./FAQ-latex-books.html)).

What's going on really, behind the scenes? The commands in moving
arguments are normally expanded to their internal structure during the
process of saving. Sometimes this expansion results in invalid TeX
code, which shows either during expansion or when the code is
processed again. Protecting a command, using
`\protect``\cmd` tells LaTeX to save `\cmd` as
`\cmd`, without expanding it at all.

So, what is a 'fragile command'?&nbsp;&mdash; it's a command that expands into
illegal TeX code during the save process.

What is a 'robust command'?&nbsp;&mdash; it's a command that expands into legal
TeX code during the save process.

Lamport's book says in its description of every LaTeX command whether
it is 'robust' or 'fragile'; it also says that every command with an
optional argument is fragile.  The list isn't reliable, and neither
is the assertion about optional arguments; the statements may have
been true in early versions of LaTeX 2e but are not any longer
necessarily so:
  

-  Some fragile commands, such as `\cite`, have been made robust
    in later revisions of LaTeX.
-  Some commands, such as `\end` and `\nocite`, are fragile
    even though they have no optional arguments.
-  The ''user's way'' of creating a command with an optional
    argument (using `\newcommand` or `\newcommand*`) now always
    creates a robust command (though macros without optional arguments
    may still be fragile if they do things that are themselves fragile).
-  There is no reason that a package author should not also make
    robust commands with optional arguments as part of the package.
-  Some robust commands are redefined by certain packages to be
    fragile (the `\cite` command commonly suffers this treatment).

Further, simply ''hiding'' a fragile command in another command, has
no effect on fragility.  So, if `\fred` is fragile, and you write:
```latex
\newcommand{\jim}{\fred}
```
then `\jim` is fragile too.  There is, however, the
`\newcommand`-replacement `\DeclareRobustCommand`, which
_always_ creates a robust command (whether or not it has optional
arguments).  The syntax of `\DeclareRobustCommand` is substantially
identical to that of `\newcommand`, and if you do the wrapping
trick above as:
```latex
\DeclareRobustCommand{\jim}{\fred}
```
then `\jim` is robust.

Finally, we have the [`makerobust`](http://ctan.org/pkg/makerobust) package, which  defines
`\MakeRobustCommand` to convert a command to be robust.  With the
package, the ''wrapping'' above can simply be replaced by:
```latex
\MakeRobustCommand\fred
```
Whereafter, `\fred` is robust.  Using the package may be reasonable
if you have lots of fragile commands that you need to use in moving
arguments.

In short, the situation is confusing.  No-one believes this is
satisfactory; the LaTeX team have removed the need for
protection of some things, but the techniques available in 
current LaTeX mean that this is an expensive exercise.  It remains
a long-term aim of the team to remove all need for `\protect`ion.

