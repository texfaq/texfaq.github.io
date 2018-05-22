# Package reports ''command already defined''

You load a pair of packages, and the second reports that one of the
commands it defines is already present.  For example, both the
[`txfonts`](http://ctan.org/pkg/txfonts) and [`amsmath`](http://ctan.org/pkg/amsmath) define a command `\iint`
(and `\iiint` and so on); so
```latex
...
\usepackage{txfonts}
\usepackage{amsmath}
```
produces a string of error messages of the form:
```latex
! LaTeX Error: Command \iint already defined.
               Or name \end... illegal, see p.192 of the manual.
```
As a general rule, things that [`amsmath`](http://ctan.org/pkg/amsmath) defines, it defines
well; however, there is a good case for using the [`txfonts`](http://ctan.org/pkg/txfonts)
version of `\iint`&nbsp;&mdash; the associated `tx` fonts have a
double integral symbol that doesn't need to be ''faked'' in the way
[`amsmath`](http://ctan.org/pkg/amsmath) does.  In the case that you are loading several
symbol packages, every one of which defines the same symbol, you are
likely to experience the problem in a big way (`\euro` is a common
victim).

There are similar cases where one package redefines another's command,
but no error occurs because the redefining package doesn't use
`\newcommand`.  Often, in such a case, you only notice the change
because you assume the definition given by the first package.  The
[`amsmath`](http://ctan.org/pkg/amsmath)&ndash;[`txfonts`](http://ctan.org/pkg/txfonts) packages are just such a pair;
[`txfonts`](http://ctan.org/pkg/txfonts) doesn't provoke errors.

You may deal with the problem by saving and restoring the command.
Macro programmers may care to do this for themselves; for the rest of
us, there's the package [`savesym`](http://ctan.org/pkg/savesym).  The sequence:
```latex
\usepackage{savesym}
\usepackage{amsmath}
\savesymbol{iint}
\usepackage{txfonts}
\restoresymbol{TXF}{iint}
```
does the job; restoring the [`amsmath`](http://ctan.org/pkg/amsmath) version of the command,
and making the [`txfonts`](http://ctan.org/pkg/txfonts) version of the command available as
`\TXFiint`.

Documentation of [`savesym`](http://ctan.org/pkg/savesym) doesn't amount to much: the only
commands are `\savesymbol` and `\restoresymbol`, as noted above.

