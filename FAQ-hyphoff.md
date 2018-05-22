# Stopping all hyphenation

It may seem an odd thing to want to do (after all, one of TeX's
great advertised virtues is the quality of its hyphenation) but it's
sometimes necessary.  The real problem is, that the quality of
TeX's output is by default largely dependent on the presence of
hyphenation; if you want to abandon hyphenation, something has to
give.

TeX (slightly confusingly) offers four possible mechanisms for
suppressing hyphenation (there were only two prior to the extensions
that arrived with TeX version&nbsp;3).

First, one can set the hyphenation penalties `\hyphenpenalty` and
`\exhyphenpenalty` to an 'infinite' value (that is to say, 10000).
This means that all hyphenations will sufficiently penalise the line
that would contain them, that the hyphenation won't happen.  The
disadvantage of this method is that TeX will re-evaluate any
paragraph for which hyphenations might help, which will slow TeX
down.

Second, one can select a language for which no hyphenation patterns
exist.  Some distributions create a language `nohyphenation`,
and the [`hyphenat`](http://ctan.org/pkg/hyphenat) package uses this technique for its
`\nohyphens` command which sets its argument without any
hyphenation.  You can load [`hyphenat`](http://ctan.org/pkg/hyphenat) with the command
  `\usepackage[none]{hyphenat}`
to prevent any hyphenation in a single-language document.  The
technique cannot work in a document in which [`babel`](http://ctan.org/pkg/babel) controls
language selection, since [`babel`](http://ctan.org/pkg/babel) incorporates hyphenation
change into its language change facilities.

Third, one can set `\left-` and/or `\righthyphenmin` to a
sufficiently large value that no hyphenation could possibly succeed,
since the minimum is larger than the length of the longest word
TeX is willing to hyphenate (the appropriate value is 62).

Fourth, one can suppress hyphenation for all text using the current
font by the command
```latex
\hyphenchar\font=-1
```
This isn't a particularly practical way for users to suppress
hyphenation&nbsp;&mdash; the command has to be issued for every font the
document uses&nbsp;&mdash; but it's how LaTeX itself suppresses hyphenation
in `tt` and other fixed-width fonts.

Which of the techniques you should use depends on what you actually
want to do.  If the text whose hyphenation is to be suppressed runs
for less than a paragraph, your only choice is the no-hyphens
language: the language value is preserved along with the text (in the
same way that the current font is); the values for penalties and
hyphen minima active at the end of a paragraph are used when
hyphenation is calculated.

Contrariwise, if you are writing a multilanguage document using the
[`babel`](http://ctan.org/pkg/babel) package, you _cannot_ suppress hyphenation
throughout using either the no-hyphens language or the hyphen minima:
all those values get changed at a [`babel`](http://ctan.org/pkg/babel) language switch: use
the penalties instead.

If you simply switch off hyphenation for a good bit of text, the
output will have a jagged edge (with many lines seriously overfull),
and your (La)TeX run will bombard you with warnings about overfull
and underfull boxes (that is, really, lines).  To avoid this you have
two options.

The simplest route is to use `\sloppy` (or its environment version
`sloppypar`), and have TeX stretch what would otherwise
be underfull lines to fill the space offered, while prematurely
wrapping overfull lines and stretching the remainder.  

The better bet is to set the text [ragged right](./FAQ-ragright.html),
and at least get rid of the overfull lines; this technique is
'traditional' (in the sense that typists have always done it) and may
be expected to 
appeal to the specifiers of eccentric document layouts (such as those
for dissertations), but for once their sense conforms with typographic
style.  (Or at least, style constrained in this curious way.)

