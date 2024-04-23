---
title: Drawing packages for LaTeX
category: misc
permalink: /FAQ-texdraw
redirect_from: /FAQ-texcad
date: 2021-04-17
---

In spite of the availability of [PGF/TikZ](https://ctan.org/pkg/pgf) and
[PStricks](https://ctan.org/pkg/pstricks) to build nice drawings
from your document, using (La)TeX syntax, you may need to draw things
in a graphics interface.

- [Inkscape](https://inkscape.org/) is a free and open-source vector graphics
  editor, that can export TikZ code. Its range of features makes it a very
  powerful tool, compatible with LaTeX workflows, but not limited to them.
  It's developed for Linux, MacOS and Windows

- [Xfig](https://sourceforge.net/projects/mcj/files/) is a free and open-source
  vector graphics editor which runs on Linux.
  It's ability to export PSTricks or PGF/TikZ code allows a smooth integration of
  Xfig-generated images into LaTeX documents. [Available from CTAN](https://ctan.org/pkg/xfig).

- [LaTeXDraw](http://latexdraw.sourceforge.net/) allows you to generate PStricks
  code, or PDF or PS files to be included in your documents. It runs under Linux,
  MacOS and Windows.

- [TeXCAD](https://sourceforge.net/projects/texcad/) is a program for Windows
  which enables the user to draw diagrams on screen using a mouse or arrow keys,
  with an on-screen menu of available  picture-elements.  Its output is code
  for the LaTeX `picture` environment.
  Its development is halted since 2019.

  A Unix port of the program, [`xtexcad`](https://ctan.org/pkg/xtexcad) had been
  made, but is no longer maintained.

