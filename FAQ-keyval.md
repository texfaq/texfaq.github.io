# Key-value input for macros and package options

When we discussed 
[extending the number of arguments to a macro](./FAQ-moren9.html), we
suggested that large numbers of arguments, distinguished only by their
position, aren't very kind to the user, and that a package such as
[`keyval`](http://ctan.org/pkg/keyval) offers a more attractive user interface.  We now
consider the packages that the macro programmer might use, to create
such a user interface.

The simplest key-value processor (for LaTeX, at least) remains
[`keyval`](http://ctan.org/pkg/keyval); it has a command `\define@key` to declare a key
and a _handler_ to process it, and a macro `\setkeys` to offer
values to the handler of one or more keys.  Thus:
```latex
\define@key{my}{foo}{Foo is #1\par}
\define@key{my}{bar}[99]{Bar is #1\par}
...
\setkeys{my}{foo=3,bar}
```
will produce output saying:
  Foo is 3

  Bar is 99
This has defined two keys `foo` and `bar` in family
`my`, and then executed them, the first with argument
`3` and the second with no argument, so that the default
value of `99` is picked up.  In effect, the two calls to
`\define@key` are simply defining commands, as (for example):
```latex
\newcommand{\KV@my@foo}[1]{Foo is #1}
```
(the definition of `\KV@my@bar` is similar, but trickier).  The
command `\setkeys` knows how to find those commands when it needs to
process each key&nbsp;&mdash; it is easy to regurgitate the structure of the
command name, with family name (`my`, here) after the first
`@`, and the key name after the second `@`.  (The
`KV` part is fixed, in [`keyval`](http://ctan.org/pkg/keyval).)

These simple commands are enough, in fact, to process the botanical
example offered as replacement for multi-argument commands in 
[the question mentioned above](./FAQ-moren9.html), or the
optional arguments of the `\includegraphics` command of the
[`graphicx`](http://ctan.org/pkg/graphicx) package.  (The last is, in fact, what
[`keyval`](http://ctan.org/pkg/keyval) was designed to do.)

However, we need more if we're to to have package options in
'key-value' form.  Packages like [`hyperref`](http://ctan.org/pkg/hyperref) have enormously
complicated package options which need key-value processing at
`\ProcessOptions` time: [`keyval`](http://ctan.org/pkg/keyval) can't do that on its own.

Heiko Oberdiek's [`kvoptions`](http://ctan.org/pkg/kvoptions) package comes to our help: it
enables the programmer to declare class or package options that
operate as key and value pairs.  The package defines commands
`\DeclareBoolOption` for options whose value should be either
_true_ or _false_, and `\DeclareStringOption` for all
other options that have a value.  Keys are declared using
[`keyval`](http://ctan.org/pkg/keyval) and may remain available for use within the document,
or may be 'cancelled' to avoid confusion.  If you have loaded
[`kvoptions`](http://ctan.org/pkg/kvoptions), the LaTeX kernel's `\DeclareOption` becomes
`\DeclareVoidOption` (it's an option with no value), and
`\DeclareOption*` becomes `\DeclareDefaultOption`.

Heiko also provides [`kvsetkeys`](http://ctan.org/pkg/kvsetkeys) which is a more robust version
of [`setkeys`](http://ctan.org/pkg/setkeys), with some of the rough edges made smoother.

Hendri Adriaens' [`xkeyval`](http://ctan.org/pkg/xkeyval) offers more flexibility than
the original [`keyval`](http://ctan.org/pkg/keyval) and is more robust than the original,
too.  Like [`kvoptions`](http://ctan.org/pkg/kvoptions), the package also has mechanisms to
allow class and package options in key-value form (macros
`\DeclareOptionX`, `\ExecuteOptionsX` and `\ProcessOptionsX`.
[`Pstricks`](http://ctan.org/pkg/Pstricks) bundle packages use a [`xkeyval`](http://ctan.org/pkg/xkeyval) derivative
called [`pst-xkey`](http://ctan.org/pkg/pst-xkey) for their own key-value manipulation.

The (widely-respected) [`pgf`](http://ctan.org/pkg/pgf) graphics package has its own
key-value package called [`pgfkeys`](http://ctan.org/pkg/pgfkeys).  The documentation of the
package (part of the huge [`pgf`](http://ctan.org/pkg/pgf) manual, in part 5,
''utilities'') contains a useful comparison with other key-value
systems; some notable differences are:
  

-  key organisation: [`pgfkeys`](http://ctan.org/pkg/pgfkeys) uses a tree structure, while
    [`keyval`](http://ctan.org/pkg/keyval) and [`xkeyval`](http://ctan.org/pkg/xkeyval) both associate keys with a family;
-  [`pgfkeys`](http://ctan.org/pkg/pgfkeys) supports multi-argument key code; and
-  [`pgfkeys`](http://ctan.org/pkg/pgfkeys) can support call-backs when an unknown key
    appears (these things are called _handlers_.

Keys are organized in a tree that is reminiscent of the Unix fille
tree.  A typical key might be, `/tikz/coordinate system/x` or
just `/x`.  When you specify keys you can provide the complete
path of the key, but you usually just provide the name of the key
(corresponding to the file name without any path) and the path is
added automatically.  So a `\pgfkeys` command might be:
```latex
\pgfkeys{/my key=hello,/your keys/main key=something\strange,
  key name without path=something else}
```
and for each key mentioned, the associated code will be executed.
&hellip; and that code is also set up using `\pgfkeys`:
```latex
\pgfkeys{/my key/.code=The value is '#1'.}
```
after which
```latex
\pgfkeys{/my key=hi!}
```
will produce just
  The value is 'hi!'.
The manual goes on, showing how to define a key with two arguments,
how to provide default value for a key, and how to define aliases for
particular key sequences (which are called ''styles'').  All in all,
it seems a well thought-out system, offering a lot of flexibility that
isn't available with the other keys packages.  However, there seems to
be no mechanism for using [`pgfkeys`](http://ctan.org/pkg/pgfkeys) keys as part of the
options of another package, in the way that [`kvoptions`](http://ctan.org/pkg/kvoptions) does.

The [`l3kernel`](http://ctan.org/pkg/l3kernel) programming layer for [LaTeX3](./FAQ-LaTeX3.html)
includes the [`l3keys`](http://ctan.org/pkg/l3keys) module.  Inspired by [`pgfkeys`](http://ctan.org/pkg/pgfkeys),
it provides a keyval-based method for the programmer to create keys.
As with keyval and derivatives, [`l3keys`](http://ctan.org/pkg/l3keys) uses separate macros
for defining and setting keys.  The package [`l3keys2e`](http://ctan.org/pkg/l3keys2e) makes
it possible for LaTeX 2e class and package
options to be processed using [`l3keys`](http://ctan.org/pkg/l3keys). [`L3kernel`](http://ctan.org/pkg/L3kernel)
code can be used within existing LaTeX2e documents, so
[`l3keys`](http://ctan.org/pkg/l3keys) is also available to the LaTeX 2e programmer 'direct'.

Another key-value system that's part of larger set of macros is
[`scrbase`](http://ctan.org/pkg/scrbase), which uses the facilities of [`keyval`](http://ctan.org/pkg/keyval) to
build a larger set of facilities, originally for use within the
[`KOMA-script`](http://ctan.org/pkg/KOMA-script) bundle.  For English-speaking authors, there are
difficulties from the German-only documentation; however, from a
partial translation available to the author of this answer, a summary
is possible.  The package may build on the facilities either of
[`kyeval`](http://ctan.org/pkg/kyeval) or of [`xkeyval`](http://ctan.org/pkg/xkeyval), and builds its functionality
on the structure of the 'key family'.  The user may define family
'members' and keys are defined relative to the members.  (For example,
the package [`scrbase`](http://ctan.org/pkg/scrbase) is part of the [`KOMA-script`](http://ctan.org/pkg/KOMA-script)
bundle; so its keys are all members of the [`scrbase.sty`](http://ctan.org/pkg/scrbase.sty)
family within the [`KOMA`](http://ctan.org/pkg/KOMA) family.  The function
`\FamilyProcessOptions` allows the programmer to decode the options
of the package in terms of the package's key family.  Note that there
is no special provision made for ''traditional'' package options, as
in the [`kvoptions`](http://ctan.org/pkg/kvoptions) package.

This brief summary was guided by input from two sources: a draft article
for _TUGboat_ by Joseph Wright, and the partial translation of the
documentation of package [`scrbase`](http://ctan.org/pkg/scrbase) prepared by Philipp
Stephani.

All the above are (at least) aimed at LaTeX programming; there is
one package, [`getoptk`](http://ctan.org/pkg/getoptk), aimed at the Plain TeX programmer.
[`Getoptk`](http://ctan.org/pkg/Getoptk) uses syntax inspired by that offered by TeX
primitives such as `\hrule` and `\hbox`, so we are offered
syntax such as:
```latex
\begindisplay file {chapter1} literal offset 20pt
```
(taken from the package manual).

There are (we know) people who would swear that such syntax is
wonderful (the present author wouldn't), but the package earns its
place as the only stand-alone key-value macros that will work in Plain TeX.

