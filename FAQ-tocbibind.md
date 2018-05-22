# Bibliography, index, etc., in TOC

The standard LaTeX classes (and many others) use `\section*` or
`\chapter*` for auto-generated parts of the document (the tables of
contents, lists of figures and tables, the bibliography and the index).  As a
result, these items aren't numbered (which most people don't mind),
and (more importantly) they don't appear in the table of contents.

The correct solution (as always) is to have a class of your own that
formats your document according to your requirements.  The macro to do
the job (`\addcontentsline`) is fairly simple, but there is always
an issue of ensuring that the contents entry quotes the correct page.
Supposing that our the document is chapter-based (class [`report`](http://ctan.org/pkg/report)
or [`book`](http://ctan.org/pkg/book), for example), the text:
```latex
\bibliography{frooble}
\addcontentsline{toc}{chapter}{Bibliography}
```
will produce the _wrong_ answer if the bibliography is more than
one page long.  Instead, one should say:
```latex
\cleardoublepage
\addcontentsline{toc}{chapter}{Bibliography}
\bibliography{frooble}
```
(Note that `\cleardoublepage` does the right thing, even if your
document is single-sided&nbsp;&mdash; in that case, it's a synonym for
`\clearpage`).  Ensuring that the entry refers to the right place is
trickier still in a `\section`-based class.

If you are using [`hyperref`](http://ctan.org/pkg/hyperref) (which will link entries in the
table of contents to the relevant place in the file), a slight
adjustment is necessary:
```latex
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Bibliography}
\bibliography{frooble}
```
The extra command (`\phantomsection`) gives [`hyperref`](http://ctan.org/pkg/hyperref)
something to ''hold on to'' when making the link.

The common solution, therefore, is to use the [`tocbibind`](http://ctan.org/pkg/tocbibind)
package, which provides many facilities to control the way these
entries appear in the table of contents.

Classes of the [`KOMA-script`](http://ctan.org/pkg/KOMA-script) bundle provide this functionality
as a set of class options (e.g., `bibtotoc` to add the
bibliography to the table of contents); the [`memoir`](http://ctan.org/pkg/memoir) class includes
[`tocbibind`](http://ctan.org/pkg/tocbibind) itself.

