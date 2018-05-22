# Future WWW technologies and (La)TeX

An earlier answer 
([''converting to HTML''](./FAQ-LaTeX2HTML.html))
addresses the issue of converting existing (La)TeX documents for
viewing on the Web as HTML.  All the present techniques are
somewhat flawed: the answer explains why.

However, things are changing, with
better font availability, cunning HTML programming and the
support for new Web standards.

- Font technologies Direct representation of mathematics in
  browsers has been hampered up to now by the limited range of symbols
  in the fonts whose availability designers can count on.  Some existing
  (La)TeX to HTML converters provide maths symbols by
  hitching them to alternate font face specifications for standard
  code points in a non-standard way.  This does nothing for the
  universality of the HTML so generated.

  Now, however, free Unicode-encoded OpenType fonts, with coverage of
  mathematical symbols, are starting to appear.  The much-heralded
  [`STIX` fonts](http://www.stixfonts.org/) are now
  available on CTAN, and a tweaked version
  (`XITS`) and `Asana Math` are also
  available.  The STIX project has still not released macros
  for using the fonts, but the [`unicode-math`](http://ctan.org/pkg/unicode-math) package will do
  what is necessary under XeTeX and LuaTeX, and the fonts can of
  course be used in browsers.
- XML The core of the range of new standards is
  XML, which provides a framework for better structured markup;
  limited support for it has already appeared in some browsers.

  Conversion of (La)TeX source to XML is already available
  (through TeX4ht at least), and work continues in that arena.  The
  alternative, authoring in XML (thus producing documents that
  are immediately Web-friendly, if not ready) and using (La)TeX to
  typeset is also well advanced.  One useful technique is
  [_transforming_ the XML to LaTeX](./FAQ-SGML2TeX.html),
  using an XSLT stylesheet or code for an XML library,
  and then simply using LaTeX; alternatively, one may
  [typeset direct from the XML source](./FAQ-readML.html).
- Direct representation of mathematics
  MathML is a standard for representing maths on the Web; its
  original version was distinctly limited, but version 2 of MathML
  has had major browser support since 2002 with richness of mathematical
  content for online purposes approaching that of TeX for print.
  Browser support for MathML is provided by `amaya`, the
  'Open Source' browser `mozilla` (and its derivatives
  including `NetScape`, `Firefox` and `Galeon`) and
  `Internet Explorer` when equipped with a suitable plug-in
  such as `MathPlayer`.
  There's evidence that (La)TeX users are starting to use such
  browsers.  Some believe that XHTML+MathML now provides
  better online viewing than PDF.
  Work to produce XHTML+MathML is well advanced in both the
  TeX4ht and `TtH` projects for (La)TeX conversion.

  The [`MathJax`](http://www.mathjax.org) engine will process the
  content of LaTeX `\[` &hellip;&nbsp;`\]` and `\(` &hellip;&nbsp;`\)`
  'environments' in an HTML document, to produce mathematical
  output that may (for example) be cut-and-pasted into other programs.

  Incorporation into your document can be
  as simple as incorporating:
```latex
<script type="text/javascript"
  src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML">
</script>
```
  into the header of your HTML document,
  though the [MathJax project's site](http://www.mathjax.org/)
  also allows you to download your own copy and install it on one of
  _your_ servers.  `MathJax` is open source software, so
  you could, in principle, extend it to do even more eccentric tasks.

  An approach different from (La)TeX conversion is taken by
  the [_GELLMU_ Project](http://www.albany.edu/&nbsp;hammond/gellmu/).
  Its _article_ XML document type, which has a markup vocabulary
  close to LaTeX that can be edited using LaTeX-like markup
  (even though it is not LaTeX&nbsp;&mdash; so far), comes with translators
  that make both PDF (via _pdflatex_) and
  XHTML+MathML.  Such an approach avoids the inherent
  limitations of the ''traditional'' (La)TeX translation processes,
  which have traps that can be sprung by unfettered use of (La)TeX
  markup.
- Graphics 
  SVG is a standard for graphics representation on the web.
  While the natural use is for converting existing figures,
  representations of formulas are also possible, in place of the separate
  bitmaps that have been used in the past (and while we wait for the
  wider deployment of MathML).

  Browser plug-ins, that deal with SVG are already available
  (Adobe offer one, for example).  More recently, the open source
  graphics editor [`Inkscape`](http://www.inkscape.org/)
  has appeared, and has been reported to be useful for
  SVG-related work in at least one TeX-related project.  Be
  aware that the developers of `Inkscape` have no illusions
  about being able to replace commercial software, yet&hellip;
- Direct use of TeX markup
  Some time back, IBM developed a browser plug-in called
  TechExplorer, which would display (La)TeX documents direct in a
  browser.  Over the years, it developed into a MathML browser
  plug-in, while still retaining its (La)TeX abilities, but it's now
  distributed (free for Linux and Windows platforms) by
  [Integre Technical Publishing](http://www.integretechpub.com/).

  The disadvantage of the TechExplorer approach is that it places the
  onus on the browser user; and however technically proficient
  _you_ are, it's never safe to assume too much of your readers.
  An interesting alternative is
  [MathTeX](http://www.forkosh.com/mathtex.html), which sits
  on your server as a CGI script, and you use it to include
  your TeX, in your HTML, as if it were an image:
```latex
<img src="/cgi-bin/mathtex.cgi?f(x)=\int\limits_{-\infty}^xe^{-t^2}dt">
```
([`Mathtex`](http://ctan.org/pkg/Mathtex) supersedes the author's earlier [`mimetex`](http://ctan.org/pkg/mimetex).)

