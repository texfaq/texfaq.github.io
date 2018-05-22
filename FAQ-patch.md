# Patching existing commands

In the general case (possibly sticking something in the middle of an
existing command) this is difficult.  However, the common requirement,
to add some code at the beginning or the end of an existing command,
is conceptually quite easy.  Suppose we want to define a version of a
command that does some small extension of its original definition: we
would naturally write:
```latex
\renewcommand{\splat}{\mumble\splat}
```
However, this would not work: a call to `\splat` would execute
`\mumble`, and then call the redefined `\splat` again; this is an
'unterminated recursion', that will quickly exhaust TeX's memory.

Fortunately, the TeX primitive `\let` command comes to our
rescue; it allows us to take a ''snapshot'' of the current state of a
command, which we can then use in the redefinition of the command.
So:
```latex
\let\OldSmooth\smooth
\renewcommand{\smooth}{\mumble\OldSmooth}
```
effects the required patch, safely.  Adding things at the end of a
command works similarly.

If `\smooth` takes arguments, one must pass them on:
```latex
\let\OldSmooth\smooth
\renewcommand{\smooth}[2]{\mumble\OldSmooth{#1}{#2}}
```

The situation is more difficult still if `\smooth` takes an
optional argument; the structure of the command is so complex that the
simple `\let` command does not retain the necessary detail.  In
this case, we need the [`letltxmacro`](http://ctan.org/pkg/letltxmacro) package which knows about all
sorts of LaTeX commands and how to replicate them.  Suppose we have
a command defined as:
```latex
\newcommand{\rough}[1][\default]{...}
```
with an optional argument (substituted with `\default` if it's not
present) as well as an ordinary one.  In this case we copy it using
```latex
\LetLtxMacro{\NewRough}{\rough}
```
and then repeat the technique we had above, with one extension:
```latex
\renewcommand{\rough}[1][\newdef]%
             {\mumble\OldRough[{#1}]{#2}}
```
We see here that (for tedious argument-matching reasons) it is
necessary to provide braces arround the optional argument that is
being passed on.

The general case may be achieved in two ways.  First, one can use the
LaTeX command `\CheckCommand`; this compares an existing command
with the definition you give it, and issues a warning if two don't
match.  Use is therefore:
  `\CheckCommand[[[complex]]]{`&lsaquo;_original definition_&rsaquo;`}`

  `\renewcommand[[[complex]]]{`&lsaquo;_new definition_&rsaquo;`}`
This technique is obviously somewhat laborious, but if the original
command comes from a source that's liable to change under the control
of someone else, it does at least warn you that your patch is in
danger of going wrong.

Otherwise, LaTeX users may use one of the [`patchcmd`](http://ctan.org/pkg/patchcmd),
[`ted`](http://ctan.org/pkg/ted) or [`etoolbox`](http://ctan.org/pkg/etoolbox) packages.

The [`patchcmd`](http://ctan.org/pkg/patchcmd) package addresses a slightly simpler task, by
restricting the set of commands that you may patch; you mayn't patch
any command that has an optional argument, though it does deal with
the case of commands defined with `\DeclareRobustCommand`.  The
package defines a `\patchcommand` command, that takes three
arguments: the command to patch, stuff to stick at the front of its
definition, and stuff to stick on the end of its definition.  So,
after
```latex
\def\b{b}
\patchcmd\b{a}{c}
```
we will have a new version of `\b` defined as `abc`.

The [`ted`](http://ctan.org/pkg/ted) package is a 'token list editor', and provides a
command `\substitute` which will patch the
contents of a macro, putting the result in a token-list, or
(in the form `\Substitute*`) using the result to (re)define a
macro.  The following example defines a simple macro, and then changes
its definition:
```latex
\newcommand{\myfont}%
    {\Large\sffamily\selectfont}
\Substitute*[\renewcommand{\myfont}]{\myfont}%
    {\Large\sffamily}{\huge\itshape}
```
The macro's definition is now:
```latex
\huge\itshape\selectfont
```

The package also offers a command `\ShowTokens`, which shows the
content of its argument, one token to a line, with details of the
token's category code, etc.  This is recommended as a debugging tool.

The [`etoolbox`](http://ctan.org/pkg/etoolbox) package (which provides user access to &epsilon;-TeX's
programming facilities) provides a command `\patchcmd` which is
very similar to `\Substitute`, except that it only replaces a
single instance of the token(s) in its search pattern.  Since not all
commands may be patched in this way, `\patchcmd` takes extra
arguments for _success_ and _failure_ cases.  The
package also provides commands that prepend (`\pretocmd`) or append
(`\apptocmd`) to the definition of a command.  Not all commands may
be patched in this way; the package provides a command
`\ifpatchable` which checks the prerequisites, and checks that the
target command's body does indeed include the patch string you propose
to use.  (The command `\ifpatchable*` omits the test on the patch
string.)

The [`regexpatch`](http://ctan.org/pkg/regexpatch) package deals with cases that are
inaccessible with [`etoolbox`](http://ctan.org/pkg/etoolbox); it uses the regular expression
(pattern-matching) package [`l3regex`](http://ctan.org/pkg/l3regex) from the LaTeX3
distribution to find the code you need to patch.  The package also
''knows about'' robust commands and about
[[`biblatex`](http://ctan.org/pkg/biblatex)](./FAQ-biblatex.html).

Finally, we'll briefly consider a package that is (just about)
usable, but not really recommendable.  [`Patch`](http://ctan.org/pkg/Patch) gives you an
ingenious (and difficult to understand) mechanism, and comes as an
old-style LaTeX documented macro file, which can no longer be
processed to [produce formatted documentation, etc.](./FAQ-install-doc.html).
Fortunately, the file (`patch.doc`) may be input directly, and
''documentation'' may found by reading the source of the package.
Roughly speaking, one gives the command a set of instructions
analogous to `sed` substitutions, and it regenerates the
command thus amended.  Unless you can't do your job any other way,
[`patch`](http://ctan.org/pkg/patch) is best avoided.

