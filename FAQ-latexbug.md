---
title: Reporting a LaTeX bug
category: misc
permalink: /FAQ-latexbug
date: 2018-05-23
---

The LaTeX team supports LaTeX, and will deal with
_bona fide_ bug reports.  Note that the LaTeX team does
_not_ deal with contributed packages&nbsp;&mdash; just the software that
is part of the LaTeX distribution itself: LaTeX and the
''required'' packages.
Furthermore, you need to be slightly
careful to produce a bug report that is usable by the team.  The steps
are:

1. Are you still using current LaTeX?  Maintenance is only
   available for sufficiently up-to-date versions of LaTeX

2. Has your bug already been reported?  Browse the current [LaTeX issues
   database](https://github.com/latex3/latex2e/issues) and the older
   [LaTeX GNATS
   database](https://www.latex-project.org/cgi-bin/ltxbugs2html?introduction=yes&state=open)
   to find any earlier instance of your bug.  In many cases, the database
   will list a work-around.

3. Prepare a [''minimum'' file](FAQ-minxampl) that exhibits the problem.
   Ideally, such a file should contain no contributed packages&nbsp;&mdash; the
   LaTeX team as a whole takes no responsibility for such packages (if
   they're supported at all, they're supported by their authors).  The
   ''minimum'' file should be self-sufficient: if a member of the team
   runs it in a clean directory, on a system with no contributed
   packages, it should replicate your problem. See the [LaTeX team
   guidelines](https://www.latex-project.org/bugs/#how-do-i-report-a-bug)
   for more advice.

4. Run your test file through LaTeX: the bug report should include the `.log`
   file that this process creates.

5. [Log an issue](https://github.com/latex3/latex2e/issues/new) in the GitHub
   tracker
