# BibTeX sorting and name prefixes

BibTeX recognises a bewildering array of name prefixes (mostly
those deriving from European language names); it ignores the prefixes
when sorting the bibliography&nbsp;&mdash; you want ''Ludwig van Beethoven''
sorted under ''Beethoven'', not under ''van''.  (Lamport made a witty
deliberate mistake with Beethoven's name, in the first edition of his
LaTeX manual.)

However, a recurring issue is the desire to quote Lord Rayleigh's
publications (''Lord'' isn't an acceptable prefix), or names from
languages that weren't considered when BibTeX was designed such as
''al-Wakil'' (transcribed from the Arabic).  What's needed is a
separate ''sort key'', but BibTeX only allows such a thing in
citations of items that have no author or editor.

The solution is to embed the sort key in the author's name, but to
prevent it from being typeset.  Patashnik recommends a command
`\noopsort` (no-output-sortkey), which is defined and used as
follows:
```latex
@PREAMBLE{ {\providecommand{\noopsort}[1]{}} }
...
@ARTICLE{Rayleigh1,
AUTHOR = "{\noopsort{Rayleigh}}{Lord Rayleigh}",
...
}
```
Note that this `\noopsort` applies to the last name in this kind of
construct, so an author with an Arabic name might be rendered:
```latex
...
AUTHOR = "Ali {\noopsort{Hadiidii}}{al-Hadiidii}",
...
```
A further use might deal with word order games, as in the famous
Vietnamese name:
```latex
...
AUTHOR = "\noopsort{Thanh Han The}{Han The Thanh}",
...
```
though that author seems well-acquainted with Western confusion about
the significance of the parts of his name (even to the extent of
missing out the accentuation, as above&hellip;).

