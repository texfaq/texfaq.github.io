# Why is the inside margin so narrow?

If you give the standard classes the `twoside` option, the
class sets the margins narrow on the left of odd-numbered pages, and
on the right of even-numbered pages.  This is often thought to look
odd, but it is quite right.

The idea is that the typographic urge for symmetry should also apply
to margins: if you lay an even numbered page to the left of an
odd-numbered one, you will see that you've three equal chunks of
un-printed paper: the left margin of the even page, the right margin
of the odd page, and the two abutting margins together.

This is all very fine in the abstract, but in practical book(let)
production it only works ''sometimes''.

If your booklet is produced on double-width paper and stapled, the
effect will be good; if your book(let) is produced using a so-called
''perfect'' binding, the effect will again be good.

However, almost any ''quality'' book-binder will need some of your
paper to grab hold of, and a book bound in such a way won't exhibit
the treasured symmetry unless you've done something about the margin
settings.

The packages recommended in 
''[setting up margins](./FAQ-marginpkgs.html)'' mostly have provision for
a ''binding offset'' or a ''binding correction''&nbsp;&mdash; search for
''binding'' in the manuals ([`vmargin`](http://ctan.org/pkg/vmargin) doesn't help, here).

If you're doing the job by hand (see 
[manual margin setup](./FAQ-marginmanual.html)), the trick is to
calculate your page and margin dimensions as normal, and then:
  

-  subtract the binding offset from `\evensidemargin`, and
-  add the binding offset to `\oddsidemargin`.

which can be achieved by:
```latex
\addtolength{\evensidemargin}{-offset}
\addtolength{\oddsidemargin}{offset}
```
(substituting something sensible like `5mm` for
`offset`, above).

The above may not be the best you can do: you may well choose to
change the `\textwidth` in the presence of the binding offset; but
the changes do work for constant `\textwidth`.

