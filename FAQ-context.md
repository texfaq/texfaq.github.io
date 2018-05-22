# What is ConTeXt?

[ConTeXt](http://www.pragma-ade.com/) is a macro package
created by Hans Hagen of Pragma-Ade; it started as a production tool
for Pragma (which is a publishing company).  ConTeXt is a
document-production system based, like LaTeX, on the TeX
typesetting system.  Whereas LaTeX insulates the writer from
typographical details, ConTeXt takes a complementary approach by
providing structured interfaces for handling typography, including
extensive support for colors, backgrounds, hyperlinks, presentations,
figure-text integration, and conditional compilation.  It gives the
user extensive control over formatting while making it easy to create
new layouts and styles without learning the TeX macro
language. ConTeXt's unified design avoids the package clashes that
can happen with LaTeX.

ConTeXt also integrates MetaFun, a superset of MetaPost and a powerful
system for vector graphics.  MetaFun can be used as a stand-alone
system to produce figures, but its strength lies in enhancing
ConTeXt documents with accurate graphic elements.

ConTeXt allows users to specify formatting commands in English,
Dutch, German, French, or Italian, and to use different typesetting
engines (pdfTeX, XeTeX, Aleph and LuaTeX) without
changing the user interface. ConTeXt continues to develop, often in
response to requests from the user community.

The development of [LuaTeX](./FAQ-luatex.html) was originally driven
by ConTeXt, almost from the start of its project.  Nowadays,
ConTeXt it is distributed in two versions&nbsp;&mdash; mark two (files with
extension `mkii`) which runs on pdfTeX but is not under
active development, and mark four (files with extension
`mkiv`) (which runs on LuaTeX and is where development
happens).

ConTeXt has a large developer community (though possibly not as
large as that of LaTeX), but those developers who are active seem to have
prodigious energy.  Support is available via a 
[WIKI site](http://wiki.ConTeXtgarden.net/Main_Page) and via the
[mailing list](http://www.ntg.nl/mailman/listinfo/ntg-ConTeXt).
A ''standalone'' distribution (a TeX distribution with no macros
other than ConTeXt-based ones) is available from
[http://minimals.ConTeXtgarden.net/] &mdash; it provides
a ConTeXt system on any of a number of platforms, executing either
mark&nbsp;ii or mark&nbsp;iv ConTeXt.

Note that CTAN does _not_ hold the primary distribution of
ConTeXt&nbsp;&mdash; potential users should refer to
[ConTeXt 'garden' site](http://ConTeXtgarden.net) for details
of the
current distribution.  CTAN holds a copy of ConTeXt but
makes no claim about its ''up-to-date''ness.  Likewise, CTAN
holds a few contributed ConTeXt packages, but many more are to be
found via the [ConTeXt garden](http://ConTeXtgarden.net).

