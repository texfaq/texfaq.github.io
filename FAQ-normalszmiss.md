# `\normalsize` not defined

The LaTeX error:
```latex
The font size command \normalsize is not defined:
there is probably something wrong with the class file.
```
reports something pretty fundamental (document base font size has not
been set, something the document class does for you).  It _can_,
in principle, be a problem with the document class, but is more often
caused by the user forgetting to start their document with a
`\documentclass` command.

