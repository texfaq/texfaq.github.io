# Page number is wrong at start of page

This is a long story, whose sources are deep inside the workings of
TeX itself; it all derives from the TeX's striving to generate
the best possible output.

The page number is conventionally stored in `\count0`; LaTeX
users see this as the counter `page`, and may typeset its value
using `\thepage`.

The number (that is to say, `\count0`) is only updated when TeX
actually outputs a page.  TeX only even tries to do this when it
detects a hint that it may be a good thing to do.  From TeX's point
of view, the end of a paragraph is a good time to consider outputting
a page; it will output a page if it has _more_ than a page's
worth of material to output.  (Ensuring it always has something in
hand makes some optimisations possible.)  As a result, `\count0`
(`\thepage`) is almost always wrong in the first paragraph of a
page (the exception is where the page number has been ''forcibly''
changed, either by changing its value directly, or by breaking the
page where TeX wouldn't necessarily have chosen to break).

LaTeX provides a safe way of referring to the page number, by using
label references.  So, rather than writing:
```latex
Here is page \thepage{}.
```
you should write:
```latex
Here is page \pageref{here}\label{here}.
```
(note: no space between the `\pageref` and the `\label`, since
that could potentially end up as a page-break space itself, which
rather defeats the purpose of the exercise!).

