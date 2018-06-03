---
title: Why bother with `inputenc` and `fontenc`?
category: usage
permalink: /FAQ-why-inp-font
redirect_from: /FAQ-t1enc
---



## [`inputenc`](https://ctan.org/pkg/inputenc)

In current LaTeX release (2018 and later) You do not need to load
[`inputenc`](https://ctan.org/pkg/inputenc) as UTF-8 encoding, equivalent to
```latex
\usepackage[utf8]{inputenc}
```
is preloaded into the format.

The standard input encoding for Western Europe prior to the wide adoption
of Unicode was ISO&nbsp;8859&ndash;1 (commonly known by the standard's
subtitle 'Latin-1'). If you are still saving files in
Latin-1 (or other) encoding then you will need to declare that via
a declaration such as
```latex
\usepackage[latin1]{inputenc}
```


### [`fonttenc`](https://ctan.org/fontenc/inputenc)
If you are using pdfLaTeX or LaTeX and do not specify
```latex
\usepackage[T1]{fontenc}
```

Then LaTeX will default to the original TeX OT1 encoding. Initially
this may not seem to be a problem, especially if writing in English,
however OT1 does not include any accented letters, so any accented
letters will be constructed using the `\accent` primitive rather than
using an accented character from the font. Any words using such a constructed
accent will not be hyphenated.

Note that the `t1enc` package is available in the base distribution,
which is equivalent to using the `T1` option to
[`fonttenc`](https://ctan.org/fontenc/inputenc) however it should not
be used in current documents and is just retained for compatibility
with the first versions of the LaTeX2e documentation, which were
written before the [`fonttenc`](https://ctan.org/fontenc/inputenc)
package was produced.

 
