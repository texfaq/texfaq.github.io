# Multiple bibliographies?

If you're thinking of multiple bibliographies tied to some part of
your document (such as the chapters within the document), please see
[bibliographies per chapter](./FAQ-chapbib.html).

For more than one bibliography, there are three options.

The [`multibbl`](http://ctan.org/pkg/multibbl) package offers a very simple interface: you use
a command `\newbibliography` to define a bibliography ''tag''.  The package
redefines the other bibliography commands so that each time you use any one
of them, you give it the tag for the bibliography where you want the
citations to appear.  The `\bibliography` command itself also takes
a further extra argument that says what title to use for the resulting
section or chapter (i.e., it patches
[`\refname` and `\bibname`](./FAQ-fixnam.html) in a
[`babel`](http://ctan.org/pkg/babel)-safe way).  So one might write:
```latex
\usepackage{multibbl}
\newbibliography{bk}
\bibliographystyle{bk}{alpha}
\newbibliography{art}
\bibliographystyle{art}{plain}
...
\cite[pp.~23--25]{bk}{milne:pooh-corner}
...
\cite{art}{einstein:1905}
...
\bibliography{bk}{book-bib}{References to books}
\bibliography{art}{art-bib}{References to articles}
```
(Note that the optional argument of `\cite` appears _before_ the
new tag argument, and that the `\bibliography` commands may list
more than one `bib` file&nbsp;&mdash; indeed all `\bibliography` commands
may list the same set of files.)

The `\bibliography` data goes into files whose names are
&lsaquo;_tag-name_&rsaquo;_.aux_, so you will need to run
```latex
bibtex bk
bibtex art
```
after the first run of LaTeX, to get the citations in the correct
place.

The [`multibib`](http://ctan.org/pkg/multibib) package allows you to define a series of
''additional topics'', each of which comes with its own series of
bibliography commands.  So one might write:
```latex
\usepackage{multibib}
\newcites{bk,art}%
         {References from books,%
          References from articles}
\bibliographystylebk{alpha}
\bibliographystyleart{plain}
...
\citebk[pp.~23--25]{milne:pooh-corner}
...
\citeart{einstein:1905}
...
\bibliographybk{book-bib}
\bibliographyart{art-bib}
```
Again, as for [`multibbl`](http://ctan.org/pkg/multibbl), any `\bibliography...` command may
scan any list of `bib` files.

BibTeX processing with [`multibib`](http://ctan.org/pkg/multibib) is much like that with
[`multibbl`](http://ctan.org/pkg/multibbl); with the above example, one needs:
```latex
bibtex bk
bibtex art
```
Note that, unlike [`multibbl`](http://ctan.org/pkg/multibbl), [`multibib`](http://ctan.org/pkg/multibib) allows a
simple, unmodified bibliography (as well as the ''topic'' ones).  

The [`bibtopic`](http://ctan.org/pkg/bibtopic) package allows you separately to cite several
different bibliographies.  At the appropriate place in your document,
you put a sequence of `btSect` environments (each of which
specifies a bibliography database to scan) to typeset the separate
bibliographies.  Thus, one might have a file `diss.tex` containing:
```latex
\usepackage{bibtopic}
\bibliographystyle{alpha}
...
\cite[pp.~23--25]{milne:pooh-corner}
...
\cite{einstein:1905}
...
\begin{btSect}{book-bib}
\section{References from books}
\btPrintCited
\end{btSect}
\begin{btSect}[plain]{art-bib}
\section{References from articles}
\btPrintCited
\end{btSect}
```
Note the different way of specifying a bibliographystyle: if you want
a different style for a particular bibliography, you may give it as an
optional argument to the `btSect` environment.

Processing with BibTeX, in this case, uses `aux` files whose names
are derived from the name of the base document.  So in this example
you need to say:
```latex
bibtex diss1
bibtex diss2
```

There is also a command `\btPrintNotCited`, which gives the rest of
the content of the database (if nothing has been cited from the
database, this is equivalent to LaTeX standard `\nocite{*}`).

However, the _real_ difference from [`multibbl`](http://ctan.org/pkg/multibbl) and
[`multibib`](http://ctan.org/pkg/multibib) is that selection of what appears in each
bibliography section is determined in [`bibtopic`](http://ctan.org/pkg/bibtopic) by what's in
the `bib` files.

An entirely different approach is taken by the [`splitbib`](http://ctan.org/pkg/splitbib)
package.  You provide a `category` environment, in the
preamble of your document, for each category you want a separate
citation list for.  In each environment, you list the `\cite` keys
that you want listed in each category.  The `\bibliography` command
(or, more precisely, the `thebibliography` environment it
uses) will sort the keys as requested.  (Keys not mentioned in a
`category` appear in a ''misc'' category created in the
sorting process.)  A code example appears in the package documentation
(a PDF file in the CTAN directory,
  which you can browse to, from the link, below).

