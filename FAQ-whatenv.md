# What are LaTeX ''environments''

While TeX makes direct provision for commands, LaTeX adds a
concept of ''environment''; environments perform an action on a block
(of something or other) rather than than just doing something at one
place in your document.

A totally trivial environment could change the font in use for a chunk
of text, as
```latex
\newenvironment{monoblock}%
  {\ttfamily}%
  {}
```
which defines a `monoblock` which may be used as
```latex
\begin{monoblock}
  some text set in monospace
\end{monoblock}
```
which will look like:
  `some text set in monospace`
so it is a particularly simple example.  A rather complicated
environment is introduced by `\begin{document}`; it looks
simple, but needs all sorts of special TeX code to make it work
'transparently'; most environments are more elaborate than
`monoblock` and _much_ simpler than
`document`.

An environment puts its content inside a TeX _group_, so that
commands used inside the environment don't 'leak out'&nbsp;&mdash; the
`monoblock` environment, above, restricts its effect to
its own contents (the stuff between the `\begin{monoblock}`
and `\end{monoblock}`), which is just what you need for this
sort of thing.

So that's ''simple'' environments; the `monoblock`, above
doesn't actually gain us much over
```latex
{\ttfamily some text set in monospace}
```
though in fact many useful environments are just as simple (to look
at).  Some, such as `verbatim`, look simple but are
actually very tricky inside.

LaTeX also allows arguments to an environment:
```latex
\newenvironment{fontblock}[1]%
  {#1\selectfont}%
  {}
```
and use of `fontblock` as:
```latex
\begin{fontblock}{\ttfamily}
```
would produce the same effect as the `monoblock`
environment.

Environments may also have optional arguments, in much the same way as
commands:
```latex
\newenvironment{normaltext}[1][\itshape]%
  {#1}%
  {}
```
which will ordinarily set its body in italic, but
```latex
\begin{normaltext}[\ttfamily]
  ...
\end{normaltext}
```
will observe its optional argument, and behave the same as the
`monoblock` we started with.

Note that an environments argument(s) (mandatory or optional) are
_not_ passed to the `\end` text of the environment&nbsp;&mdash; that
is specified as a macro with no arguments, so that
```latex
\newenvironment{normaltext}[1][\itshape]%
  {#1}%
  {\typeout{what was #1, again?}
```
produces an error message
```latex
! Illegal parameter number in definition of \endnormaltext.
```
So, if you need to pass an environment argument to the end-code, you
have to wrap it in a macro of its own:
```latex
\newenvironment{normaltext}[1][Intro]%
  {#1%
   \newcommand{\foo}{#1}}%
  {\typeout{what was \foo{}, again?}
```

