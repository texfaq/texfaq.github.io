# Defining a macro from an argument

It's common to want a command to create another command: often one
wants the new command's name to derive from an argument.  LaTeX
does this all the time: for example, `\newenvironment` creates
start- and end-environment commands whose names are derived from the
name of the environment command.

The (seemingly) obvious approach:
```latex
\def\relay#1#2{\def\#1{#2}}
```
doesn't work (the TeX engine interprets it
as a rather strange redefinition of `#`).  The trick is to use
`\csname`, which is a TeX primitive for generating command names
from random text, together with `\expandafter`.  The definition
above should read:
```latex
\def\relay#1#2{%
  \expandafter\def\csname #1\endcsname{#2}%
}
```
With this definition, `\relay{blah}{bleah}` is equivalent to
`\def``\blah{bleah}`.

Note that the definition of `\relay` omits the braces round the
'command name' in the `\newcommand` it executes.  This is
because they're not necessary (in fact they seldom are), and in this
circumstance they make the macro code slightly more tedious.

The name created need not (of course) be _just_ the argument:
```latex
\def\newrace#1#2#3{%
  \expandafter\def\csname start#1\endcsname{%
    #2%
  }%
  \expandafter\def\csname finish#1\endcsname{%
    #3%
  }%
}
```
With commands
```latex
\def\start#1{\csname start#1\endcsname}
\def\finish#1{\csname finish#1\endcsname}
```
these 'races' could behave a bit like LaTeX environments.

