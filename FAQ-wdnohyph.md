# Preventing hyphenation of a particular word

It's quite possible for (_any_) hyphenation of a particular word
to seem ''completely wrong'', so that you want to prevent it being
hyphenated.

If the word occurs in just one place, put it in a box:
```latex
\mbox{oddword}
```
(Plain TeX users should use `\hbox`, and take care at the start
of paragraphs.)  However, boxing the word is not really advisable
unless you are sure it only occurs once.

If the word occurs commonly, the best choice is to assert an
hyphenation exception for it:
```latex
\hyphenation{oddword}
```
This hyphenation exception (with no break points) will be used in
preference to what TeX's hyphenation algorithm may come up with.

In a multilingual document, repeat the exception specification for
each language the word may appear in.  So:
```latex
\usepackage[french,english]{babel}
\selectlanguage{english}
\hyphenation{oddword}
\selectlanguage{french}
\hyphenation{oddword}
```
(note that [`babel`](http://ctan.org/pkg/babel) will select the default language for the
document&nbsp;&mdash; English, in this case&nbsp;&mdash; at `\begin{document}`.)

A particular instance of this requirement is avoiding the hyphenation
of acronyms; a general rule for those that concoct acronyms seems to
be to make the capital-letter sequence read as near as is possible
like a ''real'' word, but hyphenating an acronym often looks silly.
The TeX control `\uchyph` is designed for suppressing such
behaviour:
```latex
\uchyph=0
```
will stop hyphenation of upper-case words.  (Note that Plain TeX
syntax is needed here: there's no LaTeX alternative for setting
this value.)

