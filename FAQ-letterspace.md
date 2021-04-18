---
title: Changing the space between letters
category: formatting
permalink: /FAQ-letterspace
---

A common technique in advertising copy (and other text whose actual
content need not actually be _read_) is to alter the space
between the letters (otherwise known as the tracking).  As a general
rule, this is a very bad idea: it detracts from legibility, which is
contrary to the principles of typesetting (any respectable font you
might be using should already have optimum tracking built into it).

The great type designer, Eric Gill, is credited with saying
"he who would letterspace lower-case text, would steal sheep".  (The
attribution is probably apocryphal: others are also credited with the
remark.  Stealing sheep was, in the 19th century, a capital offence in
Britain.)  As the remark suggests, though, letterspacing of upper-case
text is less awful a crime; the technique used also to be used for
emphasis of text set in Fraktur (or similar) fonts.

Straightforward macros (usable, in principle, with any TeX macro
package) may be found in [`letterspacing`](https://ctan.org/pkg/letterspacing)
(which is the name of the `tex` file).

A more comprehensive solution is to be found in the [`soul`](https://ctan.org/pkg/soul)
package (which is optimised for use with LaTeX, but also works with
Plain TeX).  Soul also permits hyphenation of letterspaced text;
Gill's view of such an activity is not (even apocryphally) recorded.
(Spacing-out forms part of the name of [`soul`](https://ctan.org/pkg/soul);
the other half is described in [another question](FAQ-underline).)

Possibly the "ultimate" in this field is the [`microtype`](https://ctan.org/pkg/microtype),
which uses the micro-typography capabilities of current pdfTeX to
provide a `\textls` command, which operates according to parameters
declared in a `\SetTracking` command.  [`Microtype`](https://ctan.org/pkg/Microtype)'s
"tracking" facility expands the natural spacing of the font itself,
rather than inserting space between characters.  Ordinarily,
letter-spacing will destroy ligatures; however, this is _wrong_
for some font styles (for example, `fraktur`), and the package provides
a means of protecting the ligatures in a letter-spaced text.

