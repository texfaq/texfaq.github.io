---
title: Balancing columns at the end of a document
category: formatting
tags: structure
permalink: /FAQ-balance
---

The `twocolumn` option of the standard classes causes
LaTeX to set the text of a document in two columns.  However, the last
page of the document typically ends up with columns of different
lengths&nbsp;&mdash; such columns are said to be "unbalanced".  Many (most?)
people don't like unbalanced columns.

The simplest solution to the problem is to use the [`multicol`](https://ctan.org/pkg/multicol)
package in place of the `twocolumn` option, as
[`multicol`](https://ctan.org/pkg/multicol) balances the columns on the final page by default.
However, the use of [`multicol`](https://ctan.org/pkg/multicol) does come at a cost: its
special output routine disallows the use of in-column floats, though
it does still permit full-width (e.g., `figure*`
environment) floats. 

As a result, there is a constant push for a means of balancing columns
at the end of a `twocolumn` document.  Of course, the job can
be done manually: `\pagebreak` inserted at the appropriate place on
the last page can often produce the right effect, but this seldom
appeals, and if the last page is made up of automatically-generated
text (for example, bibliography or index) inserting the command will
be difficult.

The [`flushend`](https://ctan.org/pkg/flushend) package offers a solution to this problem.  It's a
somewhat dangerous piece of macro code, which patches one of the most
intricate parts of the LaTeX kernel without deploying any of the
safeguards discussed in [patching commands](FAQ-patch).
The package only changes the behaviour at end document (its
`\flushend` command is enabled by default), and one other command
permits adjustment of the final balance; other packages in the bundle
provide means for insertion of full width material in two-column
documents.

The [`balance`](https://ctan.org/pkg/balance) package also patches the output routine
(somewhat more carefully than [`flushend`](https://ctan.org/pkg/flushend)).

The user should be aware that both these packages are liable to
become confused in the presence of floats: if problems arise, manual
adjustment of the floats in the document is likely to be necessary.
It is this difficulty (what's required in any instance can't really be
expressed in current LaTeX) that led the author of
[`multicol`](https://ctan.org/pkg/multicol) to suppress single-column-wide floats.

The [`poor man's balance`](https://ctan.org/pkg/pbalance) package tries
to solve this limitation. It should be "safe" (changes to the output
routine are minimal) and "just work" without user intervention. However,
as most things in life, it comes with its own set of caveats (check the
docs). The most important ones are

1. It is a very new package (2020) and, therefore, has been very
   lightly tested;

2. It demands additional LaTeX passes (up to three in some cases).
