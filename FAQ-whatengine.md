# Am I using PDFTeX, XeTeX or LuaTeX?

You often need to know what ''engine'' your macros are running on (the
engine is the TeX-derivative or TeX-alike processor that
typesets your document).  The reason that you need to know is that the
set of functions available in each engine is different.  Thus, for
TeX macros to run on any engine, they need to ''know'' what they
can and cannot do, which depends on the engine in use.  Getting the
right answer is surprisingly tricky (see below for an elaboration of
one apparently simple test).

There is now a comprehensive set of packages that answer the question
for you.  They all create a TeX conditional command:
  

-  [`ifpdf`](http://ctan.org/pkg/ifpdf) creates a command `\ifpdf`,
-  [`ifxetex`](http://ctan.org/pkg/ifxetex) creates a command `\ifxetex` and
-  [`ifluatex`](http://ctan.org/pkg/ifluatex) creates a command `\ifluatex`.

These TeX commands may be used within the LaTeX conditional
framework, as (for example):
  `\ifthenelse``{}`\boolean{pdf}`\texttt{}``{}&lsaquo;_if pdf_&rsaquo[[[texttt]]]}``{}&lsaquo;_if not pdf_&rsaquo[[[texttt]]]}`

The [`ifxetex`](http://ctan.org/pkg/ifxetex) package also provides a command
`\RequireXeTeX` which creates an error if the code is not running
under XeTeX; while the other packages don't provide such a command,
it's not really difficult to write one for yourself.

Now for those who want to do the job for themselves: here's a
discussion of doing the job for PDFTeX and `\ifpdf`&nbsp;&mdash; the
eager programmer can regenerate `\ifxetex` or `\ifluatex` in the
same fashion.  It's not recommended&hellip;

Suppose you need to test whether your output will be PDF or
DVI.  The natural thing is to check whether you have access to
some PDFTeX-only primitive; a good one to try (not least because it
was present in the very first releases of PDFTeX) is
`\pdfoutput`.  So you try
```latex
\ifx\pdfoutput\undefined
  ... % not running PDFTeX
\else
  ... % running PDFTeX
\fi
```
Except that neither branch of this conditional is rock-solid.  The
first branch can be misleading, since the ''awkward'' user could have
written:
```latex
\let\pdfoutput\undefined
```
so that your test will falsely choose the first alternative.  While
this is a theoretical problem, it is unlikely to be a major one.

More important is the user who loads a package that uses
LaTeX-style testing for the command name's existence (for example,
the LaTeX [`graphics`](http://ctan.org/pkg/graphics) package, which is useful even to the
Plain TeX user).  Such a package may have gone ahead of you, so the
test may need to be elaborated:
```latex
\ifx\pdfoutput\undefined
  ... % not running PDFTeX
\else
  \ifx\pdfoutput\relax
    ... % not running PDFTeX
  \else
    ... % running PDFTeX
  \fi
\fi
```
If you only want to know whether some PDFTeX extension (such as
marginal kerning) is present, you can stop at this point: you know as
much as you need.

However, if you need to know whether you're creating PDF
output, you also need to know about the value of `\pdfoutput`:
```latex
\ifx\pdfoutput\undefined
  ... % not running PDFTeX
\else
  \ifx\pdfoutput\relax
    ... % not running PDFTeX
  \else
    % running PDFTeX, with...
    \ifnum\pdfoutput>0
      ... % PDF output
    \else
      ... % DVI output
    \fi
  \fi
\fi
```

