# The ANT typesetting system

Achim Blumensath's [ANT](http://ant.berlios.de) project
aims not to replicate TeX with a different implementation
technique, but rather to provide a replacement for TeX which uses
TeX-like typesetting algorithms in a very different programming
environment.  ANT remains under development, but it is now
approaching the status of a usable typesetting system.

ANT's markup language is immediately recognisable to the
(La)TeX user, but the scheme of implementing design in
ANT's own implementation language (presently
`OCaml`) comes as a pleasant surprise to the jaded FAQ
writer.  This architecture holds the promise of a system that avoids a
set of serious problems with TeX's user interface: those that
derive from the design language being the same as the markup language.

