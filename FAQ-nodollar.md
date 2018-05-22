# ''Missing `$` inserted''

There are certain things that _only_ work in maths mode.  If your
document is not in maths mode and you have an `_` or a `^` character,
TeX (and by inheritance, LaTeX too) will say
```latex
! Missing $ inserted
```
as if you couldn't possibly have misunderstood the import of what you
were typing, and the only possible interpretation is that you had
committed a typo in failing to enter maths mode.  TeX, therefore,
tries to patch things up by inserting the `$` you 'forgot', so that
the maths-only object will work; as often as not this will land you in
further confusion.

It's not just the single-character maths sub- and superscript
operators: anything that's built in or declared as a maths operation,
from the simplest lower-case `\alpha` through the inscrutable
`\mathchoice` primitive, and beyond, will provoke the error if
misused in text mode.

LaTeX offers a command `\ensuremath`, which will put you in maths
mode for the execution of its argument, if necessary: so if you want
an `\alpha` in your running text, say
`\ensuremath{`\alpha`}`; if the bit of running text somehow
transmutes into a bit of mathematics, the `\ensuremath` will become
a no-op, so it's pretty much always safe.

