---
title: What is MetaPost?
category: background
permalink: /FAQ-MP
redirect_from: /FAQ-mp
date: 2018-05-28
---

# What is MetaPost?

The MetaPost system (by John Hobby) implements a picture-drawing language
very much like that of MetaFont; the difference is that MetaPost outputs
vector graphic files instead of run-length-encoded bitmaps; output
formats available are PostScript and SVG.

Around 2007, MetaPost was
separated into a frontend program and backend library named MPlib (which
was then linked into
  [LuaTeX](FAQ-xetex-luatex))
by Taco Hoekwater.
This gives LuaTeX some graphical capabilities and
forms an alternative to macro based drawing packages such as
[TikZ and PSTricks](FAQ-drawing).


MetaPost is a powerful language for producing figures for documents to be
printed on PostScript printers, either directly or embedded in (La)TeX
documents.  MetaPost is able to integrate text and mathematics, marked up
for use with TeX, within the graphics.  (Knuth says that he
uses nothing but MetaPost for diagrams in text that he is writing.)

Although pdfLaTeX cannot ordinarily handle PostScript graphics, the
output of MetaPost is sufficiently simple and regular that pdfLaTeX
can handle it direct, using code borrowed from
  [ConTeXt](FAQ-context)&nbsp;&mdash;
see [Graphics in pdfLaTeX](FAQ-pdftexgraphics).

Much of MetaPost's source code was copied from MetaFont's sources, with
Knuth's permission.



A mailing list discussing MetaPost is available;
  subscribe via the 
  [TUG `mailman` interface](http://lists.tug.org/metapost).
The TUG website also hosts a 
[MetaPost summary page](https://tug.org/metapost.html), and the
[`tex-overview`](https://ctan.org/pkg/tex-overview) document gives you a lot more detail (and some
explanatory background material).

