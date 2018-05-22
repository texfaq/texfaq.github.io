# Repeating a command _n_ times




TeX was _not_ designed as a programming language, but there
are occasions when you want to repeat some part of your document, just
as parts of programs need to run several times.  An obvious
example is TeX-based drawing: LaTeX's `picture`
environment and [`pgf`](http://ctan.org/pkg/pgf) (at least) provide repeat facilities&nbsp;&mdash;
they are useful for drawing repeating patterns.  As a result,
''common'' programming techniques often have to be emulated using
obscure macro TeXniques.


This answer deals with repeating an operation a given number of times;
repeating operations once for each of a set of objects is dealt with
in the answer [repeating ''over a set''](./FAQ-repeat-set.html).


Plain TeX itself provides a `\loop` &hellip; `\repeat`
contruct, which enables you to repeat a command (or set of commands).
The syntax is simple enough, but it use of TeX conditionals is
different enough that many people find it confusing.
```latex
\newcount\foo
\foo=10
\loop
  \message{\the\foo}
  \advance \foo -1
\ifnum \foo>0
\repeat
```
In this slightly tricky code, `\loop` starts the construct ended by
`\repeat`, but `\repeat` also ''serves as'' the `\fi` to the
`\ifnum`.  The loop above prints the numbers from 10 down to 1 via
TeX `\message` (i.e., on the console output).


The [`multido`](http://ctan.org/pkg/multido) package is also 'generic' (usable both in
Plain TeX and LaTeX); it defines a command `\multido` with
three arguments:
  `\multido{&lsaquo;_variables_&rsaquo;}{&lsaquo;_repetitions_&rsaquo;}{&lsaquo;_stuff to repeat_&rsaquo;}`
When the macro is executing, the &lsaquo;_stuff to repeat_&rsaquo; gets executed
&lsaquo;_repetitions_&rsaquo; times; the &lsaquo;_variables_&rsaquo; gives a list of
variables that can be used in &lsaquo;_stuff_&rsaquo;.  Each variable is a
composite of a command sequence and how it varies; so a variable
`\iz``=2+4` sets `\iz` to `2` first time
around, then `6` and `10` in the next two iterations,
and so on.  (The variable `\iz` is an integer; variables with other
initial letters represent different data types.)


Both current LaTeX and (experimental) LaTeX3 have iteration
commands for internal use and for package writers; their use is
probably not recommendable.


The LaTeX distribution package [`ifthen`](http://ctan.org/pkg/ifthen) offers the macro
`\whiledo`:
```latex
\newcounter{ct}
...
\setcounter{ct}{1}
\whiledo {\value{ct} < 5}%
{%
  \thect\
  \stepcounter {ct}%
}
```


The [`forloop`](http://ctan.org/pkg/forloop) package provides nothing but `\forloop`:
```latex
\newcounter{ct}
...
\forloop{ct}{1}{\value{ct} < 5}%
{%
  \thect\
}
```
as you can see, the arguments are counter, starting value and
termination condition; an optional argument supplies a step value
(default step is 1).


The LaTeX `picture` environment has a simple command
for repeated drawing:
```latex
\multiput(x,y)(xstep,ystep){n}{obj}
```
which places &lsaquo;_obj_&rsaquo; (intended to be a bit of picture)
&lsaquo;_n_&rsaquo; times at positions (&lsaquo;_x_&rsaquo;, &lsaquo;_y_&rsaquo;),
(&lsaquo;_x_&rsaquo;+&lsaquo;_xstep_&rsaquo;, &lsaquo;_y_&rsaquo;+&lsaquo;_ystep_&rsaquo;),
(&lsaquo;_x_&rsaquo;+2&lsaquo;_xstep_&rsaquo;, &lsaquo;_y_&rsaquo;+2&lsaquo;_ystep_&rsaquo;) and so on, adding the
displacement again each time.  The command was designed for use in
`picture`, but it makes no check, and may even be used to
provide eccentric typesetting in a ''regular'' sentence, such as:
```latex
Here \multiput(0,0)(1,1){3}{we} are again.
```
with predictable (if not actually desirable) effect.  It may be used
with nothing but an iterative calculation in the braced argument, in
which case its graphical capabilities have no effect.


The [`pgffor`](http://ctan.org/pkg/pgffor) package, which is part of the 
[[`pgf`](http://ctan.org/pkg/pgf) distribution](./FAQ-drawing.html), also
provides iterations to support the needs of graphics.  Its syntax is
in the style of common programming languages:
```latex
\usepackage{pgffor}
\newcommand{\cmd}{-x-}
...
\foreach \n in {1,...,4}{\cmd{}}
```
typesets `-x--x--x--x-`


The `\foreach` command has the potential drawback that its repeated
unit is executed in a group, so that any calculations done within the
loop are lost (unless their result is made `\global`); however, it
does not 'build in' its graphical origins (as `\multiput` does) so
its potential outside its own graphics environment ''home'' is more
clear.
% ```latex
% \input repeat
% \newcount\foo
% \repeat
%   \for{foo} \from{1} \to{10} \do{x*}
% ```
% ```latex
% \repeat
%   \for{var}
%     \from{<start>} \by{<step>} \to{<end>}
%     \downto{<end>} \until{<cond>} \while{<cond>}
% \do{<operate on something>}
% ```




