# Master and slave counters

It's common to have things numbered ''per chapter'' (for example, in
the standard [`book`](http://ctan.org/pkg/book) and [`report`](http://ctan.org/pkg/report) classes, figures, tables
and footnotes are all numbered thus).  The process of resetting is
done automatically, when the ''master'' counter is stepped (when the
`\chapter` command that starts chapter &lsaquo;_n_&rsaquo; happens, the
`chapter` counter is stepped, and all the dependent counters are set
to zero).

How would you do that for yourself?  You might want to number
algorithms per section, or corollaries per theorem, for example.  If
you're defining these things by hand, you declare the relationship
when you define the counter in the first place:
`\newcounter{new-name}`[master]
says that every time counter &lsaquo;_master_&rsaquo; is stepped, counter
&lsaquo;_new-name_&rsaquo; will be reset.

But what if you have an uncooperative package, that defines the
objects for you, but doesn't provide a programmer interface to make
the counters behave as you want?

The `\newcounter` command uses a LaTeX internal command, and you
can also use it:
`addtoreset{new-name}{master}`
(but remember that it needs to be between `\makeatletter` and
`\makeatother`, or in a package of your own).

The [`chngcntr`](http://ctan.org/pkg/chngcntr) package encapsulates the `addtoreset`
command into a command `\counterwithin`.  So:
```latex
\counterwithin*{corrollary}{theorem}
```
will make the corollary counter slave to theorem counters.  The
command without its asterisk:
```latex
\counterwithin{corrollary}{theorem}
```
will do the same, and also redefine `\thecorollary` as 
&lsaquo;_theorem number_&rsaquo;.&lsaquo;_corollary number_&rsaquo;, which is a good scheme
if you ever want to refer to the corollaries&nbsp;&mdash; there are potentially
many ''corollary&nbsp;1'' in any document, so it's as well to tie its number
to the counter of the theorem it belongs to.  This is true of pretty
much any such counter-within-another; if you're not using the
[`chngcntr`](http://ctan.org/pkg/chngcntr), refer to the answer to 
[redefining counters' `\the-`commands](./FAQ-the-commands.html) for
the necessary techniques.

Note that the technique doesn't work if the master counter is `page`,
the number of the current page.  The `page` counter is stepped deep
inside the output routine, which usually gets called some time after
the text for the new page has started to appear: so special
techniques are required to deal with that.  One special case is dealt
with elsewhere: [footnotes numbered per page](./FAQ-footnpp.html).  One
of the techniques described there, using package [`perpage`](http://ctan.org/pkg/perpage),
may be applied to any counter.  The command:
`\MakePerPage{counter}`
will cause &lsaquo;_counter_&rsaquo; to be reset for each page.  The package uses
a label-like mechanism, and may require more than one run of LaTeX
to stabilise counter values&nbsp;&mdash; LaTeX will generate the usual
warnings about labels changing.

