---
title: Prefering `\newcommand*` over `\newcommand`
category: programming
tags:
  - latex
  - macros
permalink: /FAQ-newcmdstar
---

One of the most common mistakes when typing a LaTeX document is to incorrectly
balance the braces: in particular to forget the closing brace at the end of a
macro argument.  Here is a tip that won't change your documents, but will make
your code more robust by allowing you to locate errors more easily. 

When a closing braces is forgotten, if nothing is done, TeX will read your file
all the way to the end before it realises that there is a problem and that it
will not be able to do anything.  To avoid this, Don Knuth (the creator of TeX)
has provided for two types of macro, short and long, depending on whether or not
their arguments can contain a paragraph break.  For some reason, by default,
`\newcommand` defines long macros.

By using `\newcommand*` (the starred version) to define your command, you make
it a short macro, which is much better in most cases: this way, errors due to
a possible closing brace omission will be limited to one paragraph.  In case of
a problem, TeX will notice it at the end of the paragraph (and not of the
document), it will easily point out the location of the error and typeset the
rest of the document as if nothing had happened.

So get into the habit of using the starred versions of `\newcommand` and
`\renewcommand` most of the time (except of course in special cases), this
will save you some trouble.

