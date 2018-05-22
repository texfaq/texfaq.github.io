# Defining macros within macros

The way to think of this is that `##` gets replaced by `#` in just the
same way that `#1` gets replaced by 'whatever is the first argument'.

So if you define a macro:
```latex
\newcommand\a[1]{+#1+#1+#1+}
```
or (using the TeX primitive `\def`):
```latex
\def\a#1{+#1+#1+#1+}
```
and use it as `\a{b}`,
the macro expansion produces '+b+b+b+',
as most people would expect.

However, if we now replace part of the macro:
```latex
\newcommand\a[1]{+#1+\newcommand\x[1]{xxx#1}}
```
then `\a{b}` will give us the rather odd
  +b+`\newcommand{x}[1]{xxxb}`
so that the new `\x` ignores its argument.

If we use the TeX primitive: 
```latex
\def\a#1{+#1+\def\x #1{xxx#1}}
```
`\a{b}` will expand to '+b+<code class="verb">&#x5c;def&#x5c;x b&#7b;xxxb&#x7d;</code>'.  This
defines `\x` to be a macro _delimited_ by `b`, and taking no
arguments, which is surely not what was intended!

Actually, to define `\x` to take an argument, we need
```latex
\newcommand\a[1]{+#1+\newcommand\x[1]{xxx##1}}
```
or, using the TeX primitive definition:
```latex
\def\a#1{+#1+\def\x ##1{xxx##1}}
```
and `\a{b}` will expand to 
  +b+<code class="verb">&#x5c;def&#x5c;x #1{xxx#1&#x7d;</code>
because `#1` gets replaced by 'b'
and `##` gets replaced by `#`.

To nest a definition inside a definition inside a definition then you
need `####1`, doubling the number of `#` signs; and at the next level
you need 8&nbsp;`#`s each time, and so on.

