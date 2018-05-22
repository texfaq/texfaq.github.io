# How to break the 9-argument limit

If you think about it, you will realise that Knuth's command
definition syntax:
```latex
\def\blah#1#2 ... #9{<macro body>}
```
is intrinsically limited to just 9 arguments.  There's no direct way
round this: how would you express a 10th argument?&nbsp;&mdash; and ensure that
the syntax didn't gobble some other valid usage?

If you really must have more than 9 arguments, the way to go is:
```latex
\def\blah#1#2 ... #9{%
  \def\ArgI{{#1}}%
  \def\ArgII{{#2}}%
  ...
  \def\ArgIX{{#9}}%
  \BlahRelay
}
\def\BlahRelay#1#2#3{%
  % arguments 1-9 are now in
  %   \ArgI-\ArgIX
  % arguments 10-12 are in
  %   #1-#3
  <macro body>%
}
```
This technique is easily extendible by concert pianists of the TeX
keyboard, but is really hard to recommend.

LaTeX users have the small convenience of merely giving a number of
arguments in the `\newcommand` that defines each part of the
relaying mechanism: Knuth's restriction applies to `\newcommand`
just as it does to `\def`.  However, LaTeX users also have the
way out of such barbarous command syntax: the [`keyval`](http://ctan.org/pkg/keyval)
package.  With [`keyval`](http://ctan.org/pkg/keyval), and a bit of programming, one can
write really quite sophisticated commands, whose invocation might look
like:
```latex
\flowerinstance{species=Primula veris,
  family=Primulaceae,
  location=Coldham's Common,
  locationtype=Common grazing land,
  date=1995/04/24,
  numplants=50,
  soiltype=alkaline
}
```
The merit of such verbosity is that it is self-explanatory: the typist
doesn't have to remember that argument twelve is `soiltype`, and so
on: the commands may be copied from field notes quickly and
accurately.

        * faq-mac-prog.tex (q-keyval): tweak words about getoptk

