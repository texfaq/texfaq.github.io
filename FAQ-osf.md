# Using ''old-style'' figures

These numbers are also called medieval or lowercase figures and their
use is mostly font-specific.  Terminology is confusing since the
lining figures (which are now the default) are a relatively recent
development (19th century) and before they arrived, oldstyle figures
were the norm, even when setting mathematics.  (An example is Thomas
Harriot's _Artis Analyticae Praxis_ published in 1631).  In a
typical old style 3, 4, 5, 7 and 9 have descenders and 6 and 8 ascend
above the x-height; sometimes 2 will also ascend (this last seems to
be a variation associated with French typography).

LaTeX provides a command `\oldstylenums{digits}`, which
by default uses an old-style set embedded in Knuth's 'math italic'
font.  The command is only sensitive to 'bold' of the font style of
surrounding text: glyphs (for this command) are only available to
match the normal medium and bold (i.e., bold-extended) weights of the
Computer Modern Roman fonts.

The [`textcomp`](http://ctan.org/pkg/textcomp) package changes `\oldstylenums` to use the
glyphs in the Text Companion fonts (LaTeX TS1 encoding) when
in text mode, and also makes them available using the macros of the
form `\text<number>oldstyle`, e.g., `\textzerooldstyle`.
(Of course, not all font families can provide this facility.)

Some font packages (e.g., [`mathpazo`](http://ctan.org/pkg/mathpazo)) make old-style figures
available and provide explicit support for making them the default:
`\usepackage[osf]{mathpazo}` selects a form where digits are
always old-style in text.  The [`fontinst`](http://ctan.org/pkg/fontinst) package will
automatically generate ''old-style versions'' of commercial Adobe Type
1 font families for which ''expert'' sets are available.

It's also possible to make virtual fonts, that offer old-style digits,
from existing font packages.  The `cmolddig` bundle provides
a such a virtual version of Knuth's originals, and the `eco`
or `hfoldsty` bundles both provide versions of the EC
fonts.  The `lm` family offers old-style figures to OpenType
users (see below), but we have no stable mapping for `lm`
with old-style digits from the Adobe Type 1 versions of the fonts.

Originally, oldstyle figures were only to be found the expert sets of
commercial fonts, but now they are increasingly widely available.  An
example is Matthew Carter's Georgia font, which has old-style figures
as its normal form (the font was created for inclusion with certain
Microsoft products and is intended for on-screen viewing).

OpenType fonts have a pair of axes for number variations&nbsp;&mdash;
proportional/tabular and lining/oldstyle selections are commonly
available.  ''Full feature access'' to OpenType fonts, making such
options available to the (La)TeX user, is already supported by
[XeTeX](./FAQ-xetex.html) using, for example, the [`fontspec`](http://ctan.org/pkg/fontspec)
package.  Similar support is also in the works for
[LuaTeX](./FAQ-luatex.html).

