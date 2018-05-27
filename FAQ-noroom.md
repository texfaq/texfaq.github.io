---
title: No room for a new ''_thing_''
category: errors
permalink: /FAQ-noroom
date: 2018-05-27
---

# No room for a new ''_thing_''

The technology available to Knuth at the time TeX was written is
said to have been particularly poor at managing dynamic storage; as a
result much of the storage used within TeX is allocated as fixed
arrays, in the reference implementations.  Many of these fixed arrays
are expandable in modern TeX implementations, but size of the
arrays of ''registers'' is written into the specification as being 256
(usually); this number may not be changed if you still wish to call
the result TeX
(see [testing TeX implementations](/FAQ-triptrap)).

If you fill up one of these register arrays, you get a TeX error
message saying
```latex
! No room for a new \<thing>.
```
The `\thing`s in question may be `\count` (the object underlying
LaTeX's `\newcounter` command), `\skip` (the object underlying
LaTeX's `\newlength` command), `\box` (the object underlying
LaTeX's `\newsavebox` command), or `\dimen`, `\muskip`,
`\toks`, `\read`, `\write` or `\language` (all types of object
whose use is ''hidden'' in LaTeX.

Originally the the limit on the number of these registers was 256
or for `\read` or `\write` objects, just 16. Current LaTeX formats
are always built with [&epsilon;-TeX](/FAQ-etex) extensions
enabled, which means that there are 32768 registers available for the types
other than `\read` and `\write`. LuaLaTeX extends this further  with 65536
registers for most types, 256 `\write` streams but still 16 `\read` streams.

Most commonly if you get this error now for types other than the file
streams it is because you have an old (pre-2015) LaTeX format which is
checking the original limit of 256, even if an extended TeX is being used.
Updating to a current LaTeX release should fix the issue.  If you have
really used up 32768 registers then most likely you have a programming error that
is causing a loop to allocate all available registers and so an enlarged
TeX would not help. You could however, try with LuaLaTeX which has larger
limits in most cases.

One related error is an error that the number of `\inserts` has been exceeded.
An insert is not a register type but requires allcation of matching count, skip
dimen registers with the same number, in all current engines there can be at most 256
inserts. You are unlikely to get this error on a LaTeX format newer than 2015, however
if you have to use an old format the [`Morefloats`](https://ctan.org/pkg/Morefloats) package
is available that increased the number of inserts available to the float mechanism.


The number of write streams is limited to 16 (or 256 for LuaTeX) even with extended TeX, however the
[`morewrites`](https://ctan.org/pkg/morewrites) package can provide the _illusion_ of large
numbers of `\write` objects.

