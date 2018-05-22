# Generating an index in (La)TeX

Making an index is not trivial; what to index, and how to index it, is
difficult to decide, and uniform implementation is difficult to
achieve.  You will need to mark all items to be indexed in your text
(typically with `\index` commands).

It is not practical to sort a large index within TeX, so a
post-processing program is used to sort the output of one TeX run,
to be included into the document at the next run.

The following programs are available:

- makeindex Comes with most distributions&nbsp;&mdash; a good workhorse,
  but is not well-arranged to deal with other sort orders than the
  canonical ASCII ordering.

  The [`makeindex`](http://ctan.org/pkg/makeindex) documentation is a good source of
  information on how to create your own index. [`Makeindex`](http://ctan.org/pkg/Makeindex) can
  be used with some TeX
  macro packages other than LaTeX, such as 
  [Eplain](./FAQ-eplain.html), and TeX (whose macros can
  be used independently with Plain TeX).
- idxtex for LaTeX under VMS; `idxtex` comes
  with a glossary-maker `glotex`.
- texindex(1) A witty little shell-script using `sed`
  and `awk`; designed for LaTeX under Unix.
- texindex(2) The [Texinfo](./FAQ-texinfo.html) system also offers a program
  `texindex`, whose source is to be found in the
  `texinfo` distribution.  The [`ltxindex`](http://ctan.org/pkg/ltxindex) package
  provides macros that enable LaTeX users to use this
  `texindex`.
- xindy arose from frustration at the difficulty of making a
  multi-language version of `makeindex`.  It is designed to
  be a successor to `makeindex`, by a team that included the
  then-current maintainer of `makeindex`.  It successfully
  addresses many of `makeindex`s shortcomings, including
  difficulties with collation order in different languages, and it is
  highly flexible.

  `Xindy` itself will work with Unicode (UTF-8) encoded
  LaTeX input.  A separate application (`texindy`) deals
  with 'standard' LaTeX source, processes it and passes
  'sanitised' text to `Xindy`.

