# Reporting a LaTeX bug

The LaTeX team supports LaTeX, and will deal with
_bona fide_ bug reports.  Note that the LaTeX team does
_not_ deal with contributed packages&nbsp;&mdash; just the software that
is part of the LaTeX distribution itself: LaTeX and the
''required'' packages.
Furthermore, you need to be slightly
careful to produce a bug report that is usable by the team.  The steps
are:

*1.* Are you still using current LaTeX?  Maintenance is only
available for sufficiently up-to-date versions of LaTeX&nbsp;&mdash; if your
LaTeX is more than two versions out of date, the bug reporting
mechanisms may reject your report.

*2.* Has your bug already been reported?  Browse the
[LaTeX bugs database](http://www.latex-project.org/cgi-bin/ltxbugs2html?introduction=yes),
to find any earlier instance of your bug.  In many cases, the database
will list a work-around.

*3.* Prepare a 
[''minimum'' file](./FAQ-minxampl.html) that exhibits the problem.
Ideally, such a file should contain no contributed packages&nbsp;&mdash; the
LaTeX team as a whole takes no responsibility for such packages (if
they're supported at all, they're supported by their authors).  The
''minimum'' file should be self-sufficient: if a member of the team
runs it in a clean directory, on a system with no contributed
packages, it should replicate your problem.

*4.* Run your file through LaTeX: the bug
system needs the `log` file that this process creates.

*5.* Connect to the 
[latex bugs processing web page](http://www.latex-project.org/bugs-upload.html)
and enter details of your bug&nbsp;&mdash; category, summary and full
description, and the two important files (source and log file).

The personal details are _not_ optional: the members of the
LaTeX team may need to contact to discuss the bug with you, or to
advise you of a work-around.  Your details will not appear in the
public view of the database.

