# PDFTeX and LuaTeX

Elsewhere in these FAQs, we learn that development of
[PDFTeX](./FAQ-whatpdftex.html) is ''in essence'' complete&nbsp;&mdash; no new
facilities are being developed at the time of writing.  The PDFTeX
team has announced that they have frozen PDFTeX's specification in
its current state (version 1.40.11), and that nothing but bug
corrections will be provided up to the time of the final release,
PDFTeX 1.50.0.  (The interpretation of the statement seems to allow
sensible changes that are beyond any reasonable definition of
_bug_&hellip;)

As PDFTeX development ran down,
development of a new system, LuaTeX was started.
[`Lua`](http://www.lua.org/) is a interpreter designed
to be incorporated into other applications.  LuaTeX consists of a
TeX-like engine with a `lua` interpreter 'embedded' in it;
the `lua` interpreter has access to many of the data
structures used for typesetting, so that the programmer may also
interpolate chunks of `lua` code into their (La)TeX macros,
or as 'call-backs' for use when the TeX-like engine does certain
operations.

This arrangement offers the prospect of a ''semi-soft'' typesetting
engine: it will have its basic behaviour, but the user gets to
redefine functionality if an idea occurs&nbsp;&mdash; there will be no need to
persuade the world first, and then find a willing developer to work on
the sources of of the distribution.

The [LuaTeX project](http://www.luatex.org/) is (with monetary
support from various sources) pursuing avenues that many of the other
current projects have in their sights, notably Unicode character
representations and support for OpenType fonts.  The intention is
to integrate the extensions pioneered by [Aleph](./FAQ-omegaleph.html).
Users may also care to view the 
[LuaTeX documentation page](http://www.luatex.org/documentation.html)
or the [LuaTeX WIKI](http://wiki.luatex.org)

TeX&nbsp;Live (2013) holds version 0.76.0 of LuaTeX.  This version
demonstrates the ''final functionality'', though the project
remains a &beta;-release.  Functional stability was first
declared for version 0.50.0, released near the end of December 2009.

CONTeXT 'Mark 4' can already make use of LuaTeX; much of its
code already appears in two forms&nbsp;&mdash; a TeX-based version
(`mkii`) and a `mkiv` version (new functionality
typically _only_ appears in `mkiv` form), which uses
LuaTeX extensions (including `lua` scripting).  LaTeX
packages that support its use are appearing (some of them providing
re-implementations of existing Context code).

LaTeX running over LuaTeX (commonly known as LuaLaTeX) is not
an ''official'' entity (yet), but useful packages are
appearing (i.e., the CTAN path `macros/luatex/latex` holds
several items).

