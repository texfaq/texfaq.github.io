---
title: Replacing the standard classes
category: formatting
tags: classes
permalink: /FAQ-replstdcls
---

People are forever concocting classes that replace the standard ones:
the present author produced an `ukart` class that used the
[`sober`](https://ctan.org/pkg/sober) package, and a few British-specific things (such as
appear in the [`babel`](https://ctan.org/pkg/babel) package's British-english
specialisation) in the 1980s, which is still occasionally used.

Similar public efforts were available well back in the days of
LaTeX 2.09: a notable example, whose pleasing designs seem not to have
changed much over all that time, is the [`ntgclass`](https://ctan.org/pkg/ntgclass) bundle.
Each of the standard classes is replaced by a selection of classes,
named in Dutch, sometimes with a single numeric digit attached.  So we
have classes [`artikel2`](https://ctan.org/pkg/ntgclass), [`rapport1`](https://ctan.org/pkg/ntgclass), [`boek3`](https://ctan.org/pkg/ntgclass) and
[`brief`](https://ctan.org/pkg/ntgclass).  These classes are moderately well documented in
English.

The [`KOMA-script`](https://ctan.org/pkg/koma-script) bundle (classes named [`scr...`](https://ctan.org/pkg/scrartcl)) are a
strong current contender.  They are actively supported and are subject
to sensitive development; they are comprehensive in their coverage of
significant typesetting issues; they produce good-looking output and
they are well documented in both English ([`scrguien`](https://ctan.org/pkg/koma-script) in the
distribution) and German ([`scrguide`](https://ctan.org/pkg/koma-script) in the distribution).

The other comparable class is [`memoir`](https://ctan.org/pkg/memoir).  This aims to replace
[`book`](https://ctan.org/pkg/book) and [`report`](https://ctan.org/pkg/report) classes directly, and (like
[`KOMA-script`](https://ctan.org/pkg/koma-script)) is comprehensive in its coverage of small issues.
[`Memoir`](https://ctan.org/pkg/memoir)'s documentation ([`memman`](https://ctan.org/pkg/memoir)) is very highly
spoken of, and its lengthy introductory section is regularly
recommended as a tutorial on typesetting.

