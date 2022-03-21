---
title: What are XeTeX and LuaTeX?
category: background
tags:
  - xetex
  - luatex
permalink: /FAQ-xetex-luatex
date: 2018-05-25
redirect_from:
 - /FAQ-luatex
 - /FAQ-xetex
---

The standard [pdfTeX](FAQ-pdftex) engine is fully backward-compatible with
Knuth's TeX. As such, it remains an 8-bit system using specialist [font
metrics](FAQ-tfm). In contrast, the engines XeTeX and LuaTeX are both
Unicode-based and able to load standard system (OpenType) fonts. Internally,
they differ in approach: the same outcomes are reached using very different
philosophies. There are advantages to the user in each approach.

## XeTeX

[XeTeX](http://xetex.sourceforge.net/) is a Unicode TeX engine which can load
system fonts directly using the HarfBuzz library, which is built in. To do
this, the `\font` primitive is extended. In order to support these major
concepts, a range of TeX primitives are extended. For most LaTeX end users,
these subtleties are transparent, with the LaTeX kernel and
[`fontspec`](https://ctan.org/pkg/fontspec) package providing interfaces.

Like Knuth's TeX, it does not directly produce PDF output but rather works
_via_ an intermediate format, XDV (eXtended DVI). Unlike the classical
[DVI](FAQ-dvi) format produced by TeX, XDV files cannot be viewed directly, and
are normally converted directly to PDF as part of the `xetex` run. (The
conversion itself is carried out by `xdvipdfmx`.)

## LuaTeX

LuaTeX consists of a TeX-like engine with a Lua interpreter "embedded" in it;
the Lua interpreter has access to many of the data structures used for
typesetting, so that the programmer may also interpolate chunks of Lua code
into their (La)TeX macros, or as "call-backs" for use when the TeX-like
engine does certain operations.

LuaTeX, like [XeTeX](FAQ-xetex), is a Unicode engine and is capable of loading
system fonts. In contrast to XeTeX, the latter ability is not "built-in" to
the engine itself, but is added using Lua code. This possibility to modify the
behaviour of the engine at the "user" end makes it particularly powerful.

Whilst there are some (deliberate) differences between the behavior of LuaTeX
and that of Knuth's TeX (or [pdfTeX](FAQ-pdftex)), for most users, LuaTeX may
be used as a drop-in replacement. For most LaTeX end users, the subtleties are
transparent, with the LaTeX kernel and
[`fontspec`](https://ctan.org/pkg/fontspec) package providing interfaces.

[ConTeXt](FAQ-context) Mark&nbsp;4 (the current version) _requires_ LuaTeX:
this is again transparent to users.
