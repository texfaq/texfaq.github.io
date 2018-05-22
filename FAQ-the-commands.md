# Redefining counters' `\the-`commands




Whenever you request a new LaTeX counter, LaTeX creates a bunch
of behind-the-scenes commands, as well as defining the counter
itself.


Among other things, `\newcounter{fred}` creates a command
`\the``_fred_`, which expands to ''the value of
`_fred_` when you're typesetting.


The definition of `\the``_fred_` should express the
value of the counter: it is almost always always a mistake to use the
command to produce anything else.  The value may reasonably be
expressed as an arabic, a roman or a greek number, as an alphabetic
expression, or even as a sequence (or pattern of) symbols.  If you
need a decision process on whether to re-define
`\the``_fred_`, consider what might happen when you do
so.


So, for example, if you want your section numbers to be terminated by
a period, you could make `\thesection` expand with a terminating
period.  However, such a change to `\thesection` makes the
definition of `\thesubsection` look distinctly odd: you are going to
find yourself redefining things left, right and centre.  Rather, use
the standard techniques for 
[adjusting the presentation of section numbers](./FAQ-seccntfmt.html). 


Or, suppose you want the page number to appear at the bottom of each
page surrounded by dashes (as in
`-``-&#x7e;``nnn&#x7e;-``-`).
If you try to achieve this by redefining `\thepage`, problems will
arise from the use of the page number in the table of contents (each
number will have the dashes attached), and `\pageref` references
will be oddly modified.  In this case, the change of appearance is
best done by redefining the page style itself, perhaps using
[package [`fancyhdr`](http://ctan.org/pkg/fancyhdr)](./FAQ-fancyhdr.html).






