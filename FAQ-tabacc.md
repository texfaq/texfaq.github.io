---
ID: Q-tabacc
section: Why does it _do_ that?
subsection: Common errors
revised: 2014-06-10
---
# Accents misbehave in `tabbing`

So you are constructing a `tabbing` environment, and you
have the need of some diacriticised text&nbsp;&mdash; perhaps something as simple
as `\'{e}`&nbsp;&mdash; and the accent disappears because it has been
interpreted as a `tabbing` command, and everything goes
wrong.

This is really a rather ghastly feature of the `tabbing`
environment; in order to type accented characters you need to use the
`\a` kludge: so `\a'{e}` inside `tabbing` for
`\'{e}` outside, and similarly `\a` for `\` and `\a=`
for `\=`.  This whole procedure is of course hideous and
error-prone.

The simplest alternative is to type in an encoding that has the
diacriticised characters in it, and to use an appropriate encoding
definition file in the [`inputenc`](https://ctan.org/pkg/inputenc) package.  So for example,
type:
  `\usepackage[latin1]{inputenc}`

  `...`

  `\begin{tabbing}`

  `...`

  `...` `\>` `voil&agrave;` `\>` `...`
for:
  &hellip;
voil&agrave;
&hellip;
and the internal mechanisms of the [`inputenc`](https://ctan.org/pkg/inputenc) package will put
the right version of the accent command in there.

A witty reversal of the r&ocirc;les is introduced by the package
[`Tabbing`](https://ctan.org/pkg/Tabbing) (note the capital ''T''): it provides a
`Tabbing` environment which duplicates
`tabbing`, but all the single-character commands become
complicated objects.  So `tabbing`s `\>` becomes
`\TAB>`, `\=` becomes `\TAB=`, and so on.  The above trivial
example would therefore become:
```latex
\usepackage{Tabbing}
...
\begin{Tabbing}
  ...  ... \TAB> voil\`a \TAB> ...
```

