# Setting bold Greek letters in LaTeX maths

The issue here is complicated by the fact that `\mathbf` (the
command for setting bold _text_ in TeX maths) affects a select
few mathematical 'symbols' (the uppercase Greek letters).

In the default configuration, lower-case Greek letters behave
differently from upper-case Greek letters (the lower-case greek
letters are in the maths fonts, while the upper-case letters are in
the original (OT1-encoded) text fonts).

The Plain TeX solution _does_ work, in a limited way; you set a
maths _style_, before you start an equation; thus
```latex
{\boldmath$\theta$}
```
does the job, but `\boldmath` may not be used in maths mode.  As a
result, this solution requires that you embed single bold characters
in a text box:
```latex
$... \mbox{\boldmath$\theta$} ...$
```
which then causes problems in superscripts, etc.  With
[`amsmath`](http://ctan.org/pkg/amsmath) loaded,
```latex
$... \text{\boldmath$\theta$} ...$
```
does the trick (and is less bad in regard to superscripts, etc), but
is an unsatisfactory solution, too.

These problems may be addressed by using a bold mathematics package.
  

-  The [`bm`](http://ctan.org/pkg/bm) package, which is part of the LaTeX tools
    distribution, defines a command `\bm` which may be used anywhere
    in maths mode.
-  The [`amsbsy`](http://ctan.org/pkg/amsbsy) package (which is part of AMSLaTeX)
    defines a command `\boldsymbol`, which (though slightly less
    comprehensive than `\bm`) covers almost all common cases.

All these solutions apply to all mathematical symbols, not merely
Greek letters.

