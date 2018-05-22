# How does hyphenation work in TeX?

Everyone knows what hyphenation is: we see it in most books we read,
and (if we're alert) will spot occasional ridiculous mis-hyphenation
(at one time, British newspapers were a fertile source).

Hyphenation styles are culturally-determined, and the same language
may be hyphenated differently in different countries&nbsp;&mdash; for example,
British and American styles of hyphenation of English are very
different.  As a result, a typesetting system that is not restricted
to a single language at a single locale needs to be able to change its
hyphenation rules from time to time.

TeX uses a pretty good system for hyphenation (originally designed
by Frank Liang&nbsp;&mdash; you may view his 
[Ph.D. thesis](http://tug.org/docs/liang/) online) and while
it's capable of missing ''sensible'' hyphenation points, it seldom
selects grossly wrong ones.  The
algorithm matches candidates for hyphenation against a set of
''hyphenation patterns''.  The candidates for hyphenation must be
sequences of letters (or other single characters that TeX may be
persuaded to think of as letters).  Non-letters interrupt hyphenation;
this applies to TeX's `\accent` primitive (as in 'syst&egrave;me')
just as much as the exclamation in'syst!eme'.

(Hyphenation takes place on the characters ''sent to the printer''.
The problem with `\accent` is avoided&nbsp;&mdash;in LaTeX&nbsp;&mdash; by the use
of the [`fontenc`](http://ctan.org/pkg/fontenc) package, as discussed in 
''[Accented words aren t hyphenated](./FAQ-hyphenaccents.html)''.)

Sets of hyphenation patterns are usually derived from analysis of
a list of valid hyphenations (the process of derivation, using a tool
called [`patgen`](http://ctan.org/pkg/patgen), is not ordinarily a sport to be played by
ordinary mortals).

The patterns for the languages a TeX system is going to deal with
may only be loaded when the system is installed.  To change the set of
hyphenation patterns recognised by a TeX-based or XeTeX system,
a [partial reinstallation](./FAQ-newlang.html) is necessary (note that 
[LuaTeX](./FAQ-luatex.html) relaxes this constraint).

TeX provides two ''user-level'' commands for control of
hyphenation: `\language` (which selects a hyphenation style), and
`\hyphenation` (which gives explicit instructions to the hyphenation
engine, overriding the effect of the patterns).

The ordinary LaTeX user need not worry about `\language`, since
it is very thoroughly managed by the [`babel`](http://ctan.org/pkg/babel) package; use of
`\hyphenation` is discussed in
  the context of
[hyphenation failure](./FAQ-nohyph.html).

