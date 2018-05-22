# Documentation of packages

These FAQs regularly suggest packages that will ''solve''
particular problems.  In some cases, the answer provides a recipe for
the job.  In other cases, or when the solution needs elaborating, how
is the poor user to find out what to do?

If you're lucky, the package you need is already in your installation.
If you're particularly lucky, you're using a distribution that gives
access to package documentation and the documentation is available in
a form that can easily be shown.

On TeX&nbsp;Live-based distributions, help should be available from the
`texdoc` command, as in:
```latex
texdoc footmisc
```
which opens a window showing documentation of the [`footmisc`](http://ctan.org/pkg/footmisc)
package.  (The window is tailored to the file type, in the way normal
for the system.)

If `texdoc` can't find any documentation, it may launch a Web
browser to look at the package's entry in the CTAN catalogue.
The catalogue has an entry for package documentation, and most authors
respond to the CTAN team's request for documentation of
packages, you will more often than not find documentation that way.

On MiKTeX systems, the same function is provided by the
`mthelp`.

Note that the site [texdoc.net] provides access to the
documentation you _would_ have if you had a _full_
installation of TeX&nbsp;Live; on the site you can simply ask for a
package (as you would ask `texdoc`, or you can use the site's
index of documentation to find what you want.  (This is helpful for
some of us: many people don't have a full (La)TeX installation on
their mobile phone&nbsp;&hellip; yet.)

If your luck (as defined above) doesn't hold out, you've got to find
documentation by other means.  That is, you have to find the
documentation for yourself.  The rest of this answer offers a range of
possible techniques.

The commonest form of documentation of LaTeX add-ons is within the
`dtx` file in which the code is distributed (see
[documented LaTeX sources](./FAQ-dtx.html)).  Such files
are supposedly processable by LaTeX itself, but there are
occasional hiccups on the way to readable documentation.  Common
problems are that the package itself is needed to process its own
documentation (so must be unpacked before processing), and that the
`dtx` file will _not_ in fact process with LaTeX.  In the
latter case, the `ins` file will usually produce a
`drv` (or similarly-named) file, which you process with
LaTeX instead.  (Sometimes the package author even thinks to
mention this wrinkle in a package `README` file.)

Another common form is the separate documentation file; particularly
if a package is ''conceptually large'' (and therefore needs a lot of
documentation), the documentation would prove a cumbersome extension
to the `dtx` file.  Examples of such cases are the [`memoir`](http://ctan.org/pkg/memoir)
class, the [`KOMA-script`](http://ctan.org/pkg/KOMA-script) bundle
(whose developers take the trouble to produce detailed documentation
in both German and English), the [`pgf`](http://ctan.org/pkg/pgf) documentation (which
would make a substantial book in its own right)
and the [`fancyhdr`](http://ctan.org/pkg/fancyhdr) package (whose
documentation derives from a definitive tutorial in a mathematical
journal).  Even if the documentation is not separately identified in a
`README` file, it should not be too difficult to recognise its
existence.

Documentation within the package itself is the third common form.
Such documentation ordinarily appears in comments at the head of the
file, though at least one eminent author regularly places it after the
`\endinput` command in the package.  (This is desirable, since
`\endinput` is a 'logical' end-of-file, and (La)TeX doesn't read
beyond it: thus such documentation does not 'cost' any package loading time.)

The above suggestions cover most possible ways of finding
documentation.  If, despite your best efforts, you can't find
it in any of the above places, there's the awful possibility that the
author didn't bother to document his package (on the ''if it was hard
to write, it should be hard to use'' philosophy).  Most ordinary
mortals will seek support from some more experienced user at this
stage, though it _is_ possible to proceed in the way that the original
author apparently expected&hellip;by reading his code.

