# No room for a new '_thing_'

The technology available to Knuth at the time TeX was written is
said to have been particularly poor at managing dynamic storage; as a
result much of the storage used within TeX is allocated as fixed
arrays, in the reference implementations.  Many of these fixed arrays
are expandable in modern TeX implementations, but size of the
arrays of ''registers'' is written into the specification as being 256
(usually); this number may not be changed if you still wish to call
the result TeX
(see [testing TeX implementations](./FAQ-triptrap.html)).

If you fill up one of these register arrays, you get a TeX error
message saying
```latex
! No room for a new \<thing>.
```
The `\thing`s in question may be `\count` (the object underlying
LaTeX's `\newcounter` command), `\skip` (the object underlying
LaTeX's `\newlength` command), `\box` (the object underlying
LaTeX's `\newsavebox` command), or `\dimen`, `\muskip`,
`\toks`, `\read`, `\write` or `\language` (all types of object
whose use is ''hidden'' in LaTeX; the limit on the number of
`\read` or `\write` objects is just 16).

There is nothing that can directly be done about this error, as you can't
extend the number of available registers without extending TeX
itself.
  Of course, [&epsilon;-TeX](./FAQ-etex.html), [Omega](./FAQ-omegaleph.html) and
  [LuaTeX](./FAQ-luatex.html)
all do this, as does [MicroPress Inc's VTeX](./FAQ-commercial.html).

The commonest way to encounter one of these error messages is to have
broken macros of some sort, or incorrect usage of macros (an example
is discussed in [epsf problems](./FAQ-epsf.html)).

However, sometimes one just _needs_ more than TeX can offer,
and when this happens, you've just got to work out a different way of
doing things.  An example is the 
[difficulty of loading PicTeX with LaTeX](./FAQ-usepictex.html).
The more modern drawing package, [`pgf`](http://ctan.org/pkg/pgf) with its higher-level
interface [`TikZ`](http://ctan.org/pkg/TikZ) is also a common source of such problems.

In such cases, it is usually possible to use the
[&epsilon;-TeX](./FAQ-etex.html) extensions (all modern distributions provide
them).  The LaTeX package [`etex`](http://ctan.org/pkg/etex) modifies the register allocation
mechanism to make use of &epsilon;-TeX's extended register sets.
[`Etex`](http://ctan.org/pkg/Etex) is a
derivative of the Plain TeX macro file [`etex.src`](http://ctan.org/pkg/etex.src), which is
used in building the &epsilon;-TeX Plain format; both files are part of the
&epsilon;-TeX distribution and are available in current distributions.

It is possible that, even with [`etex`](http://ctan.org/pkg/etex) loaded, you still find
yourself running out of things.  Problems can be caused by packages
that use large numbers of ''inserts'' (inserts are combinations of
counter, box, dimension and skip registers, used for storing floats
and footnotes).  [`Morefloats`](http://ctan.org/pkg/Morefloats) does this, of course (naturally enough,
allocating new floats), and footnote packages such as
[`manyfoot`](http://ctan.org/pkg/manyfoot) and [`bigfoot`](http://ctan.org/pkg/bigfoot) (which uses [`manyfoot`](http://ctan.org/pkg/manyfoot))
can also give problems.  The [`etex`](http://ctan.org/pkg/etex) extensions allow you to deal with
these things: the command `\reserveinserts{n}` ensures there
is room for &lsaquo;_n_&rsaquo; more inserts.  Hint: by default
[`morefloats`](http://ctan.org/pkg/morefloats) adds 18 inserts (though it can be instructed to
use more), and [`manyfoot`](http://ctan.org/pkg/manyfoot) seems to be happy with 10 reserved,
but there are 'hard' limits that we cannot program around&nbsp;&mdash; the
discussion of [running out of floats](./FAQ-tmupfl.html) has more about this.
It is essential that you load [`etex`](http://ctan.org/pkg/etex) before any other
packages, and reserve any extra inserts immediately:
```latex
\documentclass[...]{...}
\usepackage{etex}
\reserveinserts{28}
```

The &epsilon;-TeX extensions don't help with `\read` or `\write`
objects (and neither will the [`etex`](http://ctan.org/pkg/etex) package), but the
[`morewrites`](http://ctan.org/pkg/morewrites) package can provide the _illusion_ of large
numbers of `\write` objects.

