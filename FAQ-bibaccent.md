# Accents in bibliographies

BibTeX not only has a tendency (by default) to mess about with the
[case of letters in your bibliography](./FAQ-capbibtex.html),
also makes a hash of accent commands:
`ma``\&#x7e;``nana` comes out as ''ma
nana'' (!).  The solution is similar that of the letter case problem:
enclose the troublesome sequence in braces, as
`{}`\&#x7e;`\texttt{n}`, in this example.

