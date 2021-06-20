---
title: TeX Engine development
category: misc
tags:
  - pdftex
  - luatex
  - xetex
permalink: /FAQ-enginedev
date: 2018-05-24
redirect_from:
  - /FAQ-extex
  - /FAQ-omegaleph
---

While Knuth has declared that TeX will never [change in any substantial
way](FAQ-TeXfuture), there remain things that one might wish had been done
differently, or indeed implemented at all. These have been explored in a number
of engine developments, some of which have somewhat complex histories.

The first set of major additions to Knuth's TeX were provided by the NTS
project in [&epsilon;-TeX](FAQ-etex): these additions are available in all
current engines. [pdfTeX](FAQ-pdftex) added a range of new primitives, and
many these have also been taken up by other engine developers.

## Active projects

### pdfTeX

[pdfTeX](FAQ-pdftex) was developed by Hàn Thế Thành,
incorporating the ability to create PDF output directly into the TeX engine.
Although originally developed in parallel, pdfTeX today includes the
[&epsilon;-TeX](#&epsilon;-tex) extensions as-standard.
Development of pdfTeX has mostly stopped: changes are largely focussed on
bug fixes. However, the central importance of pdfTeX as the "standard"
engine in modern TeX distributions means further changes may be seen,
particularly in the area of accessibility.

pdfTeX started as a topic for Hàn Thế Thành's
Master's&nbsp;thesis, and seems first to have been published in TUGboat 18(4),
in 1997 (though it was certainly discussed at the TUG'96 conference in Russia).
While the world was making good use of "pre-releases" of pdfTeX, Thành
used it as a test-bed for the micro-typography which was the prime subject of
his Ph.D.&nbsp;research. Since Thành was finally awarded his Ph.D.,
day-to-day maintenance and development of pdfTeX&nbsp;1.0 (and later) has been
in the hands of a group of [pdfTeX maintainers](https://tug.org/applications/pdftex/) (which
includes Thành); the group has managed to maintain a stable platform for
general use.

### XeTeX

[XeTeX](FAQ-xetex), originally developed by Jonathan Kew, a Unicode TeX
engine which is able to load system fonts using the [HarfBuzz]() library, which
is accomplished by an extended syntax to the `\font` primitive. It builds on
[&epsilon;-TeX](#&epsilon;-tex) and also adds a range of new primitives useful
for working with non-Latin languages. Otherwise, the process of typesetting is
essentially the same as TeX's. Like [pdfTeX](#pdftex), major developments are
not currently ongoing with the [XeTeX codebase](http://xetex.sourceforge.net/),
though bug fixes and cross-compatibility with other engines do continue.

### LuaTeX

As [detailed above](#pdftex), development of pdfTeX is "in essence" complete.
As pdfTeX development ran down, development of a new system, LuaTeX was started.
[Lua](http://www.lua.org/) is a interpreter designed to be incorporated into
other applications. LuaTeX consists of a TeX-like engine with a Lua interpreter
"embedded" in it; the `lua` interpreter has access to many of the data
structures used for typesetting, so that the programmer may also interpolate
chunks of Lua code into their (La)TeX macros, or as "call-backs" for use when
the TeX-like engine does certain operations.

This arrangement offers the prospect of a "semi-soft" typesetting engine: it
will have its basic behaviour, but the user gets to redefine functionality if
an idea occurs&nbsp;&mdash; there will be no need to persuade the world first,
and then find a willing developer to work on the sources of of the
distribution.

The [LuaTeX project](http://www.luatex.org/) has pursued avenues that many 
of other projects have had in their sights, notably Unicode character
representations and support for OpenType fonts.  This included incorporating
the extensions pioneered by [Aleph](#omega-and-aleph). Current LuaTeX
(v1.0.8) is considered close to feature-complete by the development team:
at the time of writing, the possibility of a v2 development path has been
suggested.

## Historical projects

### &epsilon;-TeX

As part of the work of the [NTS project](#new-typesetting-system-(nts)),
a number of extensions to Knuth's TeX were developed. Many of these
support programming in a way which makes tasks easier than in Knuth's TeX,
or indeed possible at all. Others extend the range of available registers
in TeX or make more internal information available. Current TeX distributions
are delivered with the &epsilon;-TeX extensions available in almost
all formats other than `tex` (Knuth's TeX) itself. 

### ExTeX

[The ExTeX project](http://www.extex.org/) was building on the experience of
the many existing TeX development and extension projects, to develop a new
TeX-like system. The system was developed in Java.

ExTeX was designed to accept Unicode input, and to implement all of TeX's
primitives, but with some marked as obsolete, and "modern" alternatives
provided. Desirable extensions from [&epsilon;-TeX](FAQ-etex),
[pdfTeX](FAQ-pdftex) and [&Omega;](#omega-and-aleph) were identified for
incorporation.

### Omega and Aleph

Omega was developed as an extension of TeX, to use with multilingual texts,
expressed in a variety of input encodings. Omega used 16-bit, Unicode-encoded,
characters. It provided many innovative concepts, notably including the
"translation process" that takes a character stream and transforms it
according to various processes that may be internally specified, or be a
separate program.

While Omega showed a lot of promise at its mid-1990s announcement, progress was
slow, and development was essentially dead by the time that one of the original
developers withdrew (taking with him a bunch of research students).

Before that distressing event, a separate thread of development had
started, to produce a program 
called Aleph, which merged the facilities of
[&epsilon;-TeX](FAQ-etex) into a stable Omega codebase and added other
extensions.  Aleph also proved an attractive platform for many people;
but its development, too, has dried up.

Some of the work from these projects has been incorporated into
[LuaTeX](#luatex).

### New Typesetting System (NTS)

The NTS project set out to produce an advanced replacement for TeX, to provide
a basis for developing such modifications: this "New Typesetting System"
would share Knuth's aims, but would implement the work in a modern way taking
account of the lessons learned with TeX. While a first demonstrator NTS did
appear, it wasn't practically useful, and the project seems no longer active.

In parallel with this work, the NTS developed a set of extensions that can be
used with a ("true") TeX system. Such a modified system is known as an
[&epsilon;-TeX](#&epsilon;-tex) system, and the concept has proved widely
successful.

