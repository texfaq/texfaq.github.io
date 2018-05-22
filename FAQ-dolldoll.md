# Why use `\[` &hellip;`\]` in place of `$$` &hellip; `$$`?

LaTeX defines inline- and display-maths commands, apparently
duplicating the TeX primitive maths sequences which surround maths
commands with single (or pairs of) dollar signs.

In fact, LaTeX's inline maths grouping, 
`\(`` ... ``\)`, has (almost) exactly the same effect as the
TeX primitive version `$ ... $`.  (The exception:
the LaTeX version checks to ensure you don't put `\(` and
`\)` the wrong way round; this does occasionally detect errors&hellip;.)

Since this is the case, one often finds LaTeX users, who have some
experience of using Plain TeX, merely assuming that LaTeX's
display maths grouping `\[`` ... ``\]` may be replaced by
the TeX primitive display maths `$$ ... $$`.

Unfortunately, the assumption is wrong: some LaTeX code needs to
patch display maths, it can only do so by patching `\[` and `\]`
(or their equivalents).  Most obviously, the class option `fleqn`
simply does not work for equations coded using 
`$$ ... $$`, whether you're using the standard classes
alone, or using package [`amsmath`](http://ctan.org/pkg/amsmath).  Also, the `\[` and
`\]` construct has code for rationalising vertical spacing in some
extreme cases; that code is not provided `$$ ... $$`, so if
you use the Plain TeX version, you may occasionally observe
inconsistent vertical spacing.  Similar behaviour can bite if you are
writing a _proof_; placing the ''QED symbol'' doesn't work
if it is in `$$`-displayed maths.

There are more subtle effects (especially with package
[`amsmath`](http://ctan.org/pkg/amsmath)), and the simple rule is ''use 
`\[`` ... ``\]` (at least) whenever displayed maths is
needed in LaTeX''.

(Note that the sequence `\[`` ... ``\]` is duplicated by
the `displaymath` environment, which can be said to ''look
nicer'', and actually _describes_ what's being done.)

