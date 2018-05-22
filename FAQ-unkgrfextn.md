# ''Unknown graphics extension''

The LaTeX graphics package deals with several different types of
DVI (or other) output drivers; each one of them has a potential
to deal with a different selection of graphics formats.  The package
therefore has to be told what graphics file types its output driver
knows about; this is usually done in the &lsaquo;_driver_&rsaquo;`def` file
corresponding to the output driver you're using.

The error message arises, then, if you have a graphics file whose
extension doesn't correspond with one your driver knows about.  Most
often, this is because you're being optimistic: asking
`dvips` to deal with a `png` file, or PDFTeX to deal with
a `eps` file: the solution in this case is to transform the graphics
file to a format your driver knows about.

If you happen to _know_ that your device driver deals with the
format of your file, you are probably falling foul of a limitation of
the file name parsing code that the graphics package uses.  Suppose
you want to include a graphics file `home.bedroom.eps` using the
`dvips` driver; the package will conclude that your file's
extension is `bedroom.eps`, and will complain.

The [`grffile`](http://ctan.org/pkg/grffile) package deals with the last problem (and
others&nbsp;&mdash; see the package documentation); using the package, you may
write:
```latex
\usepackage{graphicx}
\usepackage{grffile}
...
\includegraphics{home.bedroom.eps}
```
or you may even write
```latex
\includegraphics{home.bedroom}
```
and [`graphicx`](http://ctan.org/pkg/graphicx) will find a `eps` or `pdf`
(or whatever) version, according to what version of (La)TeX you're
running.

If for some reason you can't use [`grffile`](http://ctan.org/pkg/grffile), you have three
unsatisfactory alternatives:
  

-  Rename the file&nbsp;&mdash; for example `home.bedroom.eps`&rarr;
    `home-bedroom.eps`
-  Mask the first dot in the file name:
    ```latex
    \newcommand*{\DOT}{.}
    \includegraphics{home\DOT bedroom.eps}
    ```
-  Tell the graphics package what the file is, by means of options
    to the `\includegraphics` command:
    ```latex
    \includegraphics[type=eps,ext=.eps,read=.eps]{home.bedroom}
    ```

