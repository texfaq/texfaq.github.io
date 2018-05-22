# What is Context?

[Context](http://www.pragma-ade.com/) is a macro package
created by Hans Hagen of Pragma-Ade; it started as a production tool
for Pragma (which is a publishing company).  CONTeXT is a
document-production system based, like LaTeX, on the TeX
typesetting system.  Whereas LaTeX insulates the writer from
typographical details, Context takes a complementary approach by
providing structured interfaces for handling typography, including
extensive support for colors, backgrounds, hyperlinks, presentations,
figure-text integration, and conditional compilation.  It gives the
user extensive control over formatting while making it easy to create
new layouts and styles without learning the TeX macro
language. CONTeXT's unified design avoids the package clashes that
can happen with LaTeX.

Context also integrates MetaFun, a superset of MetaPost and a powerful
system for vector graphics.  MetaFun can be used as a stand-alone
system to produce figures, but its strength lies in enhancing
Context documents with accurate graphic elements.

Context allows users to specify formatting commands in English,
Dutch, German, French, or Italian, and to use different typesetting
engines (PDFTeX, XeTeX, Aleph and LuaTeX) without
changing the user interface. Context continues to develop, often in
response to requests from the user community.

The development of [LuaTeX](./FAQ-luatex.html) was originally driven
by Context, almost from the start of its project.  Nowadays,
Context it is distributed in two versions&nbsp;&mdash; mark two (files with
extension `mkii`) which runs on PDFTeX but is not under
active development, and mark four (files with extension
`mkiv`) (which runs on LuaTeX and is where development
happens).

Context has a large developer community (though possibly not as
large as that of LaTeX), but those developers who are active seem to have
prodigious energy.  Support is available via a 
[WIKI site](http://wiki.contextgarden.net/Main_Page) and via the
[mailing list](http://www.ntg.nl/mailman/listinfo/ntg-context).
A ''standalone'' distribution (a TeX distribution with no macros
other than Context-based ones) is available from
[http://minimals.contextgarden.net/] &mdash; it provides
a Context system on any of a number of platforms, executing either
mark&nbsp;ii or mark&nbsp;iv Context.

Note that CTAN does _not_ hold the primary distribution of
Context&nbsp;&mdash; potential users should refer to
[Context 'garden' site](http://contextgarden.net) for details
of the
current distribution.  CTAN holds a copy of CONTeXT but
makes no claim about its ''up-to-date''ness.  Likewise, CTAN
holds a few contributed Context packages, but many more are to be
found via the [CONTeXT garden](http://contextgarden.net).

