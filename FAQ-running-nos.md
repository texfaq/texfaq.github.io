# Running equation, figure and table numbering




Many LaTeX classes (including the standard [`book`](http://ctan.org/pkg/book) class)
number things per chapter; so figures in chapter 1 are numbered 1.1,
1.2, and so on.  Sometimes this is not appropriate for the user's
needs.


Short of rewriting the whole class, one may use the [`chngcntr`](http://ctan.org/pkg/chngcntr)
package, which provides commands `\counterwithin` (which
establishes this nested numbering relationship) and
`\counterwithout` (which undoes it).


So if you have figures numbered by chapter as 1.1, 1.2, 2.1, &hellip;,
the command 
```latex
\counterwithout{figure}{chapter}
```
will convert them to figures 1, 2, 3, &hellip;.  (Note that the command
has also removed the chapter number from the counter's definition.)


More elaborate use could change things numbered per section to things
numbered per chapter:
```latex
\counterwithout{equation}{section}
\counterwithin{equation}{chapter}
```
(assuming there was a class that did such a thing in the first place...)


The [`chngcntr`](http://ctan.org/pkg/chngcntr) approach doesn't involve much programming, and
the enthusiastic LaTeX programmer might choose to try the technique
that we had to use before the advent of [`chngcntr`](http://ctan.org/pkg/chngcntr).  Each of
the packages [`removefr`](http://ctan.org/pkg/removefr) and [`remreset`](http://ctan.org/pkg/remreset) defines a
`removefromreset` command, and having included the package one
writes something like:
```latex
\makeatletter
\@removefromreset{figure}{chapter}
\makeatother
```
and the automatic renumbering stops.  You may then need to redefine the
way in which the figure number (in this case) is printed:
```latex
\makeatletter
\renewcommand{\thefigure}{\@arabic\c@figure}
\makeatother
```
(remember to do the whole job, for every counter you want to
manipulate, within `\makeatletter` &hellip; `\makeatother`).


This technique, too, may be used to change where in a multilevel
structure a counter is reset.  Suppose your class numbers figures as
&lsaquo;_chapter_&rsaquo;.&lsaquo;_section_&rsaquo;.&lsaquo;_figure_&rsaquo;, and you want figures
numbered per chapter, try:
```latex
\makeatletter
\@removefromreset{figure}{section}
\@addtoreset{figure}{chapter}
\renewcommand{\thefigure}{\thechapter.\@arabic\c@figure}
\makeatother
```
(the command `addtoreset` is a part of LaTeX itself).
  ''fragment'' for use within other packages: load by
  `\input{removefr}`)


