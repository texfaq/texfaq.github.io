# Line-breaking in in-line maths

TeX, by default, allows you to split a mathematical expression at
the end of the line; it allows breaks at relational operators (like
''='', ''<'', etc.) and at binary operators (like ''+'',
''-'', etc.).  In the case of large expressions, this can sometimes be
a life-saver.

However, in the case of simple expressions like a=b+c, a
break can be really disturbing to the reader, and one would like to
avoid it.

Fortunately, these breaks are controllable: there are ''penalties''
associated with each type of operator: the penalty 
 says how
undesirable a break at each point is.  Default values are:
```latex
\relpenalty   = 500
\binoppenalty = 700
```
You make the break progressively less attractive by increasing these
values.  You can actually forbid all breaks, everywhere, by:
```latex
\relpenalty   = 10000
\binoppenalty = 10000
```
If you want just to prevent breaks in a single expression, write:
```latex
{%
  \relpenalty   = 10000
  \binoppenalty = 10000
  $a=b+c$
}
```
and the original values will remain undisturbed outside the braces.
This is tedious: there is often value in an alternative approach,
in which you say which parts of the expression may not break whatever
happens, and fortunately this is surprisingly easy.  Suppose we want
to defer a break until after the equality, we could write:
```latex
${a+b+c+d} = z+y+x+w$
```
The braces say ''treat this subformula as one atom'' and (in TeX at
least) atoms don't get split: not a `\binoppenalty` change in sight.

