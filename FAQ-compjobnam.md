# Comparing the ''job name''

The token `\jobname` amusingly produces a sequence of characters
whose category code is 12 ('other'), regardless of what the characters
actually are.  Since one inevitably has to compare a macro with the
contents of another macro (using `\ifx`, somewhere) one needs to
create a macro whose expansion looks the same as the expansion of
`\jobname`.  We find we can do this with `\meaning`, if we strip
the `\show` command'' prefix.

The full command looks like:
```latex
\def\StripPrefix#1>{}
\def\jobis#1{FF\fi
  \def\predicate{#1}%
  \edef\predicate{\expandafter\StripPrefix\meaning\predicate}%
  \edef\job{\jobname}%
  \ifx\job\predicate
}
```
And it's used as:
```latex
\if\jobis{mainfile}%
  \message{YES}%
\else
  \message{NO}%
\fi
```
Note that the command `\StripPrefix` need not be defined if you're
using LaTeX&nbsp;&mdash; there's already an 
[internal command](./FAQ-atsigns.html) `\strip@prefix` that you can
use.

