# 'Multi-letter' initials in BibTeX

If your bibliographic style uses initials&nbsp;+ surname, you may encounter
a problem with some transcribed names (for example, Russian ones).
Consider the following example from the real world:
```latex
@article{epifanov1997,
   author = {Epifanov, S. Yu. and Vigasin, A. A.},
   title  = ...
}
```
Note that the ''Yu'' is the initial, not a complete name. However,
BibTeX's algorithms will leave you with a citation&nbsp;&mdash; 
slightly depending on the bibliographic style&nbsp;&mdash; that reads:
''S. Y. Epifanov and A. A. Vigasin, &hellip;''. instead of the intended
''S. Yu. Epifanov and A. A. Vigasin, &hellip;''.

One solution is to replace each affected initial by a command that 
prints the correct combination.  To keep your bibliography portable,
you need to add that command to your bibliography with the
`@preamble` directive:
```latex
@preamble{ {\providecommand{\BIBYu}{Yu} } }

@article{epifanov1997,
   author   = {Epifanov, S. {\BIBYu}. and Vigasin, A. A.},
   title    = ...
}
```
If you have many such commands, you may want to put them in a separate
file and `\input` that LaTeX file in a `@preamble`
directive.

An alternative is to make the transcription look like an accent, from
BibTeX's point of view.  For this we need a control sequence that
does nothing:
```latex
@article{epifanov1997,
   author   = {Epifanov, S. {\relax Yu}. and Vigasin, A. A.},
   title    = ...
}
```
Like the solution by generating extra commands, this involves tedious
extra typing; which of the two techniques is preferable for a given
bibliography will be determined by the names in it.  It should be
noted that a preamble that introduces lots of odd commands is usually
undesirable if the bibliography is a shared one.

''Compound'' initials (for single names made up of two or more words)
may be treated in the same way, so one can enter Forster's rather
complicated name as:
```latex
@article{forster2006,
  author   = {Forster, P.M. {\relax de F.} and Collins, M.},
  title    = ...
```
The same trick can be played if you're entering whole names:
```latex
...
  author   = {Epifanov, Sasha {\relax Yu}ri and
...
```
(though no guarantee, that either of those names is right, is
offered!)
However, if you're typing the names in the ''natural'' (Western) way,
with given names first, the trick:
```latex
...
  author   = {P.M. {\relax de F.} Forster and
...
```
doesn't work&nbsp;&mdash; ''de F. Forster'' is treated as a compound family
names.

