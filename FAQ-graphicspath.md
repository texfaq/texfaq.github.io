# Importing graphics from ''somewhere else''

By default, graphics commands like `\includegraphics` look
''wherever TeX files are found'' for the graphic file they're being
asked to use.  This can reduce your flexibility if you choose to hold
your graphics files in a common directory, away from your (La)TeX
sources.

The simplest solution is to patch TeX's path, by changing the
default path.  On most systems, the default path is taken from the
environment variable `TEXINPUTS`, if it's present; you can adapt that
to take in the path it already has, by setting the variable to
```latex
TEXINPUTS=.:<graphics path(s)>:
```
on a Unix system; on a Windows system the separator will be `;`
rather than `:`.  The `.` is there to ensure
that the current directory is searched first; the trailing
`:` says ''patch in the value of `TEXINPUTS` from
your configuration file, here''.

This method has the merit of efficiency ((La)TeX does _all_ of
the searches, which is quick), but it's always clumsy and may prove
inconvenient to use in Windows setups (at least).

The alternative is to use the [`graphics`](http://ctan.org/pkg/graphics) package command
`\graphicspath`; this command is of course also available to users
of the [`graphicx`](http://ctan.org/pkg/graphicx) and the [`epsfig`](http://ctan.org/pkg/epsfig) packages.  The
syntax of `\graphicspath`s one argument is slightly odd: it's a
sequence of paths (typically relative paths), each of which is
enclosed in braces.  A slightly odd example (slightly modified from one
given in the [`graphics`](http://ctan.org/pkg/graphics) bundle documentation) is:
```latex
\graphicspath{{eps/}{png/}}
```
which will search for graphics files in subdirectories `eps` and
`png` of the directory in which LaTeX is running.  (Note that
the trailing `/` _is_ required.)

(Note that some (La)TeX systems will only allow you to use files in
the current directory and its sub-directories, for security reasons.
However, `\graphicspath` imposes no such restriction: as far as
_it_ is concerned, you can access files anywhere.)

Be aware that `\graphicspath` does not affect the operations of
graphics macros other than those from the graphics bundle&nbsp;&mdash; in
particular, those of the outdated [`epsf`](http://ctan.org/pkg/epsf) and
[`psfig`](http://ctan.org/pkg/psfig) packages are immune.

The slight disadvantage of the `\graphicspath` method is
inefficiency.  The package will call (La)TeX once for each entry in
the list to look for a file, which of course slows things.  Further,
(La)TeX remembers the name of any file it's asked to look up, thus
effectively losing memory, so that in the limit a document that uses a
huge number of graphical inputs could be embarrassed by lack of
memory.  (Such ''memory starvation'' is pretty unlikely with any
ordinary document in a reasonably modern (La)TeX system, but it
should be borne in mind.)

If your document is split into a variety of directories, and each
directory has its associated graphics, the [`import`](http://ctan.org/pkg/import) package
may well be the thing for you; see the discussion 
in the question ''
[bits of document in other directories](./FAQ-docotherdir.html)
''.

