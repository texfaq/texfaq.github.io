# Quality of PDF from PostScript




Any reasonable PostScript, including any output of `dvips`, may be
converted to PDF, using (for example) a sufficiently recent
version of [`ghostscript`](http://www.ghostscript.com/),
Frank Siegert's (shareware)
[`PStill`](http://www.pstill.com/), or Adobe's (commercial)
`Distiller`.


But, although the job may (almost always) be done, the results are
often not acceptable: the most frequent problem is bad presentation of
the character glyphs that make up the document.  The following answers
offer solutions to this (and other) problems of bad presentation.
Issues covered are:
  

-  [Wrong type of fonts used](./FAQ-fuzzy-type3.html), which is
    the commonest cause of fuzzy text.
-  [`Ghostscript` too old](./FAQ-fuzzy-gs.html),
    which can also result in fuzzy text.
-  [Switching to font encoding T1 encoding](./FAQ-fuzzy-T1.html),
    which is yet another possible cause of fuzzy text.
-  Another problem&nbsp;&mdash; missing characters&nbsp;&mdash; arises from an
    [aged version of `Adobe`&nbsp;`Distiller`](./FAQ-distill-prob.html).
-  Finally, there's the common confusion that arises from using the
    `dvips` configuration file `-Ppdf`, the 
    [weird characters](./FAQ-charshift.html).


It should be noted that `Adobe` 
`Reader`&nbsp;6 (released in mid-2003, and later versions) does
not exhibit the ''fuzziness'' that so many of the answers below
address.  This is of course good news: however, it will inevitably be
a long time before every user in the world has this (or later)
versions, so the remedies below are going to remain for some time to
come.


The problems are also discussed, with practical examples, in Mike
Shell's [`testflow`](http://ctan.org/pkg/testflow) package, which these FAQs recommend as a
''[specialised tutorial](./FAQ-tutbitslatex.html).




