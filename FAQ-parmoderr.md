# Not in outer par mode

For example:
```latex
*\mbox{\marginpar{foo}}

! LaTeX Error: Not in outer par mode.
```
The error comes when you try to build something movable inside a box.
Movable things, in this context, are floating environments
(`figure` and `table`, for example), and
`\marginpar`s.  LaTeX simply doesn't have the mechanisms for
floating out of boxes.  In fact, floats and `\marginpar`s
themselves are built out of boxes, so that they can't be nested.

If your error arises from `\marginpar`, you simply have to think of
an alternative way of placing the command; there is no slick solution.

If a floating environment is the culprit, it may be possible to use
the `H` placement option, provided (for example) by the
[`float`](http://ctan.org/pkg/float) package:
```latex
\parbox{25cm}{%
  \begin{figure}[H]
  ...
  \caption{Apparently floating...}
  \end{figure}%
}
```
This example makes little sense as it stands; however, it is
conceivable that sane uses could be found (for example, using a
package such as [`algorithm2e`](http://ctan.org/pkg/algorithm2e) to place two algorithms
side-by-side).

