# Installation using MiKTeX package manager




Packages for use with MiKTeX are maintained very efficiently by the
project managers (new packages and updates on CTAN ordinarily
make their way to the MiKTeX package repository within a week).
Thus it makes sense for the MiKTeX user to take advantage of the
system rather than grinding through the steps of installation.


MiKTeX maintains a database of packages it ''knows about'',
together with (coded) installation instructions that enable it to
install the packages with minimal user intervention; you can update
the database over the internet.


If MiKTeX does know about a package you need installed, it's worth
using the system:
first, open the MiKTeX packages window: click on
  `Start`&rarr;
  `Programs`&rarr;
  `MiKTeX`&rarr;
  `MiKTeX Options`, and select the
  `Packages` tab.


On the tab, there is an Explorer-style display of packages.
Right-click on the root of the tree, `MiKTeX Packages`,
and select `Search`: enter the name of the package you're
interested in, and press the `Search` button.  If
MiKTeX knows about your package, it will open up the tree to show
you a tick box for your package: check that box.


If you prefer a command-line utility, there's `mpm`.  Open a
command shell, and type:
```latex
mpm --install=<package>
```
(which of course assumes you know the name by which MiKTeX refers to
your package).


