# Making labels from a counter

Suppose we have a LaTeX counter, which we've defined with
`\newcounter{foo}`.  We can increment the value of the counter
by `\addtocounter{foo}{1}`, but that's pretty clunky for an
operation that happens so often &hellip;&nbsp;so there's a command
`\stepcounter{foo}` that does this special case of
increasing-by-one.

There's an internal LaTeX variable, the ''current label'', that
remembers the last 'labellable' thing that LaTeX has processed.
You could (if you were to insist) set that value by the relevant
TeX command (having taken the necessary precautions to ensure that
the internal command worked)&nbsp;&mdash; but it's not necessary.  If, instead
of either of the stepping methods above, you say
`\refstepcounter{foo}`, the internal variable is set to the
new value, and (until something else comes along), `\label` will
refer to the counter.

