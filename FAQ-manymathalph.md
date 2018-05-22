# Too many math alphabets

TeX mathematics is one of its most impressive features, yet the
internal structure of the mechanism that produces it is painfully
complicated and (in some senses) pathetically limited.  One area of
limitation is that one is only allowed 16&nbsp;''maths alphabets''

LaTeX offers the user quite a lot of flexibility with allocating
maths alphabets, but few people use the flexibility directly.
Nevertheless, there are many packages that provide symbols, or that
manipulate them, which allocate themselves one or more maths alphabet.

If you can't afford to drop any of these packages, you might be able
to consider switching to use of [XeTeX](./FAQ-xetex.html) or
[LuaTeX](./FAQ-luatex.html), which both have 256 math alphabets
available.  (Such a change is best not done when under pressure to
complete a document; other issues, such as font availability) could
make a change impractical.)

Even if switching is not possible, there's still hope if you're using
the [`bm`](http://ctan.org/pkg/bm) package to support [bold maths](./FAQ-boldgreek.html):
[`bm`](http://ctan.org/pkg/bm) is capable of gobbling alphabets as if there is no
tomorrow.  The package defines two limiter commands: `\bmmax` (for
_bold_ symbols; default&nbsp;4) and `\hmmax` (for _heavy_
symbols, if you have them; default&nbsp;3), which control the number of
alphabets to be used.

Any reduction of the `_xx_max` variables will slow
[`bm`](http://ctan.org/pkg/bm) down&nbsp;&mdash; but that's surely better than the document not
running at all.
Before loading [`bm`](http://ctan.org/pkg/bm)),  then steadily reduce the bold
families, starting with 
```latex
  \newcommand{\bmmax}{3}
```
until (with a bit of luck) the error goes away.

If  you're using maths fonts (such as
`Mathtime Plus`) that feature a heavy symbol weight,
you may want to suppress all use of heavy families by [`bm`](http://ctan.org/pkg/bm) by
similarly setting
```latex
  \newcommand{\hmmax}{0}
```
Before loading the package.

