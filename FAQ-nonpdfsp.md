# Non-PDF special ignored!

This is a PDFTeX error: PDFTeX is running in PDF output
mode, and it has encountered a 
[`\special`](./FAQ-specials.html) command.  PDFTeX is
able to generate its own output, and in this mode of operation has no
need of `\special` commands (which allow the user to pass
information to the driver being used to generate output).

Why does this happen?  LaTeX users, nowadays, hardly ever use
`\special` commands on their own&nbsp;&mdash; they employ packages to do the
job for them.  Some packages will generate `\special` commands
however they are invoked: [`pstricks`](http://ctan.org/pkg/pstricks) is an example (it's very
raison d'&ecirc;tre is to emit PostScript code in a sequence of `\special`
commands).  [`Pstricks`](http://ctan.org/pkg/Pstricks) may be dealt with by other means (the
[`pdftricks`](http://ctan.org/pkg/pdftricks) package offers a usable technique).

More amenable to correction, but more confusing, are packages (such as
[`color`](http://ctan.org/pkg/color), [`graphics`](http://ctan.org/pkg/graphics) and [`hyperref`](http://ctan.org/pkg/hyperref)) that
specify a ''driver''.  These packages have plug-in modules that
determine what `\special` (or other commands) are needed to generate
any given effect: the `pdftex` driver for such packages knows not to
generate `\special` commands.  In most circumstances, you can let
the system itself choose which driver you need; in this case
everything will act properly when you switch to using PDFLaTeX.  If
you've been using `dvips` (and specifying the `dvips` driver)
or `dvipdfm` (for which you have to specify the driver), and
decide to try PDFLaTeX, you _must_ remove the `dvips` or
`dvipdfm` driver specification from the package options, and let the
system recognise which driver is needed.

