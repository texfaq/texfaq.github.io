---
title: Placing two-column floats at bottom of page
category: floats
tags:
  - tables
  - figures
permalink: /FAQ-2colfloat
date: 2018-05-18
---

You specified placement `[htbp]` for your full-width figure or table,
but they always get placed at the top of the page&hellip;  Well,
it _is_ what the documentation says: LaTeX, unadorned, only
allows full-width floats at the top of a page, or occupying (part of) a
float page.

The package [`nidanfloat`](https://ctan.org/pkg/nidanfloat) supports `[b]` placement of a
full-width figure in a two-column document even on the first page of a document.

Barbara Beeton's article
[Placing a full-width insert at the bottom of two columns](https://tug.org/TUGboat/tb35-3/tb111beet-banner.pdf) in TUGboat 35(3)
gives a manual method for doing the same.

The [`stfloats`](https://ctan.org/pkg/stfloats) package also ameliorates
the situation somewhat, and makes LaTeX honour "[b]" placement as well.

A particular problem with [`stfloats`](https://ctan.org/pkg/stfloats) and
[`dblfloatfix`](https://ctan.org/pkg/dblfloatfix) is that the float will appear,
at its earliest, on the page after it is specified.  This has two undesirable
side-effects: first, there may be no bottom float on the first page of a
document, and second, float numbers may become "entangled" (particularly
if you're using [`dblfloatfix`](https://ctan.org/pkg/dblfloatfix) that ensures
that the early-specified bottom float is set _before_ any single column floats).

(The FAQ team doesn't know of any package that will make
LaTeX honour "[h]" placement of double-column floats, but the
[`midfloat`](https://ctan.org/pkg/midfloat) package can be pressed into service to provide
something approximating the effect it would have.)

Prior to the LaTeX2e 2015 release, double and single column floats were maintained
in separate lists and could be output in the wrong order. For these older releases
[`dblfloatfix`](https://ctan.org/pkg/dblfloatfix) package combines a tidied version
of the changes made in [`stfloats`](https://ctan.org/pkg/stfloats) with the
[float ordering corrections](FAQ-2colfltorder) defined in
[`fixltx2e`](https://ctan.org/pkg/fixltx2e).

