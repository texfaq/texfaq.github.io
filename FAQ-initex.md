# What's happened to `initex`?

In the beginning, (La)TeX was stretching the capacity of every
system it was ported to, so there was a premium on reducing the size
of executables.  One way of doing this was to have a separate
executable, `initex`, that had things in it that aren't
needed in ordinary document runs&nbsp;&mdash; notably `\patterns` (which
builds hyphenation tables), and `\dump` (which writes out a format).

On modern systems, the size of this code is insignificant in
comparison to the memory available, and maintaining separate programs
has been found sufficiently error-prone that free Unix-style system
distributions have abolished `initex` and its friends and
relations such as `inipdftex` in favour of a single
executable (that is, just `tex` or `pdftex`) that
will ''do what `initex` (or whatever) used to do'' if it
detects the command option `-ini`.

The change happened with the advent of teTeX version
3.0, which appeared at the beginning of 2005.  At that time,
TeX&nbsp;Live was following teTeX, so that year's TeX&nbsp;Live
distribution would also have dropped `initex`.

It would appear that the equation is somewhat different for the
MiKTeX developers, since that system continues to offer an
`initex` executable.

