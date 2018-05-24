---
section: The Background
permalink: /FAQ-xetex.html
date: 2018-05-24
---

# What is XeTeX?

[XeTeX](http://scripts.sil.org/xetex) is a Unicode TeX engine which can load
system fonts directly. The latter is exposed by extending the `\font`
primitive. In order to support these major concepts, a range of TeX primitives
are extended. For most LaTeX end users, these subtleties are transparent, with
the LaTeX kernel and [`fontspec`](https://ctan.org/pkg/fontspec) package
providing interfaces.

Like Knuth's TeX, it does not directly produce PDF output but rather works
_via_ an intermediate format, XDV (eXtended DVI). Unlike the classical
[DVI](FAQ-dvi) format produced by TeX, XDV files cannot be viewed directly, and
are normally converted directly to PDF as part of the `xetex` run. (The
conversion itself is carried out by `xdvpdfmx`.)

