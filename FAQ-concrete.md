---
title: Using the "Concrete" fonts
category: fonts
permalink: /FAQ-concrete
---

The Concrete Roman fonts were designed by Don Knuth for a book called
"Concrete Mathematics", which he wrote with Graham and Patashnik
(_the_ Patashnik, of BibTeX fame).  Knuth
only designed text fonts, since the book used the Euler fonts for
mathematics.  The book was typeset using Plain TeX, of course, with
additional macros that may be viewed in a file `gkpmac.tex`,
which is available on CTAN.

The packages [`beton`](https://ctan.org/pkg/beton), [`concmath`](https://ctan.org/pkg/concmath), and
[`ccfonts`](https://ctan.org/pkg/ccfonts) are LaTeX packages that change the default text
fonts from Computer Modern to Concrete.  Packages [`beton`](https://ctan.org/pkg/beton) and
[`ccfonts`](https://ctan.org/pkg/ccfonts) also slightly increase the default value of
`\baselineskip` to account for the rather heavier weight of the
Concrete fonts.  If you wish to use the `Euler` fonts for
mathematics, as Knuth did, there's the [`euler`](https://ctan.org/pkg/euler) package which
has been developed from Knuth's own Plain TeX-based set: these
macros are currently deprecated (they clash with many things, including
AMSLaTeX).  The independently-developed [`eulervm`](https://ctan.org/pkg/eulervm)
bundle is therefore preferred to the [`euler`](https://ctan.org/pkg/euler) package.  (Note
that installing the [`eulervm`](https://ctan.org/pkg/eulervm) bundle involves installing a
series of virtual fonts.  While most modern distributions seem to have
the requisite files installed by default, you may find you have to
install them.  If so, see the file `readme` in the
[`eulervm`](https://ctan.org/pkg/eulervm) distribution.)

A few years after Knuth's original design, Ulrik Vieth
designed the Concrete Math fonts.  Packages
[`concmath`](https://ctan.org/pkg/concmath), and [`ccfonts`](https://ctan.org/pkg/ccfonts) also change the default math
fonts from Computer Modern to Concrete and use the Concrete versions
of the AMS fonts (this last behaviour is optional in the case
of the [`concmath`](https://ctan.org/pkg/concmath) package).

There are no bold Concrete fonts, but it is generally accepted that
the Computer Modern Sans Serif demibold condensed fonts are an
adequate substitute.  If you are using [`concmath`](https://ctan.org/pkg/concmath) or
[`ccfonts`](https://ctan.org/pkg/ccfonts) and you want to follow this suggestion, then use the
package with `boldsans` class option (in spite of the fact
that the [`concmath`](https://ctan.org/pkg/concmath) documentation calls it
`sansbold` class option). If you are using [`beton`](https://ctan.org/pkg/beton),
add
  `\renewcommand{\bfdefault}{sbc}`
to the preamble of your document.

Type&nbsp;1 versions of the fonts are available.  For OT1 encoding,
they are available from [MicroPress](FAQ-psfchoice).  The
[CM-Super fonts](FAQ-textrace) contain Type&nbsp;1 versions
of the Concrete fonts in T1 encoding.

