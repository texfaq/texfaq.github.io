# Displaying MetaPost output in `ghostscript`

MetaPost ordinarily expects its output to be included in some context
where the 'standard' MetaFont fonts (that you've specified) are already
defined&nbsp;&mdash; for example, as a figure in TeX document.  If you're
debugging your MetaPost code, you may want to view it in a
[`ghostscript`](http://www.ghostscript.com/)-based (or some
other PostScript) previewer, but note that viewers (even
[`ghostscript`](http://www.ghostscript.com/))
_don't_ ordinarily have the fonts loaded, and you'll experience
an error such as
```latex
Error: /undefined in cmmi10
```
There is provision in MetaPost for avoiding this problem: issue the
command `prologues := 2;` at the start of the `mp` file.

Unfortunately, the PostScript that MetaPost inserts in its output,
following this command, is incompatible with ordinary use of the
PostScript in inclusions into (La)TeX documents, so it's best to
make the `prologues` command optional.  Furthermore, MetaPost takes a
very simple-minded approach to font encoding: since TeX font
encodings are anything but simple, encoding of text in diagrams are
another source of problems.  If you're suffering such problems (the
symptom is that 
characters disappear, or are wrongly presented) the solution is
to view the 'original' MetaPost output after processing through
LaTeX and `dvips`.

Conditional compilation may be done either
by inputting `MyFigure.mp` indirectly from a simple wrapper
`MyFigureDisplay.mp`:
```latex
prologues := 2;
input MyFigure
```
or by issuing a shell command such as
```latex
mp '\prologues:=2; input MyFigure'
```
(which will work without the quote marks if you're not using a Unix
shell).

A suitable LaTeX route would involve processing
`MyFigure.tex`, which contains:
```latex
\documentclass{article}
\usepackage{graphicx}
\begin{document}
\thispagestyle{empty}
\includegraphics{MyFigure.1}
\end{document}
```
Processing the resulting DVI file with the `dvips`
command
```latex
dvips -E -o MyFigure.eps MyFigure
```
would then give a satisfactory Encapsulated PostScript file.  This
procedure may be automated using the `Perl` script
`mps2eps`, thus saving a certain amount of tedium.

The Plain TeX user may use an adaptation, by
Dan Luecking, of a jiffy of Knuth's.  Dan's version
[`mpsproof.tex`](http://ctan.org/pkg/mpsproof.tex) will work under
TeX to produce a DVI file for use with `dvips`, or
under PDFTeX to produce a PDF file, direct.  The output is
set up to look like a proof sheet.

A script application, `mptopdf`, is available in recent
(La)TeX distributions: it seems fairly reliably to produce
PDF from MetaPost, so may reasonably be considered an answer to
the question&hellip;

