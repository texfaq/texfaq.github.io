# ''Modern'' graphics file names

TeX was designed in a world where file names were very simple
indeed, typically strictly limited both in character set and length.
In modern systems, such restrictions have largely disappeared, which
leaves TeX rather at odds with its environment.  Particular
problems arise with spaces in file names, but things like multiple
period characters can seriously confuse the [`graphics`](http://ctan.org/pkg/graphics)
package.

The specification of TeX leaves some leeway for distributions to
adopt file access appropriate to their operating system, but this
hasn't got us very far.  Many modern distributions allow you to
specify a file name as `"file name.tex"` (for example), which
helps somewhat, but while this allows us to say
```latex
\input "foo bar.tex"
```
the analogous usage
```latex
\includegraphics{"gappy graphics.eps"}
```
using ''ordinary'' LaTeX causes confusion in `xdvi` and
`dvips`, even though it works at compilation time.  Sadly,
even within such quotes, multiple dots give `\includegraphics`
difficulties.  Note that
```latex
\includegraphics{"gappy graphics.pdf"}
```
works in a similar version of PDFTeX.

If you're using the [`graphics`](http://ctan.org/pkg/graphics) package, the [`grffile`](http://ctan.org/pkg/grffile)
package will help.  The package offers several options, the simplest
of which are `multidot` (allowing more than one dot in a
file name) and `space` (allowing space in a file name).  The
`space` option requires that you're running on a
sufficiently recent version of PDFTeX, in PDF mode&nbsp;&mdash; and
even then it won't work for MetaPost files, which are read as TeX
input, and therefore use the standard input mechanism).

