# Code listings in LaTeX

'Pretty' code listings are sometimes considered worthwhile by the
''ordinary'' programmer, but they have a serious place in
the typesetting of dissertations by computer science and other
students who are expected to write programs.  Simple verbatim listings
of programs are commonly useful, as well.

  [Verbatim listings](./FAQ-verbfile.html) are dealt with elsewhere,
as is the problem of 
[typesetting algorithm specifications](./FAQ-algorithms.html).

The [`listings`](http://ctan.org/pkg/listings) package is widely regarded as the best bet for
formatted output (it is capable of parsing program source, within the
package itself), but there are several well-established packages that
rely on a pre-compiler of some sort.  You may use [`listings`](http://ctan.org/pkg/listings)
to typeset snippets that you include within your source:
```latex
\usepackage{listings}
\lstset{language=C}
...
\begin{document}
\begin{lstlisting}
#include <stdio.h>

int main(int argc, char ** argv)
{
  printf("Hello world!\n");
  return 0;
}
\end{lstlisting}
\end{document}
```
or you can have it typeset whole files:
```latex
\usepackage{listings}
\lstset{language=C}
...
\begin{document}
\lstinputlisting{main.c}
\end{document}
```
These very simple examples may be decorated in a huge variety of ways,
and of course there are other languages in the package's vocabulary
than just `C`&hellip;

For a long time, advice on (La)TeX lists seemed to regard
[`listings`](http://ctan.org/pkg/listings) as the be-all and end-all on this topic.  In the
last few years, viable alternatives have appeared

`Highlight` is attractive if you need more than one output
format for your program: as well as (La)TeX output,
`highlight` will produce (X)HTML, RTF
and XSL-FO representations of your program listing.  The
manual leads you through the details of defining a parameter file for
a ''new'' language, as well as the presentation details of a language.

The [`minted`](http://ctan.org/pkg/minted) package is another alternative that offers
the means of creating new language definitions.  It
requires that code be processed using an external (`python`)
script, [`Pygments`](http://pygments.org/).
`Pygments`, in turn, needs a ''lexer'' that knows the
language you want to process; lots of these are available, for the
more commonly-used languages, and there is advice on ''rolling your
own'' on the 
<a href='http://pygments.org/docs/lexerdevelopment/'>`Pygments` site</a>

Usage of [`minted`](http://ctan.org/pkg/minted) can be as simple as
  `\begin{minted}{&lsaquo;_language_&rsaquo;}`

  &hellip;

  `\end{minted}`
which processes the program code dynamically, at typesetting time&nbsp;&mdash;
though such usage is likely to require that 
[separate processing be enabled](./FAQ-spawnprog.html).

On a rather different path, the package [`showexpl`](http://ctan.org/pkg/showexpl) supports
typesetting (La)TeX code and its typeset output, in parallel
'panes'.  (Thiscould provide support for (La)TeX instruction texts,
or for papers in TeX user group publications.  The package uses
[`listings`](http://ctan.org/pkg/listings) for its (La)TeX pane, and typesets the result
into a simple box, for the other pane.

Longer-established, and variously less ''powerful'' systems include:
  

-  The `lgrind` system is a well-established
    pre-compiler, with all the facilities one might need and a wide
    repertoire of languages; it is derived from the even
    longer-established `tgrind`, whose output is based on
    Plain TeX.
-  The `tiny_c2l` system is slightly more recent: users
    are again encouraged to generate their own driver files for
    languages it doesn't already deal with, but its ''tiny'' name
    correctly hints that it's not a particularly elaborate system.
-  The `C++2LaTeX` system comes with strong
    recommendations for use with C and C++.
-  An extremely simple system is `c2latex`, for which you
    write LaTeX source in your C program comments.  The
    program then converts your program into a LaTeX document for
    processing.  The program (implicitly) claims to be
    ''self-documenting''.

