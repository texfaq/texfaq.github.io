# Using Plain or primitive commands in LaTeX

It's well-known that LaTeX commands tend to be more complex, and to
run more slowly than, any Plain TeX (or primitive) command that they
replace.  There is therefore great temptation not to use LaTeX
commands when macro programming.  Nevertheless, the general rule is
that you should use LaTeX commands, if there are seeming
equivalents.  The exception is when you are sure you know the
differences between the two commands and you know that you need the
Plain TeX version.  So, for example, use `\mbox` in place of `\hbox`
unless you know that the extras that LaTeX provides in `\mbox`
would cause trouble in your application.  Similarly, use
`\newcommand` (or one of its relatives) unless you need one of the
constructs that cannot be achieved without the use of `\def` (or friends).

As a general rule, any LaTeX text command will start a new
paragraph if necessary; this isn't the case with Plain TeX
commands, a fact which has a potential to confuse.

The commands `\smallskip`, `\medskip` and `\bigskip` exist both
in Plain TeX and LaTeX, but behave slightly differently: in
Plain TeX they terminate the current paragraph, but in LaTeX they 
don't.  The command `\line` is part of picture mode in LaTeX,
whereas it's defined as `\hbox`` to ``\hsize` in
Plain TeX. (There's no equivalent for users of the Plain TeX command in
LaTeX: an equivalent appears as the internal command `@line`).

Maths setting shows a case where the LaTeX version _is_
essentially equivalent to the TeX primitive commands: the LaTeX
`\(`` ... ``\)` does essentially no different to the
primitive `$ ... $`; except for checking that you're not
attempting to open a maths environment when you're already in one, or 
attempting to close one when you're not.
However, `\[`` ... ``\]` has a more significant
difference from `$$ ... $$`: the primitive version, used
in LaTeX, can miss the effect of the class option `fleqn`.

Font handling is, of course, wildly different in Plain TeX and
LaTeX.  Plain TeX's font loading command
(`\font``\foo=`&lsaquo;_fontname_&rsaquo;) and its LaTeX equivalent
(`\newfont`) should be avoided wherever possible.  They are only
safe in the most trivial contexts, and are potential sources of great
confusion in many circumstances.   Further discussion of this issue
may be found in ''[What's wrong with `\newfont`?](./FAQ-newfont*.html)''.

