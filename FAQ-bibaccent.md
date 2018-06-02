---
title: Accents in bibliographies
category: bibliographies
permalink: /FAQ-bibaccent
date: 2014-06-10
---

BibTeX not only has a tendency (by default) to mess about with the
[case of letters in your bibliography](FAQ-capbibtex),
also makes a hash of accent commands:
`ma\~nana` comes out as ''ma nana'' (!).  The solution is similar that of the letter case problem:
enclose the troublesome sequence in braces, as
`{\~n}`, in this example.

