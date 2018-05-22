# ''Normal'' use of BibTeX from LaTeX

To create a bibliography for your document, you need to perform a
sequence of steps, some of which seem a bit odd.  If you choose to use
BibTeX, the sequence is:

First: you need a BibTeX bibliography file (a `bib`
file)&nbsp;&mdash; see [''creating a BibTeX file''](./FAQ-buildbib.html).

Second: you must write your LaTeX document to include a declaration
of the 'style' of bibliography, citations, and a reference to the
bibliography file mentioned above.  So we may have a LaTeX
file containing:
```latex
\bibliographystyle{plain}
...
Pooh is heroic~\cite{Milne:1926}.
...
Alice struggles~\cite{Carroll:1865}.
...
\bibliography{mybooks}
```
Note: we have bibliography style [`plain`](http://ctan.org/pkg/plain), above, which is
nearly the simplest of the lot: a sample text, showing the sorts of
style choices available, can be found on Ken Turner's web site:
[http://www.cs.stir.ac.uk/&nbsp;kjt/software/latex/showbst.html]

Third: you must process the file.
```latex
latex myfile
```
As LaTeX processes the file, the `\bibliographystyle` command
writes a note of the style to the `aux` file; each
`\cite` command writes a note of the citation to the
`aux` file, and the `\bibliography` command writes a note
of which `bib` file is to be used, to the `aux` file.

Note that, at this stage, LaTeX isn't ''resolving'' any of the
citations: at every `\cite` command, LaTeX will warn you of the
undefined citation, and when the document finishes, there will be a
further warning of undefined references.

Fourth: you must run BibTeX:
```latex
bibtex myfile
```
Don't try to tell BibTeX anything but the file name: say
`bibtex myfile.aux` (because you know it's going to read the
`aux` file) and BibTeX will blindly attempt to process
`myfile.aux.aux`.

BibTeX will scan the `aux` file; it will find which bibliography
style it needs to use, and will ''compile'' that style; it will note
the citations; it will find which bibliography files it needs, and
will run through them matching citations to entries in the
bibliography; and finally it will sort the entries that have been
cited (if the bibliography style specifies that they should be
sorted), and outputs the resulting details to a `bbl` file.

Fifth: you run LaTeX again.  It warns, again, that each citation is
(still) undefined, but when it gets to the `\bibliography` command,
it finds a `bbl` file, and reads it.  As it encounters each
`\bibitem` command in the file, it notes a definition of the
citation.

Sixth: you run LaTeX yet again.  This time, it finds values for all
the citations, in its `aux` file.  Other things being equal, you're
done&hellip; until you change the file.

If, while editing, you change any of the citations, or add new ones,
you need to go through the process above from steps 3 (first run of
LaTeX) to 6, again, before the document is once again stable.
These four mandatory runs of LaTeX make processing a document with
a bibliography even more tiresome than the normal two runs required to
resolve labels.

To summarise: processing to resolve citations requires: LaTeX;
BibTeX; LaTeX; LaTeX.

