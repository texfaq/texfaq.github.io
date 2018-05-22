# Drawing with TeX

There are many packages to do pictures in (La)TeX itself (rather than
importing graphics created externally), ranging from simple use of
LaTeX `picture` environment, through enhancements like
`eepic`, to 
sophisticated (but slow) drawing with PicTeX. Depending on your type
of drawing, and setup, here are a few systems you may consider:
  

-  The `picture` environment provides rather primitive
    drawing capabilities (anything requiring more than linear
    calculations is excluded, unless a font can come to your help).  The
    environment's tedious insistence on its own `\unitlength`, as the
    basic measurement in a diagram, may be avoided by use of the
    [`picture`](http://ctan.org/pkg/picture) package, which detects whether a length is quoted
    as a number or as a length, and acts accordingly.
-  [`epic`](http://ctan.org/pkg/epic) was designed to make use of the LaTeX
    `picture` environment somewhat less agonising;
    [`eepic`](http://ctan.org/pkg/eepic) extends it, and is capable of using `tpic`
    `\special` commands to improve printing performance.  (If the
    `\special`s aren't available, the [`eepicemu`](http://ctan.org/pkg/eepicemu) will do the
    business, far less efficiently.
-  [`pict2e`](http://ctan.org/pkg/pict2e); this was advertised in 
    [the LaTeX manual](./FAQ-latex-books.html), but didn't appear for nearly
    ten years after publication of the book!  It removes all the petty
    restrictions that surround the use of the `picture`
    environment.  It therefore suffers _only_ from the rather
    eccentric drawing language of the environment, and is a far more
    useful tool than the original environment has ever been.  (Note that
    [`pict2e`](http://ctan.org/pkg/pict2e) supersedes David Carlisle's stop-gap
    [`pspicture`](http://ctan.org/pkg/pspicture).)
-  PicTeX is a venerable, and very powerful, system, that draws
    by placing dots on the page to give the effect of a line or curve.  While
    this has the potential of great power, it is (of course) much slower
    than any of the other established packages.  What's more, there
    are problems with its [documentation](./FAQ-docpictex.html).
-  [`PSTricks`](http://ctan.org/pkg/PSTricks) gives you access to the (considerable) power of
    PostScript via a set of TeX macros, which talk to PostScript using 
    [`\special` commands](./FAQ-specials.html).  Since PostScript is itself a
    pretty powerful programming language, many astounding things can in
    principle be achieved using [`PSTricks`](http://ctan.org/pkg/PSTricks) (a wide range of
    contributed packages, ranging from world mapping to lens design
    diagrams, is available).
    [`Pstricks`](http://ctan.org/pkg/Pstricks)' `\special`s are
    by default specific to `dvips`, but there is
    a [`Pstricks`](http://ctan.org/pkg/Pstricks) 'driver' that allow [`Pstricks`](http://ctan.org/pkg/Pstricks) to
    operate under XeTeX.  PDFTeX users may use [`pst-pdf`](http://ctan.org/pkg/pst-pdf),
    which (like [`epstopdf`](http://ctan.org/pkg/epstopdf)&nbsp;&mdash; see 
    [PDFLaTeX graphics](./FAQ-pdftexgraphics.html)) generates
    PDF files using an auxiliary program, from [`PSTricks`](http://ctan.org/pkg/PSTricks)
    commands ([`pst-pdf`](http://ctan.org/pkg/pst-pdf) also requires a recent installation of
    the [`preview`](http://ctan.org/pkg/preview) package).
  

    There is a [`PSTricks`](http://ctan.org/pkg/PSTricks) mailing list
    (<a href="mailto:pstricks@tug.org">pstricks@tug.org</a>) which you may
    [join](http://tug.org/mailman/listinfo/pstricks), or you may
    just browse the 
    [list archives](http://tug.org/pipermail/pstricks/).
-  [`pgf`](http://ctan.org/pkg/pgf): while [`pstricks`](http://ctan.org/pkg/pstricks) is very powerful and
    convenient from 'traditional' TeX, using it with PDFLaTeX is
    pretty tiresome: if you 
    simply want the graphical capabilities, [`pgf`](http://ctan.org/pkg/pgf), together with
    its ''user-oriented'' interface [`tikz`](http://ctan.org/pkg/tikz), may be a good
    bet for you.  While PDF has (in essence) the same graphical
    capabilities as PostScript, it isn't programmable; [`pgf`](http://ctan.org/pkg/pgf) provides
    LaTeX commands that will utilise the graphical capabilities of
    both PostScript and PDF equally.  [`Pgf`](http://ctan.org/pkg/Pgf) has extensive
    mathematical support, which allows it to rival [`PSTricks`](http://ctan.org/pkg/PSTricks)'
    use of the computation engine within PostScript.
    The [`pgf`](http://ctan.org/pkg/pgf) manual is enormous, but a simple introduction which
    allows the user to get a feel for the capabilities of the system, is
    available at [http://cremeronline.com/LaTeX/minimaltikz.pdf]
-  MetaPost; you liked MetaFont, but never got to grips with font files?
    Try [MetaPost](./FAQ-MP.html)&nbsp;&mdash;
    all the power of MetaFont, but it generates PostScript figures; MetaPost
    is nowadays part of most serious (La)TeX distributions.  Knuth
    uses it for all his work&hellip;
  

    Note that you can 
    [''embed'' MetaPost source in your document](./FAQ-inlgrphapp.html) (i.e.,
    keep it in-line with your LaTeX code).
-  You liked MetaFont (or MetaPost), but find the language difficult?
    `Mfpic` makes up MetaFont or MetaPost code for you using
    familiar-looking (La)TeX macros.  Not _quite_ the full power
    of MetaFont or MetaPost, but a friendlier interface, and with MetaPost output
    the results can be used equally well in either LaTeX or PDFLaTeX.
-  You liked PicTeX but don't have enough memory or time?  Look
    at the late Eitan Gurari's [`dratex`](http://ctan.org/pkg/dratex): it is just as powerful,
    but is an entirely new implementation which is not as hard on
    memory, is much more readable and is (admittedly sparsely) documented at
    [http://www.cse.ohio-state.edu/&nbsp;gurari/tpf/html/README.html],
    as well as in the author's book ''TeX and LATeX: Drawing and
    Literate Programming'', which remains available from on-line
    booksellers.

In addition, there are several means of generating code for your
graphics application (`asymptote`, `gnuplot` and
MetaPost, at least) in-line in your document, and then have them
processed in a command spawned from your (La)TeX run.  For details,
see [question](./FAQ-inlgrphapp.html).

