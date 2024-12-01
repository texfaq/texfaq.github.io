---
title: Underlined text won't break
category: errors
tags: layout
permalink: /FAQ-underline
---

Knuth made no provision for underlining text: he took the view that
underlining is not a typesetting operation, but rather one that
provides emphasis on typewriters, which typically offer but one
typeface.  The corresponding technique in typeset text is to switch
from upright to italic text (or vice-versa): the LaTeX command
`\emph` does just that to its argument.

Nevertheless, typographically illiterate people (such as those that
specify double-spaced
[thesis styles](FAQ-linespace))
continue to require underlining of us, so LaTeX as distributed
defines an `\underline` command that applies the mathematical
"underbar" operation to text.  This technique is not entirely
satisfactory, however: the text gets stuck into a box, and won't break
at line end.

Several packages are available that solve this problem the two oldest being `ulem` and `soul`:

[`ulem`](https://ctan.org/pkg/ulem) package redefines the
`\emph` command to underline its argument; the underlined text thus
produced behaves as ordinary emphasised text, and will break over the
end of a line.  (The package is capable of other peculiar effects,
too: read its documentation.)
The [`soul`](https://ctan.org/pkg/soul) package defines an `\ul` command (after which the
package is, in part, named) that underlines running text.

Beware of [`ulem`](https://ctan.org/pkg/ulem)'s default behaviour, which is to convert the
`\emph` command into an underlining command; this can be avoided by
loading the package with:
```latex
\usepackage[normalem]{ulem}
```

Two newer packages are `soulpos` and `lua-ul`.

[`soulpos`](https://ctan.org/pkg/soulpos) supports other decorations (e.g. wavy line), but requires two compilation passes.

[`lua-ul`](https://ctan.org/pkg/lua-ul) has better support for linebreaking and hyphenation and arbitrary TeX commands within the argument, but only works with LuaLatex.



