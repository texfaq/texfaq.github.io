---
title: Math on the Web
category: misc
permalink: /FAQ-mathml
date: 2018-05-25
---

An earlier answer 
(["converting to HTML"](FAQ-LaTeX2HTML))
addresses the issue of converting existing (La)TeX documents for
viewing on the Web as HTML.

Better font availability  and the
support for new Web standards means that there are now several
possibilities for good rendering of mathematics on the web. 

- Font technologies: Direct representation of mathematics in
  browsers was hampered by the limited range of symbols
  in the fonts that were available. However, all modern operating
  systems now include OpenType fonts with large collections of symbols
  and the availablity of web font technology means that page authors
  may specify fonts without relying on the reader having pre-installed
  suitable fonts.


  The available OpenType math fonts are discussed in [OpenType fonts](FAQ-otf-maths)

- Direct interpretaton of a subset of LaTeX math markup by Javascript.
  The speed of modern javaScript engines means that it is feasible to
  serve web pages that contain fragments of TeX markup that is converted
  in the reader's browser. Two main systems are in common use:

  - [MathJax](https://www.mathjax.org/) is the most widely used
  JavaScript Library for rendering mathematics.  It supports several
  input syntaxes includedin a subset of LaTeX math syntax, and may be
  configured to render using several output forms, MathML, or SVG or
  (most commonly) HTML+CSS. While normally used as a JavaScript
  Library running in the reader's browser it is also possible (using
  its [Node.js](https://nodejs.org/) interface) to do the conversion
  in advance,and serve the generated HTML pages.

   - [KaTeX](https://khan.github.io/KaTeX/) Is a newer alternative
   JavasScript Library, its main aim is to be simpler and faster than
   MathJax. It has fewer input or output forms and covers a smaller
   range of LaTeX constructs, but is a viable alternative for pages
   that do not require the additional features of MathJax.


- Conversion of (La)TeX source to XML is already available (through
  TeX4ht at least), and work continues in that arena.  The
  alternative, authoring in XML (thus producing documents that are
  immediately Web-friendly, if not ready) and using (La)TeX to typeset
  is also well advanced.  One useful technique is [_transforming_ the
  XML to LaTeX](FAQ-SGML2TeX), using an XSLT stylesheet or code for
  an XML library, and then simply using LaTeX; alternatively, one may
  [typeset direct from the XML source](FAQ-readML).

- Direct
  representation of mathematics MathML is a standard for representing
  maths on the Web; Browser support for MathML is provided by
  `firefox`, and `safari` and other browsers using te same underlying
  html rendering libraries.  At the current time it is not supported
  by Chrome or Edge browsers.  MathML in the page may be rendered by
  MathJax, with an output identical to its TeX r.endering. MathJax
  uses a variant of MathML as its intermediate format)

  The [MathJax project's site](https://www.mathjax.org/) also
  allows you to download your own copy and install it on one of _your_
  servers.  `MathJax` is open source software.

 - An approach different from (La)TeX conversion is taken by
  the [_GELLMU_ Project](https://www.albany.edu/~hammond/gellmu/).
  Its _article_ XML document type, which has a markup vocabulary
  close to LaTeX that can be edited using LaTeX-like markup
  (even though it is not LaTeX&nbsp;&mdash; so far), comes with translators
  that make both PDF (via _pdflatex_) and
  XHTML+MathML.  Such an approach avoids the inherent
  limitations of the "traditional" (La)TeX translation processes,
  which have traps that can be sprung by unfettered use of (La)TeX
  markup.
- Graphics 
  SVG is a standard for graphics representation on the web.
  While the natural use is for converting existing figures,
  representations of formulas are also possible.

- An interesting alternative is
  [MathTeX](http://www.forkosh.com/mathtex.html), which sits
  on your server as a CGI script, and you use it to include
  your TeX, in your HTML, as if it were an image:
```html
<img src="/cgi-bin/mathtex.cgi?f(x)=\int\limits_{-\infty}^xe^{-t^2}dt">
```
([`Mathtex`](https://ctan.org/pkg/Mathtex) supersedes the author's earlier [`mimetex`](https://ctan.org/pkg/mimetex).)

