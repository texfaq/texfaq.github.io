# Why can't I load PicTeX?

PicTeX is a resource hog; fortunately, most modern TeX
implementations offer generous amounts of space, and most modern
computers are pretty fast, so users aren't too badly affected by its
performance.

However, PicTeX has the further unfortunate tendency to fill up
TeX's fixed-size arrays&nbsp;&mdash; notably the array of 256 'dimension'
registers.  This is a particular problem when you're using
`pictex.sty` with LaTeX and some other packages that also need
dimension registers.  When this happens, you will see the TeX error
message:
```latex
! No room for a new \dimen.
```
There is nothing that can directly be done about this error: you
can't extend the number of available `\dimen` registers without
extending TeX itself.
  [Omega](./FAQ-omegaleph.html) and [&epsilon;-TeX](./FAQ-etex.html) both do this.

It's actually quite practical (with most modern distributions) to use
&epsilon;-TeX's extended register set:  Current LaTeX distributions
will do this automatically, or for older, pre-2015 LaTeX
releases, use package [`etex`](http://ctan.org/pkg/etex).

If you're in some situation where you can't use &epsilon;-TeX, you need to change
PicTeX; unfortunately PicTeX's author is no longer active in the
TeX world, so one must resort to patching.  There are two solutions
available.

The CONTeXT module `m-pictex.tex` (for Plain TeX and
variants) or the corresponding LaTeX [`m-pictex`](http://ctan.org/pkg/m-pictex) package provide
an ingenious solution to the problem based on hacking the code of
`\newdimen` itself.

Alternatively, Andreas Schrell's [`pictexwd`](http://ctan.org/pkg/pictexwd) and related
packages replace PicTeX with a version that uses 33 fewer
`\dimen` registers; so use [`pictexwd`](http://ctan.org/pkg/pictexwd) in place of
[`pictex`](http://ctan.org/pkg/pictex) (either as a LaTeX package, or as a file to read
into Plain TeX).

And how does one use PicTeX anyway, given that the
manual is so [hard to come by](./FAQ-docpictex.html)?
Fortunately for us all, the `MathsPic`
system may be used to translate a somewhat different language into
PicTeX commands; and the `MathsPic` manual is free (and
part of the distribution).  `MathsPic` is available either as
a `Basic` program for DOS, or as a `Perl`
program for other systems (including Windows, nowadays).

