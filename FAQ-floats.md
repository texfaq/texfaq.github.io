# Moving tables and figures in LaTeX

Tables and figures have a tendency to surprise, by _floating_
away from where they were specified to appear.  This is in fact
perfectly ordinary document design; any professional typesetting
package will float figures and tables to where they'll fit without
violating the certain typographic rules.  Even if you use the
placement specifier&nbsp;`h` (for 'here'), the figure or table
will not be 
printed 'here' if doing so would break the rules; the rules themselves
are pretty simple, and are given on page&nbsp;198, section&nbsp;C.9 of the
LaTeX manual.  In the worst case, LaTeX's rules can cause the
floating items to pile up to the extent that you get an error message
saying ''[Too many unprocessed floats](./FAQ-tmupfl.html)''.
What follows is a simple checklist of things to do to solve these
problems (the checklist talks throughout about figures, but applies
equally well to tables, or to ''non-standard'' floats defined by the
[`float`](http://ctan.org/pkg/float) or other packages).
  

-  Do your figures need to float at all?  If not, look at the
    recommendations for ''[non-floating floats](./FAQ-figurehere.html)''
-  Are the placement parameters on your figures right?  The
    default (`tbp`) is usually satisfactory, but you can
    reasonably change it (for example, to add an `h`).
    Whatever you do, _don't_ 
    omit the `p`: doing so could cause LaTeX to believe that if you
    can't have your figure _here_, you don't want it
    _anywhere_.  (LaTeX does try to avoid being confused in
    this way&hellip;)
-  LaTeX's own float placement parameters could be preventing
    placements that seem entirely ''reasonable'' to you&nbsp;&mdash; they're
    notoriously rather conservative.  To encourage LaTeX not to move
    your figure, you may need to loosen its demands.  (The most important
    ones are the ratio of text to float on a given page, but it's
    sensible to have a fixed set that changes the whole lot, to meet
    every eventuality.)
    ```latex
    \renewcommand{\topfraction}{.85}
    \renewcommand{\bottomfraction}{.7}
    \renewcommand{\textfraction}{.15}
    \renewcommand{\floatpagefraction}{.66}
    \renewcommand{\dbltopfraction}{.66}
    \renewcommand{\dblfloatpagefraction}{.66}
    \setcounter{topnumber}{9}
    \setcounter{bottomnumber}{9}
    \setcounter{totalnumber}{20}
    \setcounter{dbltopnumber}{9}
    ```
    The meanings of these
    parameters are described on pages&nbsp;199&ndash;200, section&nbsp;C.9 of the
    LaTeX manual.
-  Are there places in your document where you could 'naturally'
    put a `\clearpage` command?  If so, do: the backlog of floats is
    cleared after a `\clearpage`.  (Note that the `\chapter`
    command in the standard [`book`](http://ctan.org/pkg/book) and [`report`](http://ctan.org/pkg/report) classes
    implicitly executes `\clearpage`, so your floats can't wander past
    the end of a chapter.)
-  Try the [`placeins`](http://ctan.org/pkg/placeins) package: it defines a
    `\FloatBarrier` command beyond which floats may not pass.  A
    package option allows you to declare that floats may not pass a
    `\section` command, but you can place `\FloatBarrier`s wherever
    you choose.
-  If you are bothered by floats appearing at the top of the page
    (before they are specified in your text), try the [`flafter`](http://ctan.org/pkg/flafter)
    package, which avoids this problem by insisting that floats should
    always appear after their definition.
-  Have a look at the LaTeX 2e [`afterpage`](http://ctan.org/pkg/afterpage) package.
    Its documentation gives as an example the idea
    of putting `\clearpage` _after_ the current page (where it
    will clear the backlog, but not cause an ugly gap in your text), but
    also admits that the package is somewhat fragile.  Use it as a last
    resort if the other possibilities below don't help.
-  If you would actually _like_ great blocks of floats at the
    end of each of your chapters, try the `\extrafloats` command,
    or in older LaTeX releases, the [`morefloats`](http://ctan.org/pkg/morefloats) package;
    this allows you to increase the number of floating inserts that LaTeX
    can handle at one time (from its original value of 18 or, now, 52, in
    LaTeX 2e).
  

    Caveat: if you are using [`etex`](http://ctan.org/pkg/etex) package to increase the number of
    registers available on old releases, you need to ''reserve'' some inserts for
    [`morefloats`](http://ctan.org/pkg/morefloats): something like:
    ```latex
    \usepackage{etex}
    \reserveinserts{18}
    \usepackage{morefloats}
    ```
-  If you actually _wanted_ all your figures to float to the
    end (_e.g_., for submitting a draft copy of a paper), don't
    rely on LaTeX's mechanism: get the [`endfloat`](http://ctan.org/pkg/endfloat) package to do
    the job for you.

