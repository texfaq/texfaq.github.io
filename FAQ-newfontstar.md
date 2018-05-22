# What's wrong with `\newfont`?

If all else fails, you _can_ specify a font using the LaTeX
`\newfont` command.  The font so specified doesn't fit into the
LaTeX font selection mechanism, but the technique can be tempting
under several circumstances.  The command is merely the thinnest of
wrappers around the `\font` primitive, and doesn't really fit with
LaTeX at all.  A simple, but really rather funny, example of the
problems it poses, may be seen in:
```latex
\documentclass[10pt]{article}
\begin{document}
\newfont{\myfont}{cmr17 scaled 2000}
\myfont
\LaTeX
\end{document}
```
(the reader is encouraged to try this).  The ''A'' of `\LaTeX` pretty
much disappears: LaTeX chooses the size on the ''A'' according to
_its_ idea of the font size (10pt), but positions it according to
the dimensions of `\myfont`, which is more than three times
that size.

Another `\myfont` example arises from an entirely different
source.  The mini-document:
```latex
\documentclass{article}
\begin{document}
\newfont{\myfont}{ecrm1000}
{\myfont voil\`a}
\end{document}
```
gives you ''German low double quotes'' (under the ''a'') in place of
the grave accent.  This happens because `ecrm1000` is in a
different [font encoding](./FAQ-whatenc.html) than LaTeX is
expecting&nbsp;&mdash; if you use the LaTeX [`fontenc`](http://ctan.org/pkg/fontenc) package to
select the EC fonts, all these tiresome encoding issues are
solved for you, behind the scenes.

There does however remain a circumstance when you will be tempted to
use `\newfont`&nbsp;&mdash; viz., to get a font size that doesn't fall into
the Knuth standard set of sizes: LaTeX (by default) won't allow you
to use such a size.  Don't despair: see the answer 
''[arbitrary font sizes](./FAQ-fontsize.html)''.

