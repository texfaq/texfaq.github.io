---
title: Capitalisation in BibTeX
category: bibliographies
permalink: /FAQ-capbibtex
date: 2018-06-06
---

The standard BibTeX bibliography styles impose fixed ideas about
the capitalisation of titles of things in the bibliography.  While
this is not unreasonable by BibTeX's lights (the rules come from
the _Chicago Manual of Style_) it can be troublesome, since
BibTeX fails to recognise special uses (such as acronyms, chemical
formulae, etc.).

The solution is to enclose the words or letters whose capitalisation
BibTeX should not touch in braces, as:
```
title = {The {THE} operating system},
title = {On the Theory of {Brontosauruses}},
```
Sometimes you find BibTeX changing the case of a single letter
inappropriately.  No matter: the technique can be applied to single
letters, as in:
```
title = {Te{X}niques and tips},
```
Braces can prevent kerning between letters, so it is in general preferable
to enclose entire words and not just single letters in braces to protect
them.

If your document design specification requires a different style of
capitalisation, you should acquire a bibliography style that doesn't
enforce BibTeX's default rules.  It is definitely _not_ a good
idea to enclose an entire title in braces, as in
<!-- {% raw %} -->
```
title = {{TeXniques and tips}},
```
<!-- {% endraw %} -->
though that does ensure that the capitalisation is not changed.  Your
BibTeX database should be a general-purpose thing, not something
tuned to the requirements of a particular document or bibliography
style, or to the way you are thinking today&nbsp;&mdash; for example, on a
future occasion, you might find yourself using a different BibTeX
style with different capitalisation rules.

There's more on the subject in the
[BibTeX documentation](FAQ-BibTeXing).
