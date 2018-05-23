---
section: Bibliographies and citations
subsection: Creating bibliographies
revised: 2014-06-10
---
# Accents in bibliographies

BibTeX not only has a tendency (by default) to mess about with the
[case of letters in your bibliography](FAQ-capbibtex.md),
also makes a hash of accent commands:
`ma\~nana` comes out as ''ma nana'' (!).  The solution is similar that of the letter case problem:
enclose the troublesome sequence in braces, as
`{\~n}`, in this example.

