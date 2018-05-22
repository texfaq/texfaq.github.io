# `\end` occurred inside a group

The actual error we observe is:

<code class="verb">&#x5c;end occurred inside a group at level &gt;</code>`_n_``>)`

and it tells us that something we started in the document never got
finished before we ended the document itself.  The things involved
('groups') are what TeX uses for restricting the scope of things:
you see them, for example, in the ''traditional'' font selection
commands: <code class="verb">{&#x5c;it stuff&#x7d;</code>&nbsp;&mdash; if the closing brace is left off such a
construct, the effect of `\it` will last to the end of the document,
and you'll get the diagnostic.

TeX itself doesn't tell you where your problem is, but you can
often spot it by looking at the typeset output in a previewer.
Otherwise, you can usually find mismatched braces using an intelligent
editor (at least `emacs` and `winedt` offer this facility).
However, groups are not _only_ created by matching
`{} with[[[texttt]]]}`:
other grouping commands are discussed elsewhere in these FAQs,
and are also a potential source of unclosed group.

`\begin{&lsaquo;_environment_&rsaquo;}` encloses the environment's body
in a group, and establishes its own diagnostic mechanism.  If you end
the document before closing some other environment, you get the
'usual' LaTeX diagnostic
```latex
! LaTeX Error: \begin{blah} on input line 6 ended by \end{document}.
```
which (though it doesn't tell you which _file_ the
`\begin{blah}` was in) is usually enough to locate the
immediate problem.  If you press on past the LaTeX error, you get
one or more repetitions of the ''occurred inside a group'' message
before LaTeX finally exits.  The [`checkend`](http://ctan.org/pkg/checkend) package
recognises other unclosed `\begin{blob}` commands, and
generates an ''ended by'' error message for each one, rather than
producing the ''occurred inside a group'' message, which is sometimes
useful (if you remember to load the package).

In the absence of such information from LaTeX, you need to use
''traditional'' binary search to find the offending group.  Separate
the preamble from the body of your file, and process each half on its
own with the preamble; this tells you which half of the file is at
fault.  Divide again and repeat.  The process needs to be conducted
with care (it's obviously possible to split a correctly-written group
by chopping in the wrong place), but it will usually find the problem
fairly quickly.

&epsilon;-TeX (and e-LaTeX&nbsp;&mdash; LaTeX run on &epsilon;-TeX) gives you
further diagnostics after the traditional infuriating TeX one&nbsp;&mdash; it
actually keeps the information in a similar way to LaTeX:
```latex
(\end occurred inside a group at level 3)

### semi simple group (level 3) entered at line 6 (\begingroup)
### simple group (level 2) entered at line 5 ({)
### simple group (level 1) entered at line 4 ({)
### bottom level
```
The diagnostic not only tells us where the group started, but also the
_way_ it started: `\begingroup` or `{` (which is an alias of
`\bgroup`, and the two are not  distinguishable at the TeX-engine
level).

