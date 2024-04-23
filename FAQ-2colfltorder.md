---
title: Two-column float numbers out of order
category: errors
permalink: /FAQ-2colfltorder
---

When LaTeX can't place a float immediately, it places it on one of
several "defer" lists.  If another float of the same type comes
along, and the "defer" list for that type still has something in it,
the later float has to wait for everything earlier in the list.

Prior to the 2015 release LaTeX had different lists for single-column floats,
and double-column floats; this meant that single-column figures could
overtake double-column figures (or vice-versa), and you observed later
figures appear in the document before early ones.  The same was true,
of course, for tables, or for any user-defined float.

The LaTeX team recognised the problem, and provided a package
([`fixltx2e`](https://ctan.org/pkg/fixltx2e)) to deal with it by amalgamating
the two defer lists, so that floats don't get out of order.
(In 2015, all fixes from `fixltx2e` were incorprated into the main format).

For those who are still running an older LaTeX distribution, in addition to the
general ([`fixltx2e`](https://ctan.org/pkg/fixltx2e)) package, the packages 
[`fix2col`](https://ctan.org/pkg/fix2col) and
[`dblfloatfix`](https://ctan.org/pkg/dblfloatfix) address this issue.
The latter  also has code to place full-width floats at
[`[b]` placement](FAQ-2colfloat).

