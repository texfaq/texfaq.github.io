# More than one optional argument

If you've already read 
''[breaking the 9-argument limit](./FAQ-moren9.html)''.
you can probably guess the ''simple'' solution to this problem:
command relaying.

LaTeX allows commands with a single optional argument thus:
```latex
  \newcommand{\blah}[1][Default]{...}
```

You may legally call such a command either with its optional argument
present, as
`\blah[nonDefault]` or without, as `\blah`; in the latter
case, the code of `\blah` will have an argument of `Default`.

To define a command with two optional arguments, we use the relaying
technique, as follows:
```latex
\newcommand{\blah}[1][Default1]{%
  \def\ArgI{{#1}}%
  \BlahRelay
}
\newcommand\BlahRelay[1][Default2]{%
  % the first optional argument is now in
  % \ArgI
  % the second is in #1
  ...%
}
```
Of course, `\BlahRelay` may have as many mandatory arguments as are
allowed, after allowance for the one taken up with its own
optional argument&nbsp;&mdash; that is, 8.

Variants of `\newcommand` (and friends), with names like
`\newcommandtwoopt`, are available in the [`twoopt`](http://ctan.org/pkg/twoopt) package.
However, if you can, it's probably better to learn to write the commands
yourself, just to see why they're not even a good idea from the
programming point of view.

A command with two optional arguments strains the limit of what's
sensible: obviously you can extend the technique to provide as many
optional arguments as your fevered imagination can summon.  However,
see the comments on the use of the [`keyval`](http://ctan.org/pkg/keyval) package, in 
''[breaking the 9-argument limit](./FAQ-moren9.html)'',
which offers an alternative way forward.

If you must, however, consider the [`optparams`](http://ctan.org/pkg/optparams) or
[`xargs`](http://ctan.org/pkg/xargs) packages.  [`Optparams`](http://ctan.org/pkg/Optparams)
provides a `\optparams` command that you use as an intermediate in
defining commands with up to nine optional arguments.  The
documentation shows examples of commands with four optional arguments
(and this from an author who has his own key-value package!).

The [`xargs`](http://ctan.org/pkg/xargs) package uses a key-value package
([`xkeyval`](http://ctan.org/pkg/xkeyval)) to _define_ the layout of the optional
arguments.  Thus
```latex
\usepackage{xargs}
...
\newcommandx{\foo}[3][1=1, 3=n]{...}
```
defines a command `\foo` that has an optional first argument
(default 1), a mandatory second argument, and an optional third
argument (default n).

An alternative approach is offered by Scott Pakin's
`newcommand` program, which takes a command name and a
definition of a set of command arguments (in a fairly
readily-understood language), and emits (La)TeX macros which enable
the command to be defined.  The command requires that a
`Python` interpreter (etc.) be installed on your computer.

