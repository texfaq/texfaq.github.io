# Illegal parameter number in definition

The error message means what it says.  In the simple case, you've
attempted a definition like:
```latex
\newcommand{\abc}{joy, oh #1!}
```
or (using TeX primitive definitions):
```latex
\def\abc{joy, oh #1!}
```
In either of the above, the definition uses an argument, but the
programmer did not tell (La)TeX, in advance, that she was going to.
The fix is simple&nbsp;&mdash; `\newcommand{`\abc`}`[1], in the
LaTeX case, `\de[[[abc]]]1` in the basic TeX case.

The more complicated case is exemplified by the attempted definition:
```latex
\newcommand{\abc}{joy, oh joy!%
  \newcommand{\ghi}[1]{gloom, oh #1!}%
}
```
will also produce this error, as will its TeX primitive equivalent:
```latex
\def\abc{joy, oh joy!%
  \def\ghi#1{gloom, oh #1!}%
}
```
This is because special care is needed when defining one macro within
the code of another macro.  This is explained elsewhere, separately
for [LaTeX definitions](./FAQ-ltxhash.html) and for
[TeX primitive definitions](./FAQ-hash.html)

