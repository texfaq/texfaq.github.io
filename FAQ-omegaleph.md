# Omega and Aleph

Omega was developed as an extension of
TeX, to use with multilingual texts, expressed in a variety of
input encodings.  Omega uses 16-bit, Unicode-encoded, characters.  It
provides many innovative concepts, notably including the ''translation
process'' that takes a character stream and transforms it according to
various processes that may be internally specified, or be a separate
program.

While Omega showed a lot of promise at its mid-1990s announcement,
progress was slow, and development was essentially dead by the time
that one of the original developers withdrew (taking with him a bunch
of research students).

Before that distressing event, a separate thread of development had
started, to produce a program 
called Aleph, which merged the facilities of
[&epsilon;-TeX](./FAQ-etex.html) into a stable Omega codebase and added other
extensions.  Aleph also proved an attractive platform for many people;
but its development, too, has dried up.

A presentation at EuroTeX 2006 claimed that development of Omega
was picking up again, in parallel with research into what the (new)
developers consider a rational scheme for supporting TeX-style
typesetting.  The new system was to be known as Omega-2
(Omega subscript 2), and was to be
designed in a modular fashion so that support of new facilities (such
as use of advanced OpenType fonts) could be added in a relatively
straightforward fashion.  A quick web search leads to a recommendation
that potential users consider [LuaTeX](./FAQ-luatex.html) instead;
fortunately, lessons learned in Aleph project have been carried
forward in the development of LuaTeX.

