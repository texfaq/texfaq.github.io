---
section: The Background
permalink: /FAQ-luatex.html
date: 2018-05-24
---

# What is LuaTeX?

LuaTeX consists of a TeX-like engine with a Lua interpreter ''embedded'' in it;
the Lua interpreter has access to many of the data structures used for
typesetting, so that the programmer may also interpolate chunks of Lua code
into their (La)TeX macros, or as ''call-backs'' for use when the TeX-like
engine does certain operations.

LuaTeX, like [XeTeX](FAQ-xetex), is a Unicode engine and is capable of loading
system fonts. In contrast to XeTeX, the latter ability is not ''built-in'' to
the engine itself, but is added using Lua code. This possibility to modify the
behaviour of the engine at the ''user'' end makes it particularly powerful.

Whilst there are some (deliberate) differences between the behavior of LuaTeX
and that of Knuth's TeX (or [pdfTeX](FAQ-pdftex)), for most users, LuaTeX may
be used as a drop-in replacement. For most LaTeX end users, the subtleties are
transparent, with the LaTeX kernel and
[`fontspec`](https://ctan.org/pkg/fontspec) package providing interfaces.

[ConTeXt](FAQ-context) Mark&nbsp;4 (the current version) _requires_ LuaTeX:
this is again transparent to users.


