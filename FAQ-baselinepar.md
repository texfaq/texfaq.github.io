# Only one `\baselineskip` per paragraph

The `\baselineskip`, which determines the space between lines, is
not (as one might hope) a property of a line, but of a paragraph.  As
a result, in a `10pt` (nominal) document (with a default
`\baselineskip` of `12pt`), a single character with a larger
size, as:
```latex
{\Huge A}
```
will be squashed into the paragraph: TeX will make sure it doesn't
scrape up against the line above, but won't give it ''room to
breathe'', as it does the text at standard size; that is, its size
(`24.88pt`) is taken account of, but its `\baselineskip`
(`30pt`) isn't.  This problem may be solved by a _strut_:
the name comes from movable metal typography, and refers to a spacer
that held the boxes (that contained the metal character shapes) apart.
Every time you change font size, LaTeX redefines the command
`\strut` to provide the equivalent of a metal-type strut for the
size chosen.  So for the example above, we would type
```latex
Paragraph text ...
   {\Huge A\strut}
   ... paragraph continues ...
```
This technique _only_ works for such very short intrusions; if
you need several lines, you should convert your intrusion into a
`quote` environment, since it's not possible to provide a
`\strut` command for every line of the intrusion, in a sensible
way, so proceed by:
```latex
\begin{quote}
  \Huge A LENGTHY TEXT ...
  SHOUTING AT THE READER!
\end{quote}
```

The contrary case:
```latex
Paragraph text ...
{\footnotesize Extended interjection ...
   ... into the paragraph.}
      ... paragraph continues ...
```
will look wrong, since the `8pt` interjection will
end up set on the `12pt` `\baselineskip` of the paragraph,
rather than its preferred `8.5pt`.  A `\strut` here is no
help: there is no such thing as a ''negative strut'', that draws lines
together, so once more, one falls back on the `quote` to
separate the interjection:
```latex
Paragraph text ...
\begin{quote}
  \footnotesize Extended interjection ...
  ... into the paragraph.
\end{quote}
... paragraph continues ...
```

The same effect is at work when we have something like:
```latex
Paragraph text ...
  ... paragraph body ends.
{\footnotesize Comment on the paragraph.}

Next paragraph starts...
```
which will set the body of the first paragraph on the constricted
`\baselineskip` of the `\footnotesize` comment.  Solve this
problem by ending the initial paragraph before starting the comment:
```latex
Paragraph text ...
  ... paragraph body ends.
\par\nothtml{\noindent}
{\footnotesize Comment on the paragraph.}

Next paragraph starts...
```
(We suggest `\noindent` to make the comment look as if it is part
of the paragraph it discusses; omit `\noindent` if that is inappropriate.)

A variation of the previous issue arises from a paragraph whose size
is different from those around it:
```latex
{\Large (Extended) IMPORTANT DETAILS ...}

Main body of text...
```
Again, the problem is solved by ending the paragraph in the same group
as the text with a different size:
```latex
{\Large (Extended) IMPORTANT DETAILS ...\par}

Main body of text...
```

