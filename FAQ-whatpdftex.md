---
ID: Q-whatpdftex
revised: 2014-06-10
---
# What is pdfTeX?

One can reasonably say that pdfTeX is (today) the main stream of
TeX distributions: most LaTeX and many ConTeXt users nowadays use
pdfTeX whether they know it or not (more precisely, they use
pdfTeX extended by
  [&epsilon;-TeX](FAQ-etex.md)).
So what is pdfTeX?

pdfTeX is a development of TeX that is capable of generating
typeset PDF output in place of DVI.  pdfTeX has
other capabilities, most notably in the area of fine typographic
detail (for example, its support for 
  [optimising line breaks](FAQ-overfull.md)),
but its greatest impact to date has been in the area of
PDF output.

pdfTeX started as a topic for H&agrave;n Th&#x1ebf; Th&agrave;nh's Master's&nbsp;thesis,
and seems first to have been published in TUGboat 18(4), in 1997
(though it was certainly discussed at the TUG'96 conference in
Russia).

While the world was making good use of ''pre-releases'' of pdfTeX,
Th&agrave;nh used it as a test-bed for the micro-typography which was the
prime subject of his Ph.D.&nbsp;research.  Since Th&agrave;nh was finally
awarded his Ph.D., day-to-day maintenance and development of
pdfTeX&nbsp;1.0 (and later) has been in the hands of a group of
pdfTeX maintainers (which includes Th&agrave;nh); the group has managed
to maintain a stable platform for general use.

Development of pdfTeX has mostly stopped (only bug fixes, and
occasional small development items are processed): future development
is focused on [LuaTeX](FAQ-luatex.md).

