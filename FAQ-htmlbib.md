---
title: Making HTML of your Bibliography
category: bibliographies
permalink: /FAQ-htmlbib
---

A neat solution is offered by the [`noTeX`](https://ctan.org/pkg/notex-bst) bibliography style.
This style produces a `bbl` file which is in fact a series of
HTML `P` elements of class `noTeX`, and which
may therefore be included in an HTML file.  Provision is made
for customising your bibliography so that its content when processed by
[`noTeX`](https://ctan.org/pkg/notex-bst) is different from that presented when it is processed
in the ordinary way by (La)TeX.

A thorough solution is offered by [`bib2xhtml`](https://ctan.org/pkg/bib2xhtml); using it, you
make use of one of its modified versions of many common BibTeX
styles, and post-process the output so produced using a
`perl` script.

A more conventional translator is the `awk` script
`bbl2html`, which translates the `bbl` file you've generated:
a sample of the script's output may be viewed on the web, at
<http://rikblok.cjb.net/lib/refs.html>

