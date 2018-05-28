---
title: What are (TeX) macros
category: concepts
permalink: /FAQ-whatmacros
date: 2014-06-10
---

# What are (TeX) macros

TeX is a _macro processor_: this is a computer-science-y term
meaning ''text expander'' (more or less); TeX typesets text as it
goes along, but _expands_ each macro it finds.  TeX's macros
may include instructions to TeX itself, on top of the simple text
generation one might expect.

Macros are a _good thing_, since they allow the user to
manipulate documents according to context.  For example, the macro
`\TeX` is usually defined to produce ''TEX'' with the ''E'' lowered
(the original idea was Knuth's),
but in these FAQs the default definition of the macro is
overridden, and it simply expands to the letters ''TeX''.  (_You_
may not think this a good thing, but the author of the macros has his
reasons&nbsp;&ndash; see [TeX-related logos](/FAQ-logos).)

Macro names are conventionally built from a `\`
followed by a sequence of letters, which may be upper or lower case
(as in `\TeX`, mentioned above).  They may also be 
`<any single character>`, which allows all
sorts of oddities (many built in to most TeX macro sets, all the
way up from the apparently simple `\ ` meaning ''insert a space
here'').

Macro programming can be a complicated business, but at their very
simplest they need little introduction&nbsp;&mdash; you'll hardly need to be
told that:
```latex
\def\foo{bar}
```
replaces each instance of `\foo` with the text ''bar''.  The
command `\def` is Plain TeX syntax for defining commands;
LaTeX offers a macro `\newcommand` that goes some way towards
protecting users from themselves, but basically does the same thing:
```latex
\newcommand{\foo}{bar}
```
Macros may have ''arguments'' , which are used to substitute for marked
bits of the macro expansion:
```latex
\def\foo#1{This is a #1 bar}
...
\foo{2/4}.
```
which produces:
  This is a 2/4 bar.
or, in LaTeX speak:
```latex
\newcommand{\foo}[1]{This is a #1 bar}
...
\foo{3/4}.
```
which produces:
  This is 3/4 bar.
(LaTeX users waltz through life, perhaps?)

You will have noticed that the arguments, above, were enclosed in
braces (`{`&hellip;`}`); this is the
normal way of typing arguments, though TeX is enormously flexible,
and you may find all sorts of other ways of passing arguments (if you
stick with it).

Macro writing can get very complicated, very quickly.  If you are a
beginner (La)TeX programmer, you are well advised to read something
along the lines of the [TeXbook](/FAQ-tex-books); once you're under
way, [TeX by Topic](/FAQ-ol-books) is possibly a more satisfactory
choice.  Rather a lot of the answers in these FAQs tell you
about various issues of how to write macros.

