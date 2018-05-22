# Capacity exceeded [semantic nest &hellip;]

```latex
! TeX capacity exceeded, sorry [semantic nest size=100].
...
If you really absolutely need more capacity,
you can ask a wizard to enlarge me.
```
Even though TeX suggests (as always) that enlargement by a wizard
may help, this message usually results from a broken macro or bad
parameters to an otherwise working macro.

The ''semantic nest'' TeX talks about is the nesting
of boxes within boxes.  A stupid macro can provoke the error pretty
easily:
```latex
\def\silly{\hbox{here's \silly being executed}}
\silly
```
The extended traceback
(see [_general advice_ on errors](./FAQ-erroradvice.html))
_does_ help, though it does rather run on.  In the case above,
the traceback consists of
```latex
\silly ->\hbox {
                here's \silly being executed}
```
followed by 100 instances of
```latex
\silly ->\hbox {here's \silly 
                              being executed}
```
The repeated lines are broken at exactly the offending macro; of
course the loop need not be as simple as this&nbsp;&mdash; if `\silly` calls
`\dopy` which boxes `\silly`, the effect is just the same and
alternate lines in the traceback are broken at alternate positions.

There are in fact two items being consumed when you nest boxes: the
other is the grouping level.  Whether you exhaust your 
_semantic nest_ or your permitted _grouping levels_ first is
controlled entirely by the relative size of the two different sets of
buffers in your (La)TeX executable.

