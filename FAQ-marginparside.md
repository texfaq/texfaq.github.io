# Getting `\marginpar` on the right side

In an ideal world, marginal notes would be in ''analogous'' places on
every page: notes on an even-side page would be in the left margin,
while those on an odd-side page would be in the right margin.  A
moment's thought shows that a marginal note on the left needs to be
typeset differently from a marginal note on the right.  The LaTeX
`\marginpar` command therefore takes two arguments in a
`twoside` documents: 
`\marginpar[left text]{right text}`.  LaTeX uses the
''obvious'' test to
get the `\marginpar`s in the correct margin, but a booby-trap arises
because TeX runs its page maker asynchronously.  If a
`\marginpar` is processed while page n is being built, but
doesn't get used until page n+1, then the `\marginpar` will turn
up on the wrong side of the page.  This is an instance of a general
problem: see
''[finding if you're on an odd or an even page](./FAQ-oddpage.html)''.

The solution to the problem is for LaTeX to 'remember' which side
of the page each `\marginpar` _should_ be on.  The
[`mparhack`](http://ctan.org/pkg/mparhack) package does this, using label-like marks stored in
the `aux` file; the [`memoir`](http://ctan.org/pkg/memoir) class does likewise.

