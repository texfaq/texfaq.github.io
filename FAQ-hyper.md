---
section: Hypertext and PDF
permalink: /FAQ-hyper
date: 2014-06-10
---

# Making hypertext documents from TeX

If you want on-line hypertext with a (La)TeX source, probably on the
World Wide Web, there are four technologies to consider:
  

-  start from (La)TeX, and use one of a number of techniques to
    translate (more or less) directly to
    [HTML](FAQ-LaTeX2HTML.md);
-  Start from [`texinfo`](FAQ-texinfo.md) source,
    and use the `info` viewer, or convert the [`texinfo`](https://ctan.org/pkg/texinfo)
    source to HTML using `texi2html`;
-  Start from (La)TeX; use pdfTeX, XeTeX or LuaTeX to
    produce PDF, using [`hyperref`](https://ctan.org/pkg/hyperref) to construct
    hyperlinks.
-  Start from (unconventional) (La)TeX which use the 
    [hyperTeX conventions](FAQ-hypertex.md).

