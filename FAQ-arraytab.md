---
title: What is the difference between `array` and `tabular` environments
category: floats
tags:
  - tables
permalink: /FAQ-arraytab
---

The `tabular` environment is the general solution to typeset tables.
In math mode, you'll usually be told to use the `array` environment,
but `tabular` would work too. So, what is the difference?

The `array` environment is indeed for math mode, and cell contents
will be typeset in math mode (in `textstyle` by default). You don't
need to use `$...$` inside it, so it will save you some typing.
Notice that inside an `array`, the `p`, `m` and `b` specifiers switch
cell contents to text mode.

While array requires being in math mode, the `tabular` environment can be used
both in text and math mode, and its contents will be typeset in text mode.

`array` and `tabular` environments share a lot of things, but also involve
some specific parameters. As an example, the space between two columns is set
separately, using `\arraycolsep` for `array` and `\tabcolsep` for `tabular`.

A very useful LaTeX package is named [`array`](https://ctan.org/pkg/array).
Despite its name, it provides advanced functionnalities for both `array` and
`tabular` environments (and their relatives).

