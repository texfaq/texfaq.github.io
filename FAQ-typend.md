# ''Please type a command or say `\end`

Sometimes, when you are running (La)TeX, it will abruptly stop and
present you with a prompt (by default, just a `*` character).  Many
people (including this author) will reflexively hit the 'return'
key, pretty much immediately, and of course this is no help at all&nbsp;&mdash;
TeX just says:
```latex
(Please type a command or say `\end')
```
and prompts you again.

What's happened is that your (La)TeX file has finished prematurely,
and TeX has fallen back to a supposed including file, from the
terminal.  This could have happened simply because you've omitted
the `\bye` (Plain TeX), `\end{document}` (LaTeX), or
whatever.  Other common errors are failure to close the braces round a
command's argument, or (in LaTeX) failure to close a verbatim
environment: in such cases you've already read and accepted an
error message about encountering end of file while scanning something.

If the error is indeed because you've forgotten to end your document,
you can insert the missing text: if you're running Plain TeX, the
advice, to ''say `\end` is good enough: it will kill the run; if
you're running LaTeX, the argument will be necessary:
`\end{document}`.  

However, as often as not this isn't the problem, and (short of
debugging the source of the document before ending) brute force is
probably necessary.  Excessive force (killing the job that's
running TeX) is to be avoided: there may well be evidence in the
`log` file that will be useful in determining what the
problem is&nbsp;&mdash; so the aim is to persuade TeX to shut itself down
and hence flush all log output to file.

If you can persuade TeX to read it, an end-of-file indication
(control-`D` under Unix, control-`Z` under Windows) will provoke
TeX to report an error and exit immediately.  Otherwise you should
attempt to provoke an error dialogue, from which you can exit (using
the `x` 'command').  An accessible error could well be inserting an
illegal character: what it is will depend on what macros you are
running.  If you can't make that work, try a silly command name or
two.

