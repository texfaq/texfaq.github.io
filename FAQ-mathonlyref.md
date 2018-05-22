# Numbers for referenced equations only

There are those who consider that papers look untidy with numbers on
every equation; there is also a school of thought that claims that
there should be numbers everywhere, in case some reader wants to make
reference an equation to which the author made no cross-reference.

If you hold to the ''only cross-referenced'' school of thought, you
can (using the `\nonumber` command on the relevant equations, or by
using the AMSLaTeX unnumbered environments such as
`equation*`) mark those of your equations to which you
make no reference.  In a long or complex paper, this procedure could
well become deeply tedious.

Fortunately, help is at hand: the [`mh`](http://ctan.org/pkg/mh) bundle's
[`mathtools`](http://ctan.org/pkg/mathtools) package offers a `showonlyrefs`
switch through its `\mathtoolsset` command; when that's in
operation, only those equations to which you make reference will be
numbered in the final output.  See the package's documentation for
details of how to make references when the switch is in effect.

