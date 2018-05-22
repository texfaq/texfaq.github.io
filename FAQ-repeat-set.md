# Repeating something for each 'thing' in a set




As another question 
([repeating something a given number of times](./FAQ-repeat-num.html))
explains, TeX is not explicitly designed for 'regular' programming
operations. As a result, we must resort to arcane tricks to do the
seemingly simple task of repeating an operation.  This answer deals
with repeating an operation for each of a given set of objects.


The [`etoolbox`](http://ctan.org/pkg/etoolbox) package provides iteration over a
comma-separated list of items, in its `\docsvlist` and
`\forcsvlist` commands; they are well-described in the package
documentation.  The [`datatool`](http://ctan.org/pkg/datatool) package manages ''databases''
(of its own definition) and you may iterate over entries in such a
database using the command `\DTLforeach`.


The [`forarray`](http://ctan.org/pkg/forarray) package defines its own ''list'' and ''array''
structures, together with commands `\ForEach` and `\ForArray`
which enable a command to be executed for each element in a list or
array, respectively.


The [`dowith`](http://ctan.org/pkg/dowith) defines a pair of macros `\DoWith` and
`\StopDoing` that process each ''thing'' between them; a trivial
example of use is:
```latex
\usepackage{dowith}
...
\begin{document}
\newcommand{\foo}[1]{\message{#1+}
\DoWith\foo a{BBB}c\StopDoing
```
which produces terminal output:
```latex
a+ BBB+ c+
```
so, the macros have found 3 ''things'', including one with braces
around it.  (The interpolated spaces come from the primitive
`\message` command.)


The only constraint is that all commands in the enclosed stuff are
''expandable'' (which means, for example, that you may not use
commands with optional arguments).


From the same stable (as [`dowith`](http://ctan.org/pkg/dowith)) comes the package
[`commado`](http://ctan.org/pkg/commado), that provides commands `\DoWithCSL` (apply a
command to each element of a comma-separated-variable list) and
`\DoWithBasesExts` (apply a command to each of a set of files,
defined by base name and ''extension'').  Use of these `\DoWith*`
macros is also expandable (if the command applied to the list elements
is itself expandable).




