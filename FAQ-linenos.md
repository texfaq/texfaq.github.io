---
section: Adjusting the typesetting
subsection: Typesetting specialities
date: 2014-06-10
---

# Including line numbers in typeset output

For general numbering of lines, there are two packages for use with
LaTeX, [`lineno`](https://ctan.org/pkg/lineno) (which permits labels attached to
individual lines of typeset output) and [`numline`](https://ctan.org/pkg/numline).
([`Numline`](https://ctan.org/pkg/Numline) is considered obsolete, but remains available from
the archive.)

Both of these packages play fast and loose with the LaTeX output
routine, which can cause problems: the user should beware&hellip;

If the requirement is for numbering verbatim text, [`moreverb`](https://ctan.org/pkg/moreverb),
or [`fancyvrb`](https://ctan.org/pkg/fancyvrb) (see 
[including files verbatim](FAQ-verbfile.md)) may be used.
Class [`memoir`](https://ctan.org/pkg/memoir) also provides the necessary facilities.

One common use of line numbers is in critical editions of texts, and
for this the [`edmac`](https://ctan.org/pkg/edmac) package offers comprehensive support;
[`ledmac`](https://ctan.org/pkg/ledmac) is a LaTeX port of [`edmac`](https://ctan.org/pkg/edmac).

The [`vruler`](https://ctan.org/pkg/vruler) package sidesteps many of the problems associated
with line-numbering, by offering (as its name suggests) a rule that
numbers positions on the page.  The effect is good, applied to
even-looking text, but is poor in texts that involve breaks such as
interpolated mathematics or figures.  Documentation of the package, in
the package itself, is pretty tough going, though there is an example
(also inside the package file).

