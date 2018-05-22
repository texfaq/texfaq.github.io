# Graphics division by zero

While the error
```latex
! Package graphics Error: Division by 0.
```
can actually be caused by offering the package a figure which claims
to have a zero dimension, it's more commonly caused by rotation.

Objects in TeX may have both height (the height above the baseline)
and depth (the distance the object goes below the baseline).  If you
rotate an object by 180 degrees, you convert its height into depth,
and vice versa; if the object started with zero depth, you've
converted it to a zero-height object.

Suppose you're including your graphic with a command like:
```latex
\includegraphics[angle=180,height=5cm]{myfig.eps}
```
In the case that `myfig.eps` has no depth to start with, the
scaling calculations will produce the division-by-zero error.

Fortunately, the [`graphicx`](http://ctan.org/pkg/graphicx) package has a keyword
`totalheight`, which allows you to specify the size of the
image relative to the sum of the object's `height` and
`depth`, so
```latex
\includegraphics[angle=180,totalheight=5cm]{myfig.eps}
```
will resolve the error, and will behave as you might hope.

If you're using the simpler [`graphics`](http://ctan.org/pkg/graphics) package, use the
`*` form of the `\resizebox` command to specify the use of
`totalheight`:
```latex
\resizebox*{!}{5cm}{%
  \rotatebox{180}{%
    \includegraphics{myfig.eps}%
  }%
}
```

