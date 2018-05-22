# There's a space added after my environment

You've written your own environment `env`, and it works
except that a space appears at the start of the first line of typeset
text after `\end{env}`.  This doesn't happen with similar
LaTeX-supplied environments.

You could impose the restriction that your users always put a
'[[[texttt]]]
LaTeX environments don't require that, either.

The LaTeX environments' ''secret'' is an internal flag which causes
the unwanted spaces to be ignored.  Fortunately, you don't have to use
the internal form: since 1996, LaTeX has had a user command
`\ignorespacesafterend`, which sets the internal flag.

