# Diagonal separation in corner cells of tables

You want to label both the top or bottom row and the left- or
rightmost column, somewhere at the corner of the table where the row
and column meet.  A simple way to achieve the result is to construct
the table with an arrangement of rules (and possibly `\multicolumn`
entries), to look like:
```latex
-----------------
x  y
   --------------
   1  2  3  4  5
-----------------
1
2
3
4
5
-----------------
```
However, this doesn't satisfy everyone: many want the labelling in a
single cell at the top left of the table.  It sounds a simple enough
requirement, yet it calls for some slightly tricky LaTeX coding.
The [`diagbox`](http://ctan.org/pkg/diagbox) package does this job for you: it defines a
command `\diagbox` whose two arguments provide the texts to be
used; an optional argument may be used for fine tuning of the result.
It draws a picture with the two labels on either side of a slanting
line; the command (and hence the picture) may be placed in the corner
cell, where the labelled row and column meet.

The [`diagbox`](http://ctan.org/pkg/diagbox) package supersedes [`slashbox`](http://ctan.org/pkg/slashbox); the older
package's commands `\slashbox` and `\backslashbox` are provided
in a compatible way in the newer package, to ease transition.

