---
title:  Old LaTeX font references such as `\tenrm`
section: Things are Going Wrong&hellip;
subsection: Things have ''gone away''
date: 2014-06-10
---

LaTeX 2.09 defined a large set of commands for access to the fonts
that it had built in to itself.  For example, `cmr` might
appear as `\fivrm`, `\sixrm`, `\sevrm`,
`\egtrm`, `\ninrm`, `\tenrm`, `\elvrm`, `\twlrm`,
`\frtnrm`, `\svtnrm`, `\twtyrm` and `\twfvrm`, according
to the size it's being typeset at.
These commands were never documented, but certain packages
nevertheless used them to achieve effects they needed.

Since the commands weren't public, they weren't included in LaTeX 2e;
to use the unconverted LaTeX 2.09 packages under LaTeX 2e, you need
also to include the [`rawfonts`](https://ctan.org/pkg/rawfonts) package (which is part of the
LaTeX 2e distribution).

