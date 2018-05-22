# Generating package documentation




We are faced with a range of ''normal'' provision, as well as several
oddities.  One should note that documentation of many packages is
available on CTAN, without the need of any further effort by
the user&nbsp;&mdash; such documentation can usually be browsed _in situ_.


However, if you find a package that does not offer documentation on
the archive, or if you need the documentation in some other format
than the archive offers, you can usually generate the documentation
yourself from what you download from the archive.


The standard mechanism, for LaTeX packages, is simply to run
LaTeX on the `package.dtx` file, as you would any ordinary
LaTeX file (i.e., repeatedly until the warnings go away).


A variant is that the unpacking process provides a file
`package.drv`; if such a thing appears, process it in preference
to the `package.dtx` (it seems that when the documented LaTeX
source mechanism was first discussed, the `.drv` mechanism was
suggested, but it's not widely used nowadays).


Sometimes, the LaTeX run will complain that it can't find
`package.ind` (the code line index) and/or `package.gls`
(the list of change records, not as you might imagine, a glossary).
Both types of file are processed with special `makeindex`
style files; appropriate commands are:
```latex
makeindex -s gind package
makeindex -s gglo -o package.gls package.glo
```
This author finds that the second (the change record) is generally of
limited utility when reading package documentation; it is, however,
valuable if you're part of the package development team.  If you don't
feel you need it, just leave out that step


Another common (and reasonable) trick performed by package authors is
to provide a separate file `package-doc.tex` or even simply
`manual.tex`; if the file `package.dtx` doesn't help, simply
look around for such alternatives.  The files are treated in the same
way as any ''ordinary'' LaTeX file.


