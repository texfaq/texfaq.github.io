---
title: Printing the time
category: formatting
permalink: /FAQ-time
date: 2021-04-18
---

TeX has a primitive register that contains "the number of minutes
since midnight"; with this knowledge it's a moderately simple
programming job to print the time (one that no self-respecting
Plain TeX user would bother with anyone else's code for).

However, LaTeX provides no primitive for "time", so the
non-programming LaTeX user needs help.

Several packages are available, providing ranges of ways of printing
the date, as well as of the time: this question will concentrate on
the time-printing capabilities, and interested users can investigate
the documentation for details about dates.

The [`datetime`](https://ctan.org/pkg/datetime) package defines two time-printing functions:
`\xxivtime` (for 24-hour time), `\ampmtime` (for 12-hour time) and
`\oclock` (for time-as-words, albeit a slightly eccentric set of words).
Notice that `\oclock` supports language options, but outputs what is mostly a
word-to-word translation from English, and may not be suitable for general use.

The `datetime` package is no longer maintained and has been superseded by
[`datetime2`](https://ctan.org/pkg/datetime2), by the same author.
It's not a drop-in replacement, but instead provides a set of fully expandable
macros that makes it more suitable for a lot of uses.
If you just need to display current time, try `\DTMcurrenttime`.

The [`scrtime`](https://ctan.org/pkg/scrtime) package (part of the compendious
[`KOMA-Script`](https://ctan.org/pkg/KOMA-Script) bundle) takes a package option
(`12h` or `24h`) to specify how times are to be printed.  The command
`\thistime` then prints the time appropriately (though there's no _am_ or _pm_
in `12h` mode).  The `\thistime` command also takes an optional argument,
the character to separate the hours and minutes: the default is of course `:`,
but you could write `\thistime[~h~]` (do not forget to inclure spaces or
unbreakable spaces in the argument in case you want them in the output).

