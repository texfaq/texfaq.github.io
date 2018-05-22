# Writing (text) files from TeX

TeX allows you to write to output files from within your document.
The facility is handy in many circumstances, but it is vital for
several of the things LaTeX (and indeed almost any higher-level
TeX-based macro package) does for you.

The basic uses of writing to an external file are ''obvious''&nbsp;&mdash;
remembering titles of sections for a table of contents, remembering
label names and corresponding section or figure numbers, all for a
later run of your document.  However, the ''non-obvious'' thing is
easy to forget: that page numbers, in TeX, are slippery beasts, and
have to be captured with some care.  The trick is that `\write`
operations are only executed as the page is sent to the DVI
or PDF file.  Thus, if you arrange that your page-number macro
(`\thepage`, in LaTeX) is not expanded until the page is
written, then the number written is correct, since that time is where
TeX guarantees the page number tallies with the page being sent
out.

Now, there are times when you want to write something straight away:
for example, to interact with the user.  TeX captures that
requirement, too, with the primitive command `\immediate`:
```latex
\immediate\write\terminal{I'm waiting...}
```
writes a ''computer-irritates-user'' message, to the terminal.

Which brings us to the reason for that `\terminal`.  TeX can
`\write` up to 16 streams simultaneously, and that argument to
`\write` says which is to be used.  Macro packages provide the
means of allocating streams for your use: Plain TeX provides a macro
`\newwrite` (used as `\newwrite``\streamname`, which sets
`\streamname` as the stream number).  In fact, `\terminal` (or
its equivalent) is the first output stream ever set up (in most macro
packages): it is never attached to a file, and if TeX is asked to
write to _any_ stream that isn't attached to a file it will send
the output to the terminal (and the log).

