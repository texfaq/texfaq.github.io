# TeX-friendly editors and shells

There are good TeX-writing environments and editors for most
operating systems; some are described below, but this is only a
personal selection:

- Unix The commonest choices are `[X]Emacs` or
  `vim`, though several others are available.

  [GNU&nbsp;`emacs`](http://www.gnu.org/software/emacs/emacs.html)
  and [`XEmacs`](http://www.xemacs.org/) are supported
  by the AUC-TeX
  bundle (available from CTAN).  AUC-TeX provides menu
  items and control sequences for common constructs, checks syntax,
  lays out markup nicely, lets you call TeX and drivers from
  within the editor, and everything else like this that you can think
  of.  Complex, but very powerful.

  [`Vim`](http://vim.sourceforge.net) is also highly
  configurable (also available for Windows and Macintosh systems).
  Many plugins are available to support the needs of the (La)TeX user,
  including syntax highlighting, calling TeX programs,
  auto-insertion and -completion of common (La)TeX structures, and
  browsing LaTeX help.  The scripts `auctex.vim` and
  `bibtex.vim` seem to be the most common recommendations.

  The editor [`NEdit`](http://nedit.org/) is also free
  and programmable, and is available for Unix systems.  An
  AUC-TeX-alike set of extensions for `NEdit` is available
  from CTAN.

  `LaTeX4Jed` provides much enhanced LaTeX support for the
  [`jed`](http://www.jedsoft.org/jed/) editor.
  `LaTeX4Jed` is similar to AUC-TeX: menus,
  shortcuts, templates, syntax highlighting, document outline,
  integrated debugging, symbol completion, full integration with
  external programs, and more. It was designed with both the beginner
  and the advanced LaTeX user in mind.

  The `Kile` editor that is provided with the KDE
  window manager provides GUI ''shell-like'' facilities, in a
  similar way to the widely-praised `Winedt` (see below);
  details (and downloads) are available from the project's
  [home on SourceForge](http://kile.sourceforge.net/).

  TUG is sponsoring the development of a cross-platform editor
  and shell, modelled on the excellent TeXshop for the Macintosh.
  The result,
  [TeXworks](http://www.tug.org/texworks/), is recommended: if
  you're looking for a
  (La)TeX development environment, it may be for you.  (It is
  distributed with both TeX&nbsp;Live and MiKTeX.)

  A possible alternative is
  [TeXstudio](http://texstudio.sourceforge.net/)
- Windows-32`TeXnicCenter` is a (free)
  TeX-oriented development system, uniting a powerful platform for
  executing (La)TeX and friends with a configurable editor.

  TeXworks (see above) is also available for Windows systems.

  `Winedt`, a shareware package, is also highly spoken of.
  It too provides a shell for the use of TeX and related programs,
  as well as a powerful and well-configured editor.  The editor can
  generate its output in UTF-8 (to some extent), which is
  useful when working with [XeTeX](./FAQ-xetex.html) (and other
  ''next-generation'' (La)TeX applications).

  Both `emacs` and `vim` are available in versions
  for Windows systems.
- Macintosh For Mac OS/X users, the free tool of choice appears to be
  [TeXshop](http://pages.uoregon.edu/koch/texshop/index.html), which
  combines an editor and a shell with a coherent philosophy of dealing
  with (La)TeX in the OS&nbsp;X environment.  TeXShop is distributed as
  part of the MacTeX system, and will therefore be available out of
  the box on machines on which MacTeX has been installed.

  `Vim` is also available for use on Macintosh systems.

  The commercial Textures provides an excellent integrated Macintosh
  environment with its own editor.  More powerful still (as an editor)
  is the shareware `Alpha` which is extensible enough to let
  you perform almost any TeX-related job. It also works well with
  OzTeX.  From release 2.2.0 (at least), Textures works under Mac OS/X.
- OS/2 `epmtex` offers an OS/2-specific shell.

Atari, Amiga and NeXT users also have nice
environments. LaTeX users looking for `make`-like
facilities should review the answer on
[Makefiles for LaTeX documents](./FAQ-make.html).

While many (La)TeX-oriented editors can support work on BibTeX
files, there are many systems that provide specific ''database-like''
access to your BibTeX files&nbsp;&mdash;
  see ''[creating a bibliography file](./FAQ-buildbib.html)''.

