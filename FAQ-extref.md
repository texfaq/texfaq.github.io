# Referring to labels in other documents

When producing a set of inter-related documents, you'll often want to
refer to labels in another document of the set; but LaTeX, of its
own accord, doesn't permit this.

So the package [`xr`](http://ctan.org/pkg/xr) was written: if you say
```latex
\usepackage{xr}
\externaldocument{volume1}
```
will load all the references from `volume1` into your present
document.

But what if the documents both have a section labelled
`introduction` (likely enough, after all)?  The
package provides a means to transform all the imported labels, so you
don't have to change label names in either document.  For example:
```latex
\usepackage{xr}
\externaldocument[V1-]{volume1}
```
loads the references from `volume1`, but prefixes every one with
the string `V1-`.  So you would refer to the introduction to volume&nbsp;1
as:
```latex
\usepackage{xr}
\externaldocument[V1-]{volume1}
...
... the introduction to volume1 (\ref{V1-introduction})...
```
To have the facilities of [`xr`](http://ctan.org/pkg/xr) working with
[`hyperref`](http://ctan.org/pkg/hyperref), you need [`xr-hyper`](http://ctan.org/pkg/xr-hyper).  For simple
hyper-cross-referencing (i.e., to a local PDF file you've just
compiled), write:
```latex
\usepackage{xr-hyper}
\usepackage{hyperref}
\externaldocument[V1-]{volume1}
...
... the \nameref{V1-introduction})...
```
and the name reference will appear as an active link to the
''introduction'' chapter of `volume1.pdf`.

To link to a PDF document on the Web, for which you happen to
have the .aux file, write:
```latex
\usepackage{xr-hyper}
\usepackage{hyperref}
\externaldocument[V1-]{volume1}[http://mybook.com/volume1.pdf]
...
... the \nameref{V1-introduction})...
```
Heiko Oberdiek's experimental [`zref`](http://ctan.org/pkg/zref) bundle includes a
hyper-crossreferencing mechanism using its [`zref-xr`](http://ctan.org/pkg/zref-xr) module.
Usage is closely modelled on [`xr`](http://ctan.org/pkg/xr) and [`xr-hyper`](http://ctan.org/pkg/xr-hyper); a
trivial example (from a `comp.text.tex` posting) is
```latex
\usepackage{zref-xr,zref-user}
\zexternaldocument*{xr02}
...
\zref{foo}
```
The module provides all the facilities of the older packages, and can
deal both with ''traditional'' LaTeX labels and with
[`zref`](http://ctan.org/pkg/zref)'s style of labels.

