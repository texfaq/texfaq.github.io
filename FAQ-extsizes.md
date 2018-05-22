# Other ''document font'' sizes?

The LaTeX standard classes have a concept of a (base) ''document
font'' size; this size is the basis on which other font sizes (those
from `\tiny` to `\Huge`) are determined.  The classes are designed
on the assumption that they won't be used with sizes other than the
set that LaTeX offers by default (10&ndash;12pt), but people regularly
find they need other sizes.  The proper response to such a requirement
is to produce a new design for the document, but many people don't
fancy doing that.

A simple solution is to use the [`extsizes`](http://ctan.org/pkg/extsizes) bundle.  This
bundle offers ''extended'' versions of the article, report, book and
letter classes, at sizes of 8, 9, 14, 17 and 20pt as well as the
standard 10&ndash;12pt.  Since little has been done to these classes other
than to adjust font sizes and things directly related to them, they
may not be optimal&nbsp;&mdash; but they are at least practical.

More satisfactory are the _KOMA-script_ classes, which are
designed to work properly with the class option files that come with
[`extsizes`](http://ctan.org/pkg/extsizes), and the [`memoir`](http://ctan.org/pkg/memoir) class that has its own
options for document font sizes 9pt&ndash;12pt, 14pt, 17pt, 20pt, 25pt,
30pt, 36pt, 48pt and 60pt.  The classes also offer size setup for any
old font size, and the [`scrextend`](http://ctan.org/pkg/scrextend) package can extend this
facility for use with any class:
```latex
\usepackage[fontsize=12.3]{scrextend}
```
will indeed set up the main document font to have size `12.3pt`
with an appropriate default baselineskip.  The package ''knows'' about
_KOMA-script_'s default sizes, and for eccentric sizes
such as the example, it will produce a warning:
```latex
Using fallback calculation to setup font sizes
```
(users should avoid becoming excited about that&hellip;).  The package
suffers from the same problem as does [`extsizes`](http://ctan.org/pkg/extsizes): the
resulting font sizes are the _only_ feature of the document that
is changed, and the appearance of the resulting document will probably
not be as good as if the document class had been designed for use at
the size chosen.

Many classes, designed to produce typeset results other than on
''ordinary'' paper, will have their own font size mechanisms and
ranges of sizes.  This is true, for example, of 
[poster classes](./FAQ-poster.html) (such as [`a0poster`](http://ctan.org/pkg/a0poster)), and of
[presentation and lecturing classes](./FAQ-slidecls.html) (such as
[`beamer`](http://ctan.org/pkg/beamer).

