# Typesetting URLs

URLs tend to be very long, and contain characters that would
naturally prevent them being hyphenated even if they weren't typically
set in `\ttfamily`, verbatim.  Therefore, without special treatment,
they often produce wildly overfull `\hbox`es, and their typeset
representation is awful.

There are three packages that help solve this problem:
  

-  The [`path`](http://ctan.org/pkg/path) package, which defines a `\path` command.
    The command defines each potential break character as a
    `\discretionary`, and offers the user the opportunity of
    specifying a personal list of potential break characters.  Its chief
    disadvantage is fragility in LaTeX moving arguments.  The
    [Eplain macros](./FAQ-eplain.html)&nbsp;&mdash; define a similar `\path` command.
  

    [`Path`](http://ctan.org/pkg/Path), though it works in simple situations, makes no
    attempt to work with LaTeX (it is irremediably fragile).  Despite
    its long and honourable history, it is no longer recommended for
    LaTeX use.
-  The [`url`](http://ctan.org/pkg/url) package, which defines an `\url` command
    (among others, including its own `\path` command).  The command
    gives each potential break character a maths-mode 'personality', and
    then sets the URL itself (in the user's choice of font) in
    maths mode.  It can produce (LaTeX-style) 'robust' commands
    (see [use of `\protect`](./FAQ-protect.html)) for use
    within moving arguments.
  

    The package ordinarily ignores spaces in the URL, but
    unfortunately URLs that contain spaces do exist; to typeset
    them, call the package with the `obeyspaces` option.  Two
    other useful options allow line breaks in the URL in places
    where they are ordinarily suppressed to avoid confusion:
    `spaces` to allow breaks at spaces (note, this requires
    `obeyspaces` as well, and `hyphens` to allow
    breaks after hyphens.  (Note that the package _never_ does
    ''ordinary'' hyphenation of names inside an URL.)
  

    It is possible to use the [`url`](http://ctan.org/pkg/url) package in Plain TeX,
    with the assistance of the [`miniltx`](http://ctan.org/pkg/miniltx) package (which was
    originally developed for using the LaTeX graphics package in
    Plain TeX).  A small patch is also necessary: the required
    sequence is therefore:
    ```latex
    \input miniltx
    \expandafter\def\expandafter\+\expandafter{\+}
    \input url.sty
    ```
-  The [`hyperref`](http://ctan.org/pkg/hyperref) package, which uses the typesetting code
    of [`url`](http://ctan.org/pkg/url), in a context where the typeset text forms the
    anchor of a link.

The author of this answer prefers the (rather newer) [`url`](http://ctan.org/pkg/url)
package (directly or indirectly); both [`path`](http://ctan.org/pkg/path) and
[`url`](http://ctan.org/pkg/url) work well with Plain TeX (though of course, the fancy
LaTeX facilities of [`url`](http://ctan.org/pkg/url) don't have much place there).
([`hyperref`](http://ctan.org/pkg/hyperref) isn't available in a version for use with Plain TeX.)

Note that neither `\path` (from package [`path`](http://ctan.org/pkg/path)) nor `\url` (from
package [`url`](http://ctan.org/pkg/url)) is robust (in the LaTeX sense).  If you need
a URL to go in a moving argument, you need the command
`\urldef` from the [`url`](http://ctan.org/pkg/url) package.  So one might write:
```latex
\urldef\faqhome\url{http://www.tex.ac.uk/faq}
```
after which, `\faqhome` is robust.

Documentation of both package [`path`](http://ctan.org/pkg/path) and package [`url`](http://ctan.org/pkg/url)
is in the package files.

