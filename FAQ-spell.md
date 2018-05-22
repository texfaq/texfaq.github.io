# Spelling checkers for work with TeX

'Traditional' approaches to the problem (of checking your spelling) were
designed to work with a plain text file; in our case, we have an (La)TeX
source.  For the user, this is a simple-to-understand way to do the
job; but for the spell-checker programmer, it requires heuristic (and
hence fallible) analysis of (La)TeX macros and so on.  The
alternative, of viewing the text _after_ (La)TeX has processed
the results, is covered below.

The user of an [shell/editor](./FAQ-editors.html) will usually find it
embeds a spelling checker.  For command-line use, there are several
choices, depending on the system you're using.

For Unix, `ispell` was long the program of choice; it is well
integrated with `emacs`, and deals with some TeX syntax.
However, it has more-or-less been replaced everywhere, by
`aspell`, which was designed as a successor, and certainly
performs better on most metrics; there remains some question as to its
performance with (La)TeX sources.  The most recent offering (which
is widely used in other open-source software projects) is
  [`Hunspell`](http://hunspell.sourceforge.net/).
`Hunspell` is available for other architectures, too; a web
search shows versions available for Windows, at least.

For the Macintosh, `Excalibur` has long been used; its
distribution comes with dictionaries for several languages.
`Hunspell` (see above) is actually part of OS X from version 10.6.

The VMS Pascal program `spell` makes special cases of
some important features of LaTeX syntax.

For MS-DOS, there are several programs.  `Amspell` can be
called from within an editor, and `jspell` is an extended
version of `ispell`.

An alternative approach takes (La)TeX output, and checks that.  A
straightforward approach is to produce PDF output, and process
it with `pdftotext`, using any plain text checker on the
result (the checkers listed above all work in this r&ocirc;le).  For this
to work reasonably well, the user should disable hyphenation before
making the PDF output.

The (experimental) LuaTeX/LaTeX package [`spelling`](http://ctan.org/pkg/spelling) goes
one step further: it uses `lua` code to extract words
_while typesetting is going on_, but before hyphenation is
applied.  Each word is looked up in a list of known bad spellings, and
the word highlighted if it appears there.  In parallel, a text file is
created, which can be processed by a 'normal' spelling checker to
produce a revised ''bad spelling'' list.  (The package documentation
shows the end result; it includes words such as 'spellling', which are
duly highlighted.)
  dictionaries (under subdirectory `dict/`) that you need.

