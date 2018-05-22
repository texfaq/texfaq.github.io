# ''Rerun'' messages won't go away

The LaTeX message ''Rerun to get crossreferences right'' is
supposed to warn the user that the job needs to be processed again,
since labels seem to have changed since the previous run.  (LaTeX
compares the labels it has created this time round with what it found
from the previous run when it started; it does this comparison at
`\end{document}`.)

Sometimes, the message won't go away: however often you reprocess your
document, LaTeX still tells you that ''Label(s) may have
changed''.  This can sometimes be caused by a broken package: both
[`footmisc`](http://ctan.org/pkg/footmisc) (with the `perpage` option) and [`hyperref`](http://ctan.org/pkg/hyperref)
have been known to give trouble, in the past: if you are using either,
check you have the latest version, and upgrade if possible.

However, there _is_ a rare occasion when this error can happen
as a result of pathological structure of the document itself.  Suppose
you have pages numbered in roman, and you add a reference to a label
on page ''ix'' (9).  The presence of the reference pushes the thing
referred to onto page ''x'' (10), but since that's a shorter reference
the label moves back to page ''ix'' at the next run.  Such a sequence
can obviously not terminate.

The only solution to this problem is to make a small change to your
document (something as small as adding or deleting a comma will often
be enough).

