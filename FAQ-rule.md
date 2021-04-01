---
title: Drawing a rule
category: graphics
tags: layout
permalink: /FAQ-rule
---

In some document, one wants to draw an horizontal line to separate
paragraphs. It's easy to do that in TeX or LaTeX, and you can even
use packages to draw fancy rules.

The `\rule` command is used to draw a line. It takes as first argument
the (horizontal) width of the line, as second argument the thickness ---
it also has an optional argument which allows the line to be shifted below
the base line (this is called depth, as for characters with descenders).
Its full syntax is therefore: `\rule[depth]{width}{height}`.

```latex
\rule{3cm}{1mm}

\rule{0.333ex}{3em}
```

The usual color-changing commands from packages [`color`](https://ctan.org/pkg/color)
and [`xcolor`](https://ctan.org/pkg/xcolor) can be used with rules:

```latex
\textcolor{red}{\rule{5ex}{1pt}}
\textcolor{blue}{\rule{4ex}{3pt}}
```


Plain TeX offers two distinct commands for horizontal and vertical lines:
```latex
\vrule height 1cm depth 5mm width .4pt

\hrule height .2pt depth .2pt width \textwidth
```

If you want to go the fancy way, you can also load the [`TikZ`](https://ctan.org/pkg/pgf)
package, and try the whole range of `decorations` it offers:

```latex
\tikz\draw[double,thick,blue] (0,0) -- (\linewidth,0pt);

\tikz\draw[decorate,decoration=snake] (0,0) -- (\linewidth,0pt);

\tikz\draw[decorate,decoration=snake,shorten >= 4.2pt] (0,0) -- (\linewidth,0pt);

\tikz\draw[decorate,decoration={footprints,foot length=3ex},red] (0,0) -- (\linewidth,0pt);
```
