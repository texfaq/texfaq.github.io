# Set specifications and Dirac brackets

One of the few glaring omissions from TeX's mathematical
typesetting capabilities is a means of setting separators in the
middle of mathematical expressions.  TeX provides primitives called
`\left` and `\right`, which can be used to modify brackets (of
whatever sort) around a mathematical expression, as in:
`\left(`` <expression> ``\right)`&nbsp;&mdash; the size of the
parentheses is matched to the vertical extent of the expression.

However, in all sorts of mathematical enterprises one may find oneself
needing a `\middle` command, to be used in expressions like
```latex
\left\{ x \in \mathbb{N} \middle| x \mbox{ even} \right\}
```
to specify the set of even natural numbers.  The 
[&epsilon;-TeX system](./FAQ-etex.html)
defines just such a command, but users of Knuth's original need some
support.  Donald Arseneau's [`braket`](http://ctan.org/pkg/braket) package provides commands
for set specifications (as above) and for Dirac brackets (and bras and
kets).  The package uses the &epsilon;-TeX built-in command if it finds
itself running under &epsilon;-TeX.

