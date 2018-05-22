# Support package [`expl3`](http://ctan.org/pkg/expl3) too old




Some (rather modern) packages are written using the 
[LaTeX3 programming environment](./FAQ-LaTeX3.html).  Since LaTeX3
is still under development, the author cannot reliably guess what
version of LaTeX3 the user has installed, and whether that version
is adequate for the current package.  Thus the package's code often
checks the user's installation, and complains if it's older than the
author's installation at time of testing.  The error message is:
```latex
! Support package expl3 too old.
```
The ''additional help'' tells you the solution: update your LaTeX3
installation.  The relevant things are [`l3kernel`](http://ctan.org/pkg/l3kernel) (the
programming environment, which contains the [`expl3`](http://ctan.org/pkg/expl3) mentioned
in the error message) and [`l3packages`](http://ctan.org/pkg/l3packages) (LaTeX3 constructs
such as command definitions).


While this sounds a drastic remedy, it is no longer the major
undertaking it once was&nbsp;&mdash; if you are using a modern TeX
distribution that you installed yourself, ask it to update over the
internet; if that choice is not available, install from the
`tds.zip` files available for both packages on CTAN.






