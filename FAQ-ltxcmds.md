# The definitions of LaTeX commands

There are several reasons to want to know the definitions of LaTeX
commands: from the simplest ''idle curiosity'', to the pressing need
to patch something to make it ''work the way you want it''.  None of
these are _pure_ motives, but knowledge and expertise seldom
arrive through the purest of motives.

Using a TeX executable of some sort, the simple answer is to try
`\show`, in a run that is taking commands from the terminal:
```latex
*\makeatletter
*\show\protected@edef
> \protected@edef=macro:
->\let \@@protect \protect
  \let \protect \@unexpandable@protect
  \afterassignment \restore@protect \edef .
```
(I've rearranged the output there, from the rather confused version
TeX itself produces.)

So, what about `unexpandable@protect`?:
```latex
*\show\@unexpandable@protect
> \@unexpandable@protect=macro:
->\noexpand \protect \noexpand .
```
and we're starting to see how one part of the `\protect`ion
mechanism works (one can probably fairly safely guess what
`\restore@protect` does).

Many kernel commands are declared robust:
```latex
*\show\texttt
> \texttt=macro:
->\protect \texttt  .
```
so that `\show` isn't much help.  Define a command `\pshow` as
shown below, and simply execute the command to find its definition:
```latex
*\def\pshow#1{{\let\protect\show #1}}
*\pshow\texttt
> \texttt =\long macro:
#1->\ifmmode \nfss@text {\ttfamily #1}%
    \else \hmode@bgroup \text@command {#1}%
          \ttfamily \check@icl #1\check@icr
    \expandafter \egroup \fi .
```
Note that the command name that is protected is the 'base' command,
with a space appended.  This is cryptically visible, in a couple of
places above.  (Again, the output has been sanitised.)

The command `texdef` (or `latexdef`&nbsp;&mdash; the same
command with a different name) will do all that for you and return the
results slightly more tidily than LaTeX itself manages.  For
example:
```latex
$ latexdef texttt
```
gives:
```latex
macro:->\protect \texttt  

\texttt :
#1->\ifmmode \nfss@text {\ttfamily #1}%
    \else \hmode@bgroup \text@command {#1}%
          \ttfamily \check@icl #1\check@icr
    \expandafter \egroup \fi .
```
(again, the output has been sanitised&nbsp;&mdash; but we see that
`latexdef` has useful 'intelligence' in it, as it has spotted
and dealt with the `\protect`.)

With the `-s` switch, `latexdef` will give you a
source location:
```latex
$ latexdef -s texttt
% latex.ltx, line 3736:
\DeclareTextFontCommand{\texttt}{\ttfamily}
```
though one should note that it doesn't give you the detail of the
actual coding, merely the definition's location.

Environments also surrender their details to `latexdef`:
```latex
$ latexdef -E itemize

\itemize:
macro:->\ifnum \@itemdepth >\thr@@ \@toodeep 
  \else \advance \@itemdepth \@ne
    \edef \@itemitem {labelitem\romannumeral \the \@itemdepth}%
    \expandafter \list \csname \@itemitem \endcsname
      {\def \makelabel ##1{\hss \llap {##1}}}%
  \fi 

\enditemize:
macro:->\global \advance \@listdepth \m@ne \endtrivlist 
```
(Yet again, this is a sanitised version of the macro definition
output, which appears as a single very wide line for each definition.)

If one has a malleable text editor, the same investigation may be
conducted by examining the file `latex.ltx` (which is usually to
be found, in a TDS system, in directory `tex/latex/base`).

In fact, `latex.ltx` is the product of a `docstrip`
process on a large number of [`dtx` files](./FAQ-dtx.html), and
you can refer to those instead.  The LaTeX distribution includes a file
`source2e.tex`, and most systems retain it, again in
`tex/latex/base`.  `Source2e.tex` may be processed to
provide a complete source listing of the LaTeX kernel (in fact the
process isn't entirely straightforward, but the file produces messages
advising you what to do).  The result is a huge document, with a
line-number index of control sequences the entire kernel and a
separate index of changes recorded in each of the files since the
LaTeX team took over.

The printed kernel is a nice thing to have, but it's unwieldy and sits
on my shelves, seldom used.  One problem is that the comments are
patchy: the different modules range from well and lucidly documented,
through modules documented only through an automatic process that
converted the documentation of the source of LaTeX 2.09, to modules
that hardly had any useful documentation even in the LaTeX 2.09 original.

In fact, each kernel module `dtx` file will process separately
through LaTeX, so you don't have to work with the whole of
`source2e`.  You can easily determine which module defines the
macro you're interested in: use your ''malleable text editor'' to find
the definition in `latex.ltx`; then search backwards from that
point for a line that starts 
\texttt{
tells you which `dtx` file contains the definition you are interested
in.  Doing this for `\protected@edef`, we find:
```latex
%%% From File: ltdefns.dtx
```
When we come to look at it, `ltdefns.dtx` proves to contain
quite a dissertation on the methods of handling `\protect`ion; it
also contains some automatically-converted LaTeX 2.09 documentation.

And of course, the kernel isn't all of LaTeX: your command may be
defined in one of LaTeX's class or package files.  For example, we
find a definition of `\thebibliography` in [`article`](http://ctan.org/pkg/article), but
there's no `article.dtx`.  Some such files are generated from
parts of the kernel, some from other files in the distribution.  You
find which by looking at the start of the file: in `article.cls`,
we find:
```latex
%% This is file `article.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `article')
```
so we need to format `classes.dtx` to see the definition in
context.

All these .dtx files are on CTAN as part of the main LaTeX
distribution.

