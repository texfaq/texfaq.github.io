# Cancelling `\ragged` commands

LaTeX provides commands `\raggedright` and `\raggedleft`, but
none to cancel their effect.  The `\centering` command is
implemented in the same way as the `\ragged*` commands, and suffers
in the same way.

The following code (to be inserted in a package of your own, or as
[internal LaTeX code](./FAQ-atsigns.html)) defines a command that
restores flush justification at both margins:
```latex
\def\flushboth{%
  \let\\\@normalcr
  \@rightskip\z@skip \rightskip\@rightskip
  \leftskip\z@skip
  \parindent 1.5em\relax}
```
There's a problem with the setting of `\parindent` in the code: it's
necessary because both the `\ragged` commands set `\parindent` to
zero, but the setting isn't a constant of nature: documents using a
standard LaTeX class with `twocolumn` option will have
`1.0em` by default, and there's no knowing what you (or some
other class) will have done.

Any but a really old copy of Martin Schr&ouml;der's [`ragged2e`](http://ctan.org/pkg/ragged2e)
package has a `\justifying` command to match its 
[versions of the LaTeX 'ragged' commands](./FAQ-ragright.html).  The
package also provides a `justify` environment, which
permits areas of justified text in a larger area which is ragged.

