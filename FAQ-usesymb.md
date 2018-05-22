# Using symbols

Most symbol font sets come with a package that defines commands for
every symbol in the font.  While this is convenient, it can lead to
difficulties, particularly with name clashes when you load packages
that cover fonts which duplicate symbols&nbsp;&mdash; an issue which is
discussed in
  ''[symbol already defined](./FAQ-alreadydef.html)''.
Some font sets (for example the related set: `FdSymbol`,
`MdSymbol` and `MnSymbol`) are huge, and the
accompanying macros cover so many symbols that name clashes are surely
a serious problem.

The [`pifont`](http://ctan.org/pkg/pifont) package (originally designed to use the Adobe
`Zapf Dingbats` font) avoids this sort of problem: it requires
you to know the font position of any symbol you want to use (the
documentation provides font tables).  The basic command is
`\ding{number}` for a single symbol; there are commands for
other fancier uses.  [`Pifont`](http://ctan.org/pkg/Pifont) also allows you to select other
fonts, for similar use.

The [`yagusylo`](http://ctan.org/pkg/yagusylo) describes itself as ''an extended version of
[`pifont`](http://ctan.org/pkg/pifont), gone technicolor''.  It provides all the facilities
of [`pifont`](http://ctan.org/pkg/pifont), but allows you to create your own mnemonic names
for symbols.  Thus, while you can say 
`\yagding[family]{symbol number}`[colour], you can also
define symbol names with `\defdingname`, and then use them
with `\yagding*{symbol name}` (the defined name carries the
font family and colour specified in the arguments of
`\defdingname`).

[`Yagusylo`](http://ctan.org/pkg/Yagusylo) is somewhat complicated, but its documentation is
clear; it is probably the best tool to use for picking and choosing
symbols from a variety of font families.

