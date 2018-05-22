# How many words have you written?

One often has to submit a document (e.g., a paper or a dissertation)
under some sort of constraint about its size.  Sensible people set a
constraint in terms of numbers of pages, but there are some that
persist in limiting the numbers of words you type.

A simple solution to the requirement can be achieved following a
simple observation: the powers that be are unlikely to count all the
words of a document submitted to them.  Therefore, a statistical
method can be employed: find how many words there are on a full page;
find how many full pages there are in the document (allowing for
displays of various sorts, this number will probably not be an
integer); multiply the two.  However, if the document to be submitted
is to determine the success of the rest of one's life, it takes a
brave person to thumb their nose at authority quite so
comprehensively&hellip;

The simplest method is to strip out the (La)TeX markup, and to count
what's left.  On a  Unix-like system, this may be done using
`detex` and the built-in `wc`:
```latex
detex <filename> | wc -w
```
The technique is beguilingly simple, but it's not terribly accurate

The `latexcount` script does the same sort of job, in one
''step''; being a `perl` script, it is in principle rather
easily configured (see documentation inside the script).
Several [editors and shells](./FAQ-editors.html) offer something similar.

`TeXcount` goes a long way with heuristics for counting,
starting from a LaTeX file; the documentation is comprehensive, and
you may try the script on-line via the 
  [package home page](http://folk.uio.no/einarro/Comp/texwordcount.html).

However, even quite sophisticated stripping of (La)TeX markup can
never be entirely reliable: markup itself may contribute typeset
words, or even consume words that appear in the text.

The [`wordcount`](http://ctan.org/pkg/wordcount) package
contains a Bourne shell (i.e., typically Unix) script for running a
LaTeX file with a special piece of supporting TeX code, and then
counting word indications in the log file.  This is probably as
accurate automatic counting as you can get, if it works for you.

