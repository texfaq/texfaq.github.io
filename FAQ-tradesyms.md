# How to get copyright, trademark, etc.

The ''
[Comprehensive symbol list](./FAQ-symbols.html)'', lists
the symbol commands `\textcopyright`,
`\textregistered` and `\texttrademark`, which are available in
TS1-encoded fonts, and which are enabled using the
[`textcomp`](http://ctan.org/pkg/textcomp) package.

In fact, all three commands are enabled in default LaTeX, but the
glyphs you get aren't terribly beautiful.  In particular,
`\textregistered` behaves oddly when included in bold text (for
example, in a section heading), since it is composed of a small-caps
letter, which typically degrades to a regular shape letter when asked
to set in a bold font.  This means that the glyph becomes a circled
''r'', whereas the proper symbol is a circled ''R''.

This effect is of course avoided by use of [`textcomp`](http://ctan.org/pkg/textcomp).

Another problem arises if you want `\textregistered` in a
superscript position (to look similar to `\texttrademark`).
Using a maths-mode superscript to do this provokes lots of pointless
errors: you _must_ use
```latex
\textsuperscript{\textregistered}
```

