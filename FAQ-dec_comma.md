# The comma as a decimal separator




TeX embodies the British/American cultural convention of using a
period as the separator between the whole number and the decimal
fraction part of a decimal number.  Other cultures use a comma as
separator, but if you use a comma in maths mode you get a small space
after it; this space makes a comma that is used as a decimal separator
look untidy.


A simple solution to this problem, in maths mode, is to type
`3`{,}`14` in place of `3,14`.  While such a
technique may produce the right results, it is plainly not a
comfortable way to undertake any but the most trivial amounts of
typing numbers.


Therefore, if you need to use commas as decimal separator, you will
probably welcome macro support.  There are two packages that
can help relieve the tedium: [`icomma`](http://ctan.org/pkg/icomma) and [`ziffer`](http://ctan.org/pkg/ziffer).


[`Icomma`](http://ctan.org/pkg/Icomma) ensures that there will be no extra space after a
comma, unless you type a space after it (as in `f(x, y)`&nbsp;&mdash; in
the absence of the package, you don't need that space), in which case
the usual small space after the comma appears.  [`Ziffer`](http://ctan.org/pkg/Ziffer) is
specifically targeted at the needs of those typesetting German, but
covers the present need, as well as providing the double-minus sign
used in German (and other languages) for the empty 'cents' part of an
amount of currency.


The [`numprint`](http://ctan.org/pkg/numprint) package provides a command
`\numprint{number}` that prints its argument according to
settings you give it, or according to settings chosen to match the
language you have selected in [`babel`](http://ctan.org/pkg/babel).  The formatting works
equally well in text or maths.  The command is very flexible (it can also
group the digits of very 'long' numbers), but is inevitably less
convenient than [`icomma`](http://ctan.org/pkg/icomma) or [`ziffer`](http://ctan.org/pkg/ziffer) if you are typing a
lot of numbers.


