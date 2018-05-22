# What is &epsilon;-TeX?

While Knuth has declared that TeX will never 
[change in any substantial way](./FAQ-TeXfuture.html), there remain
things that one might wish had been done differently, or indeed
implemented at all.

The NTS project set out to produce an advanced replacement for
TeX, to provide a basis for developing such modifications: this
''New Typesetting System'' would share Knuth's aims, but would
implement the work in a modern way taking account of the lessons
learned with TeX.  While a first demonstrator NTS did
appear, it wasn't practically useful, and the project seems no longer
active.

In parallel with its work on NTS itself, the project developed
a set of extensions that can be used with a (''true'') TeX system.
Such a modified system is known as an &epsilon;-TeX system, and the concept
has proved widely successful.  Indeed, current TeX distributions
are delivered with most formats built with an &epsilon;-TeX-based system (for
those who don't want them, &epsilon;-TeX's extensions can be disabled, leaving
a functionally standard TeX system).

The extensions range from the seemingly simple (increasing the number
of available registers from 256 to 32768) through to extremely subtle
programming support.

[CONTeXT](./FAQ-context.html) has required &epsilon;-TeX for its operation
for some time, though development is now focused on the use of
[LuaTeX](./FAQ-luatex.html).

Some LaTeX packages already specify the use of &epsilon;-TeX.  Some such
packages may not work at all on a non-&epsilon;-TeX system; others will
work, but not as well as on an &epsilon;-TeX system.  The 
[LaTeX team](./FAQ-LaTeX3.html) has announced that future LaTeX
packages (specifically those from the team, as opposed to those
individually contributed) may require &epsilon;-TeX for optimum performance.

