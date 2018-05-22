# Option clash for package

The error message
```latex
! LaTeX Error: Option clash for package footmisc
```
means what it says&nbsp;&mdash; your document contains a (potentially) clashing
pair of options; sadly, it is not always obvious how the error has
arisen.

If you simply write:
```latex
\usepackage[a]{foo}
...
\usepackage{foo}
```
LaTeX is happy, as it is with:
```latex
\usepackage[a]{foo}
...
\usepackage[a]{foo}
```
since LaTeX can see there's no conflict (in fact, the second load
does nothing).

Similarly,
```latex
\usepackage[a,b]{foo}
...
\usepackage[a]{foo}
```
produces no error and does nothing for the second load.

However
```latex
\usepackage[a]{foo}
...
\usepackage[b]{foo}
```
produces the error; even if option `b` is an alias for
option `a`&nbsp;&mdash; LaTeX doesn't ''look inside'' the package
to check anything like that.

The general rule is: the first load of a package defines a set of
options; if a further `\usepackage` or `\RequirePackage` also
calls for the package, the options on that call may not extend the set
on the first load.

Fortunately, the error (in that sort of case) is easily curable
once you've examined the preamble of your document.

Now, suppose package [`foo`](http://ctan.org/pkg/foo) loads [`bar`](http://ctan.org/pkg/bar) with option
`b`, and your document says:
```latex
\usepackage{foo}
...
\usepackage[a]{bar}
```
or
```latex
\usepackage[a]{bar}
...
\usepackage{foo}
```
the error will be detected, even though you have only explicitly
loaded [`bar`](http://ctan.org/pkg/bar) once.  Debugging such errors is tricky: it may
involve reading the logs (to spot which packages were called), or the
documentation of package [`foo`](http://ctan.org/pkg/foo).

