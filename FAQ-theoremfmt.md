# Theorem bodies printed in a roman font

If you want to take advantage of the powerful `\newtheorem` command
without the constraint that the contents of the theorem is in a sloped
font (for example, you may want to use it to create remarks, examples, proofs,
&hellip;) then you can use the AMSLaTeX [`amsthm`](http://ctan.org/pkg/amsthm) package
(which now supersedes the [`theorem`](http://ctan.org/pkg/theorem) package previously
recommended in these answers).
Alternatively, the following sets up an environment
`remark` whose content is in the default roman font.
```latex
\newtheorem{preremark}{Remark}
\newenvironment{remark}%
  {\begin{preremark}\upshape}{\end{preremark}}
```
The [`ntheorem`](http://ctan.org/pkg/ntheorem) package provides control of the fonts used by
theorems, directly.

