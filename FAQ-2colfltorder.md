# Two-column float numbers out of order

When LaTeX can't place a float immediately, it places it on one of
several ''defer'' lists.  If another float of the same type comes
along, and the ''defer'' list for that type still has something in it,
the later float has to wait for everything earlier in the list.

Now, standard LaTeX has different lists for single-column floats,
and double-column floats; this means that single-column figures can
overtake double-column figures (or vice-versa), and you observe later
figures appear in the document before early ones.  The same is true,
of course, for tables, or for any user-defined float.

The LaTeX team recognise the problem, and provides a package
([`fixltx2e`](http://ctan.org/pkg/fixltx2e)) to deal with it.  [`Fixltx2e`](http://ctan.org/pkg/Fixltx2e) amalgamates
the two defer lists, so that floats don't get out of order.

For those who are still running an older LaTeX distribution, the
package [`fix2col`](http://ctan.org/pkg/fix2col) should serve.  This package (also by a
member of the LaTeX team) was the basis of the relevant part of
[`fixltx2e`](http://ctan.org/pkg/fixltx2e).  The functionality has also been included in
[`dblfloatfix`](http://ctan.org/pkg/dblfloatfix), which also has code to place full-width floats
at [`[b]` placement](./FAQ-2colfloat.html).

Once you have loaded the package, no more remains to be done: the
whole requirement is to patch the output routine; no extra commands
are needed.

