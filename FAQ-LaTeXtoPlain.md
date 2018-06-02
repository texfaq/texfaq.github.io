---
title: Translating LaTeX to Plain TeX
category: misc
permalink: /FAQ-LaTeXtoPlain
redirect_from: /FAQ-latextoplain
date: 2014-06-10
---

Unfortunately, no ''general'', simple, automatic process is likely to
succeed at this task.  See 
''[How does LaTeX relate to Plain TeX](FAQ-LaTeXandPlain)''
for further details.

Obviously, trivial documents will translate in a trivial way.
Documents that use even relatively simple things, such as labels and
references, are likely to cause trouble (Plain TeX doesn't support
labels).  While graphics are in principle covered, by the Plain TeX

Translating a document designed to work with LaTeX into one
that will work with Plain TeX is likely to amount to carefully
including (or otherwise re-implementing) all those parts of LaTeX,
beyond the provisions of Plain TeX, which the document uses.

Some of this work has (in a sense) been done, in the port of the
LaTeX graphics package to Plain TeX.  However, while
[`graphics`](https://ctan.org/pkg/graphics) is available, other complicated packages (notably
[`hyperref`](https://ctan.org/pkg/hyperref)) are not.  The aspiring translator may find the
[Eplain](FAQ-eplain) system a useful source of code.  (In fact,
a light-weight system such as Eplain might reasonably be adopted as
an alternative target of translation, though it undoubtedly gives the
user more than the ''bare minimum'' that Plain TeX is designed to
offer.)

