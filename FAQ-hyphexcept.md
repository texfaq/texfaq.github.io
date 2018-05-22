# Hyphenation exceptions

While TeX's hyphenation rules are good, they're not infallible: you
will occasionally find words TeX just gets _wrong_.  So for
example, TeX's default hyphenation rules (for American English) don't
know the word ''_manuscript_'', and since it's a long word you
may find you need to hyphenate it.  You _can_ ''write the
hyphenation out'' each time you use the word:
```latex
... man\-u\-script ...
```
Here, each of the `\-` commands is converted to a hyphenated break,
if (_and only if_) necessary.

That technique can rapidly become tedious: you'll probably only accept
it if there are no more than one or two wrongly-hyphenated words in
your document.  The alternative is to set up hyphenations in the
document preamble.  To do that, for the hyphenation above, you would
write:
```latex
\hyphenation{man-u-script}
```
and the hyphenation would be set for the whole document.  Barbara
Beeton publishes articles containing lists of these ''hyphenation
exceptions'', in _TUGboat_; the hyphenation 'man-u-script'
comes from one of those articles.

What if you have more than one language in your document?  Simple:
select the appropriate language, and do the same as above:
```latex
\usepackage[french]{babel}
\selectlanguage{french}
\hyphenation{re-cher-cher}
```
(nothing clever here: this is the ''correct'' hyphenation of the word,
in the current tables).  However, there's a problem here: just as
words with accent macros in them won't break, so an `\hyphenation`
commands with accent macros in its argument will produce an error:
```latex
\usepackage[french]{babel}
\selectlanguage{french}
\hyphenation{r\'e-f\'e-rence}
```
tells us that the hyphenation is ''improper'', and that it will be ''flushed''.
But, just as hyphenation of words is enabled by selecting an 8-bit
font encoding, so `\hyphenation` commands are rendered proper again
by selecting that same 8-bit font encoding.  For the hyphenation
patterns provided for 'legacy', the encoding is
[Cork](./FAQ-ECfonts.html), so the complete sequence is:
```latex
\usepackage[T1]{fontenc}
\usepackage[french]{babel}
\selectlanguage{french}
\hyphenation{r\'e-f\'e-rence}
```
The same sort of performance goes for any language for which 8-bit
fonts and corresponding hyphenation patterns are available.  Since you
have to select both the language and the font encoding to have your
document typeset correctly, it should not be a great imposition to do
the selections before setting up hyphenation exceptions.

Modern TeX variants (principally XeTeX and LuaTeX) use unicode,
internally, and distributions that offer them also offer
UTF-8-encoded patterns; since the hyphenation team do all the
work ''behind the scenes'', the use of Unicode hyphenation is
deceptively similar to what we are used to.

