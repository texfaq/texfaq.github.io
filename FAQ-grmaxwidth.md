# Limit the width of imported graphics

Suppose you have graphics which may or may not be able to fit within
the width of the page; if they will fit, you want to set them at their
natural size, but otherwise you want to scale the whole picture so
that it fits within the page width.

You do this by delving into the innards of the graphics package (which
of course needs a little LaTeX internals programming):
```latex
\makeatletter
\def\maxwidth{%
  \ifdim\Gin@nat@width>\linewidth
    \linewidth
  \else
    \Gin@nat@width
  \fi
}
\makeatother
```
This defines a ''variable'' width which has the properties you want.
Replace `\linewidth` if you have a different constraint on the width
of the graphic.

Use the command as follows:
```latex
\includegraphics[width=\maxwidth]{figure}
```

