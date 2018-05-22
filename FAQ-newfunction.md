# Defining a new log-like function in LaTeX

Use the `\mathop` command, as in:
```latex
\newcommand{\diag}{\mathop{\mathrm{diag}}}
```

Subscripts and superscripts on `\diag` will be placed below and
above the function name, as they are on
`\lim`.  If you want your subscripts and superscripts always placed
to the right, do:
```latex
\newcommand{\diag}{\mathop{\mathrm{diag}}\nolimits}
```

AMSLaTeX (in its [`amsopn`](http://ctan.org/pkg/amsopn) package, which is automatically
loaded by [`amsmath`](http://ctan.org/pkg/amsmath)) provides a command
`\DeclareMathOperator` that takes does the same job as the first
definition above.  To create our original `\diag` command, one would
say:
```latex
\DeclareMathOperator{\diag}{diag}
```
`\DeclareMathOperator*` declares the operator always to have its
sub- and superscripts in the 
''[`\limits` position](./FAQ-limits.html)''.

The [`amsopn`](http://ctan.org/pkg/amsopn) command `\operatorname` allows you to
introduce _ad hoc_ operators into your mathematics, so
  `\[` `\operatorname{foo}``(bar)` `\]`
typesets the same as
```latex
\DeclareMathOperator{\foo}{foo}
...
\[ \foo(bar) \]
```
As with `\DeclareMathOperator` there's a starred version
`\operatorname*` for sub- and superscripts in the limits position.

(It should be noted that ''log-like'' was reportedly a _joke_ on
Lamport's part; it is of course clear what was meant.)

