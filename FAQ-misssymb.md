---
title: Missing symbol commands
category: errors
tags: deprecated
permalink: /FAQ-misssymb
date: 2014-06-10
---

You're processing an old document, and some symbol commands such as
`\Box` and `\lhd` appear no longer to exist.  These commands were
present in the core of LaTeX 2.09, but are not in current LaTeX.
They are available in the [`latexsym`](https://ctan.org/pkg/latex-base) package (which is part of
the LaTeX distribution), and in the [`amsfonts`](https://ctan.org/pkg/amsfonts) package
(which is part of the AMS distribution, and requires AMS
symbol fonts).

