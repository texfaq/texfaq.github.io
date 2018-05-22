# Underlined text won't break

Knuth made no provision for underlining text: he took the view that
underlining is not a typesetting operation, but rather one that
provides emphasis on typewriters, which typically offer but one
typeface.  The corresponding technique in typeset text is to switch
from upright to italic text (or vice-versa): the LaTeX command
`\emph` does just that to its argument.

Nevertheless, typographically illiterate people (such as those that
specify double-spaced
[thesis styles](./FAQ-linespace.html))
continue to require underlining of us, so LaTeX as distributed
defines an `\underline` command that applies the mathematical
'underbar' operation to text.  This technique is not entirely
satisfactory, however: the text gets stuck into a box, and won't break
at line end.

Two packages are available that solve this problem.  The
[`ulem`](http://ctan.org/pkg/ulem) package redefines the
`\emph` command to underline its argument; the underlined text thus
produced behaves as ordinary emphasised text, and will break over the
end of a line.  (The package is capable of other peculiar effects,
too: read its documentation.)
The [`soul`](http://ctan.org/pkg/soul) package defines an `\ul` command (after which the
package is, in part, named) that underlines running text.

Beware of [`ulem`](http://ctan.org/pkg/ulem)'s default behaviour, which is to convert the
`\emph` command into an underlining command; this can be avoided by
loading the package with:
```latex
\usepackage[normalem]{ulem}
```

