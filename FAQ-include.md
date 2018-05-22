# What's going on in my `\include` commands?

The original LaTeX provided the `\include` command to address the
problem of long documents: with the relatively slow computers of the
time, the companion `\includeonly` facility was a boon.  With the
vast increase in computer speed, `\includeonly` is less valuable
(though it still has its place in some very large projects).
Nevertheless, the facility is retained in current LaTeX, and causes
some confusion to those who misunderstand it.

In order for `\includeonly` to work, `\include` makes a separate
`aux` file for each included file, and makes a 'checkpoint' of
important parameters (such as page, figure, table and footnote
numbers).  As a direct result, it _must_ clear the current page
both before and after the `\include` command.  (The requirement
derives from the difficulties of 
  [observing page numbers](./FAQ-wrongpn.html).)
What's more, this mechanism doesn't work if a `\include` command
appears in a file that was `\include`d itself: LaTeX diagnoses
this as an error.

So, we can now answer the two commonest questions about `\include`:
  

-  Why does LaTeX throw a page before and after `\include`
    commands?
  

    Answer: because it has to.  If you don't like it, replace the
    `\include` command with `\input`&nbsp;&mdash; you won't be able to use
    `\includeonly` any more, but you probably don't need it anyway, so
    don't worry.
  

-  Why can't I nest `\include`d files?&nbsp;&mdash; I always used to be
    able to under LaTeX 2.09.
  

    Answer: in fact, you couldn't, even under LaTeX 2.09, but the failure
    wasn't diagnosed.  However, since you were happy with the behaviour
    under LaTeX 2.09, replace the `\include` commands with `\input`
    commands (with `\clearpage` as appropriate).

