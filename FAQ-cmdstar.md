# Commands defined with * options

LaTeX commands commonly have ''versions'' defined with an asterisk
tagged onto their name: for example `\newcommand` and
`\newcommand*` (the former defines a `\long` version of the
command).

The simple-minded way for a user to write such a command involves use
of the [`ifthen`](http://ctan.org/pkg/ifthen) package:
```latex
\newcommand{\mycommand}[1]{\ifthenelse{\equal{#1}{*}}%
  {\mycommandStar}%
  {\mycommandNoStar{#1}}%
}
\newcommand{\mycommandStar}{starred version}
\newcommand{\mycommandNoStar}[1]{normal version}
```
This does the trick, for sufficiently simple commands, but it has
various tiresome failure modes, and it requires `\mycommandnostar`
to take an argument.

The LaTeX kernel does a lot of this, and has its own command,
`ifstar` (which needs 'internal command protection', cf.
```latex
\makeatletter
\newcommand{\mycommand}{%
             \@ifstar
                  \mycommandStar%
                  \mycommandNoStar%
\makeatother
}
\newcommand{\mycommandStar}{starred version}
\newcommand{\mycommandNoStar}{normal version}
```
(Note that arguments to `\mycommandStar` and `\mycommandNoStar`
are independent&nbsp;&mdash; either can have their own arguments, unconstrained
by the technique we're using, unlike the trick described above.)
The `ifstar` trick is all very well, is fast and efficient, but
it requires that the definition be 
[`\makeatletter` protected](./FAQ-atsigns.html).

A pleasing alternative is the [`suffix`](http://ctan.org/pkg/suffix) package.  This elegant
piece of code allows you to define variants of your commands:
```latex
\newcommand\mycommand{normal version}
\WithSuffix\newcommand\mycommand*{starred version}
```
The package needs [e-LaTeX](./FAQ-etex.html), but any new enough
distribution defines LaTeX as e-LaTeX by default.  Command
arguments may be specified in the normal way, in both command
definitions (after the `*` in the `\WithSuffix`
version).  You can also use the TeX primitive commands, creating a
definition like:
```latex
\WithSuffix\gdef\mycommand*{starred version}
```

For those of an adventurous disposition, a further option is to use
the [`xparse`](http://ctan.org/pkg/xparse) package from the [`l3packages`](http://ctan.org/pkg/l3packages)
distribution.  The package defines a bunch of commands (such as
`\NewDocumentCommand`) which are somewhat analagous to
`\newcommand` and the like, in LaTeX 2e.  The big difference is
the specification of command arguments; for each argument, you have a
set of choices in the command specification.  So, to create a
*-command (in LaTeX 2e style), one might write:
```latex
\NewDocumentCommand \foo { s m } {%
  % #1 is the star indicator
  % #2 is a mandatory argument
  ...
}
```
The ''star indicator'' (`s`) argument appears as `#1`
and will take values `\BooleanTrue` (if there was a star) or
`\BooleanFalse` (otherwise); the other (`m`) argument  is a
normal TeX-style mandatory argument, and appears as `#2`.

While [`xparse`](http://ctan.org/pkg/xparse) provides pleasing command argument
specifications, it _is_ part of the 
[LaTeX&nbsp;3 experimental harness](./FAQ-LaTeX3.html).
Simply loading the package to provide `\DeclareDocumentCommand`
''pulls in'' all of the LaTeX3 kernel (a large bunch of packages)
via the [`expl3`](http://ctan.org/pkg/expl3) package.

