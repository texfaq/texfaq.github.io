# Floats on their own on float pages

It's sometimes necessary to force a float to live on a page by itself.
(It's sometimes even necessary for _every_ float to live on a
page by itself.)  When the float fails to 'set', and waits for the end
of a chapter or of the document, the natural thing to do is to declare
the float as
  `\begin{figure}`[p!]
but the overriding `!` modifier has no effect on float page floats; so
you have to make the float satisfy the parameters.
[Moving tables and figures](./FAQ-floats.html) offers some
suggestions, but doesn't solve the one-float-per-page question.

The 'obvious' solution, using the counter `totalnumber`
(''total number of floats per page'') doesn't work:
`totalnumber` only applies to floats on 'text' pages (pages
containing text as well as one or more float).  So, to allow any
size float to take a whole page, set `\floatpagefraction` really
small, and to ensure that no more than one float occupies a page, make
the separation between floats really big:
```latex
\renewcommand\floatpagefraction{.001}
\makeatletter
\setlength\@fpsep{\textheight}
\makeatother
```

