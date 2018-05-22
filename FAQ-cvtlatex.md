# Transcribing LaTeX command definitions

At several places in this FAQ, questions are answered in terms
of how to program a LaTeX macro.  Sometimes, these macros might
also help users of Plain TeX or other packages; this answer
attempts to provide a rough-and-ready guide to transcribing such macro
definitions for use in other packages.

The reason LaTeX has commands that replace `\def`, is that
there's a general philosophy within LaTeX that the user should be
protected from himself: the user has different commands according to
whether the command to be defined exists (`\renewcommand`) or not
(`\newcommand`), and if its status proves not as the user expected,
an error is reported.  A third definition command,
`\providecommand`, only defines if the target is not already
defined; LaTeX has no direct equivalent of `\def`, which ignores
the present state of the command.  The final command of this sort is
`\DeclareRobustCommand`, which creates a command which is ''robust''
(i.e., will not expand if subjected to LaTeX ''protected
expansion''); from the Plain TeX user's point of view,
`\DeclareRobustCommand` should be treated as a non-checking version
of `\newcommand`.

LaTeX commands are, by default, defined `\long`; an optional `*`
between the `\newcommand` and its (other) arguments specifies that
the command is _not_ to be defined `\long`.  The `*` is
detected by a command `ifstar` which uses `\futurelet` to switch
between two branches, and gobbles the `*`: LaTeX users are
encouraged to think of the `*` as part of the command name.

LaTeX's checks for unknown command are done by `\ifx` comparison
of a `\csname` construction with `\relax`; since the command name
argument is the desired control sequence name, this proves a little
long-winded.  Since `#1` is the requisite argument, we have:
```latex
\expandafter\ifx
  \csname\expandafter\@gobble\string#1\endcsname
  \relax
    ...
```
(`gobble` simply throws away its argument).

The arguments of a LaTeX command are specified by two optional
arguments to the defining command: a count of arguments (0&ndash;9: if the
count is 0, the optional count argument may be omitted), and a default
value for the first argument, if the defined command's first argument
is to be optional.  So:
```latex
\newcommand\foo{...}
\newcommand\foo[0]{...}
\newcommand\foo[1]{...#1...}
\newcommand\foo[2][boo]{...#1...#2...}
```
In the last case, `\foo` may be called as `\foo{goodbye}`,
which is equivalent to `\foo[boo]{goodbye}` (employing the
default value given for the first argument), or as
`\foo[hello]{goodbye}` (with an explicit first argument).

Coding of commands with optional arguments is exemplified by the
coding of the last `\foo` above:
```latex
\def\foo{\futurelet\next\@r@foo}
\def\@r@foo{\ifx\next[%
    \let\next\@x@foo
  \else
    \def\next{\@x@foo[boo]}%
  \fi
  \next
}
\def\@x@foo[#1]#2{...#1...#2...}
```

