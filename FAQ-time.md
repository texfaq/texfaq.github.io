# Printing the time

TeX has a primitive register that contains ''the number of minutes
since midnight''; with this knowledge it's a moderately simple
programming job to print the time (one that no self-respecting
Plain TeX user would bother with anyone else's code for).

However, LaTeX provides no primitive for ''time'', so the
non-programming LaTeX user needs help.

Two packages are available, both providing ranges of ways of printing
the date, as well as of the time: this question will concentrate on
the time-printing capabilities, and interested users can investigate
the documentation for details about dates.

The [`datetime`](http://ctan.org/pkg/datetime) package defines two time-printing functions:
`\xxivtime` (for 24-hour time), `\ampmtime` (for 12-hour time) and
`\oclock` (for time-as-words, albeit a slightly eccentric set of
words).

The [`scrtime`](http://ctan.org/pkg/scrtime) package (part of the compendious
[`KOMA-Script`](http://ctan.org/pkg/KOMA-Script) bundle) takes a package option (`12h` or
`24h`) to specify how times are to be printed.  The command
`\thistime` then prints the time appropriately (though there's no
_am_ or _pm_ in `12h` mode).  The `\thistime`
command also takes an optional argument, the character to separate the
hours and minutes: the default is of course `:`.

