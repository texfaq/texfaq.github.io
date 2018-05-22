# `epsf` gives up after a bit

Some copies of the documentation of `epsf.tex` seemed once to
suggest that the command
```latex
  \input epsf
```
is needed for every figure included.  If you follow this suggestion
too literally, you get an error
```latex
  ! No room for a new \read .
```
after a while; this is because each time `epsf.tex` is loaded, it
allocates itself a _new_ file-reading handle to check the figure
for its bounding box, and there just aren't enough of these things
(see [no room for a new thing](./FAQ-noroom.html)).

The solution is simple&nbsp;&mdash; this is in fact an example of misuse of
macros; one only need read `epsf.tex` once, so change
```latex
  ...
  \input epsf
  \epsffile{...}
  ...
  \input epsf
  \epsffile{...}
```
(and so on) with a single
```latex
  \input epsf
```
somewhere near the start of your document, and then decorate your
`\epsffile` statements with no more than adjustments of
`\epsfxsize` and so on.

