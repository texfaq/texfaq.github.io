---
title: 'The font size command `\normalsize` not defined'
category: errors
permalink: /FAQ-normalszmiss
---

The LaTeX error:
```latex
! LaTeX Error: The font size command \normalsize is not defined:
               there is probably something wrong with the class file.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...
 
l.3 \begin{document}
                    
?
```
reports something pretty fundamental (document base font size has not
been set, something the document class does for you).

It _can_,
in principle, be a problem with the document class, but is more often
caused by the user forgetting to start their document with a
`\documentclass` command.

