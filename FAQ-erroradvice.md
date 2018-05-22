# How to approach errors

Since TeX is a macroprocessor, its error messages are often
difficult to understand; this is a (seemingly invariant) property of
macroprocessors.  Knuth makes light of the problem in the TeXbook,
suggesting that you acquire the sleuthing skills of a latter-day
Sherlock Holmes; while this approach has a certain romantic charm to
it, it's not good for the 'production' user of (La)TeX.  This
answer (derived, in part, from an article by Sebastian Rahtz in
TUGboat 16(4)) offers some general guidance in dealing with TeX
error reports, and other answers in this section deal with common (but
perplexing) errors that you may encounter.  There's a long list of
''hints'' in Sebastian's article, including the following:
  

-  Look at TeX errors; those messages may seem cryptic at first,
    but they often contain a straightforward clue to the problem.  See
    [the structure of errors](./FAQ-errstruct.html) for further
    details. 
-  Read the `log` file; it contains hints to things you may
    not understand, often things that have not even presented as error
    messages.
-  Be aware of the amount of context that TeX gives you.  The
    error messages gives you some bits of TeX code (or of the
    document itself), that show where the error ''actually happened'';
    it's possible to control how much of this 'context' TeX actually
    gives you.  LaTeX (nowadays) instructs TeX only to give you
    one line of context, but you may tell it otherwise by saying
    ```latex
    \setcounter{errorcontextlines}{999}
    ```
    in the preamble of your document.  (If you're not a confident macro
    programmer, don't be ashamed of cutting that 999 down a bit; some
    errors will go on and _on_, and spotting the differences
    between those lines can be a significant challenge.)
-  As a last resort, tracing can be a useful tool; reading a full
    (La)TeX trace takes a strong constitution, but once you know how,
    the trace can lead you quickly to the source of a problem.  You need
    to have read the TeXbook (see
    [books about TeX](./FAQ-tex-books.html)) in some detail, fully
    to understand the trace.
  

    The command `\tracingall` sets up maximum tracing; it also sets
    the output to come to the interactive terminal, which is somewhat of
    a mixed blessing (since the output tends to be so vast&nbsp;&mdash; all but
    the simplest traces are best examined in a text editor after the event).
  

    The LaTeX [`trace`](http://ctan.org/pkg/trace) package (first distributed with the
    2001 release of LaTeX) provides more manageable tracing.  Its
    `\traceon` command gives you what `\tracingall` offers, but
    suppresses tracing around some of the truly verbose parts of
    LaTeX itself.  The package also provides a `\traceoff`
    command (there's no ''off'' command for `\tracingall`), and a
    package option (`logonly`) allows you to suppress output to the
    terminal.

The best advice to those faced with TeX errors is not to panic:
most of the common errors are plain to the eye when you go back to the
source line that TeX tells you of.  If that approach doesn't work,
the remaining answers in this section deal with some of the odder
error messages you may encounter.  You should not ordinarily need to
appeal to the [wider public](./FAQ-gethelp.html)
for assistance, but if you do, be sure to
report full backtraces (see `errorcontextlines` above) and so on.

