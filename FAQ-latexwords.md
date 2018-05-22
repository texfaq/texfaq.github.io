# Changing the words [`babel`](http://ctan.org/pkg/babel) uses

LaTeX uses symbolic names for many of the automatically-generated
text it produces (special-purpose section headings, captions, etc.).
As noted in [''LaTeX fixed names''](./FAQ-fixnam.html) (which
includes a list of the names themselves),
this enables the user to change the
names used by the standard classes, which is particularly useful if
the document is being prepared in some language other than LaTeX's
default English.  So, for example, a Danish author may wish that her
table of contents was called ''Indholdsfortegnelse'', and so 
would expect to place a command
```latex
\renewcommand{\contentsname}%
    {Indholdsfortegnelse}
```
in the preamble of her document.

However, it's natural for a user of a non-English language to use
[`babel`](http://ctan.org/pkg/babel), because it offers many conveniences and typesetting
niceties for those preparing documents in those languages.  In
particular, when [`babel`](http://ctan.org/pkg/babel) is selecting a new language, it
ensures that LaTeX's symbolic names are translated appropriately
for the language in question.  Unfortunately, [`babel`](http://ctan.org/pkg/babel)'s choice
of names isn't always to everyone's choice, and there is still a need
for a mechanism to replace the 'standard' names.

Whenever a new language is selected, [`babel`](http://ctan.org/pkg/babel) resets all the
names to the settings for that language.  In particular,
[`babel`](http://ctan.org/pkg/babel) selects the document's main language when
`\begin{document}` is executed, which immediately destroys
any changes to these symbolic names made in the prologue of a document
that uses [`babel`](http://ctan.org/pkg/babel). 

Therefore, babel defines a command to enable users to change the
definitions of the symbolic names, on a per-language basis:
`\addto``\captions``&lsaquo;_language_&rsaquo;` is the thing
(`&lsaquo;_language_&rsaquo;` being the language option you gave to
[`babel`](http://ctan.org/pkg/babel) in the first place).  For example:
```latex
\addto\captionsdanish{%
  \renewcommand{\contentsname}%
    {Indholdsfortegnelse}%
}
```

