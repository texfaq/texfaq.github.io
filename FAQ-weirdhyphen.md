# Weird hyphenation of words

If your words are being h-yphenated, like this, with jus-t single
letters at the 
beginning or the end of the word, you may have a version mismatch
problem. TeX's hyphenation system changed between version&nbsp;2.9
and&nbsp;3.0, and macros written for use with version&nbsp;2.9 can have this
effect with a version&nbsp;3.0 system.  If you are using Plain TeX, make
sure your `plain.tex` file has a version number which is at
least&nbsp;3.0, and rebuild your format.  If you are using LaTeX 2.09 your
best plan is to upgrade to LaTeX 2e.  If for some reason you can't,
the last version of LaTeX 2.09 (released on 25 March 1992) is still
available (for the time being at least) and ought to solve this
problem.

If you're using LaTeX 2e, the problem probably arises from your
`hyphen.cfg` file, which has to be created if you're using a
multi-lingual version.

A further source of oddity can derive from the 1995 release of
[Cork-encoded fonts](./FAQ-ECfonts.html),
which introduced an alternative hyphen character.  The LaTeX 2e
configuration files in the font release specified use of the
alternative hyphen, and this could produce odd effects with words
containing an explicit hyphen.  The font configuration files in the
December 1995 release of LaTeX 2e do _not_ use the alternative
hyphen character, and therefore removed this source of problems; the
solution, again, is to upgrade your LaTeX.

