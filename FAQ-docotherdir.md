# Bits of document from other directories

A common way of constructing a large document is to break it into a
set of files (for example, one per chapter) and to keep everything
related to each of these subsidiary files in a subdirectory.

Unfortunately, TeX doesn't have a changeable ''current directory'',
so that all files you refer to have to be specified relative to the
same directory as the main file.  Most people find this
counter-intuitive.

It may be appropriate to use the ''path extension'' technique
[used in temporary installations](./FAQ-tempinst.html) to deal with
this problem.  However, if there several files with the same name in
your document, such as `chapter1/fig1.eps` and
`chapter2/fig1.eps`, you're not giving TeX any hint as to
which you're referring to when in the main chapter file you say
`\input{sect1}`; while this is readily soluble in the case of
human-prepared files (just don't name them all the same),
automatically produced files have a way of having repetitious names,
and changing _them_ is a procedure prone to error.

The [`import`](http://ctan.org/pkg/import) package comes to your help here: it defines an
`\import` command that accepts a full path name and the name of a
file in that directory, and arranges things to ''work properly''.
So, for example, if `/home/friend/results.tex` contains
```latex
Graph: \includegraphics{picture}
\input{explanation}
```
then `\import{/home/friend/}{results}` will include both
graph and explanation as one might hope.  A `\subimport` command
does the same sort of thing for a subdirectory (a relative path rather
than an absolute one), and there are corresponding `\includefrom`
and `\subincludefrom` commands.

The [`chapterfolder`](http://ctan.org/pkg/chapterfolder) package provides commands to deal with its
(fixed) model of file inclusion in a document.  It provides commands
`\cfpart`, `\cfchapter`, `\cfsection` and `\cfsubsection`,
each of which takes directory and file arguments, e.g.:
```latex
\cfpart[pt 1]{Part One}{part1}{part}
```
which command will issue a 'normal' command 
`\part[pt 1]{Part One}` and then input the file
`part1/part.tex`, remembering that `part1/` is now the
''current folder''.  There are also commands of the form
`\cfpartstar` (which corresponds to a `\part*` command).

Once you're ''in'' a [`chapterfolder`](http://ctan.org/pkg/chapterfolder)-included document, you
may use `\cfinput` to input something relative to the ''current
folder'', or you may use `\input`, using `\cfcurrentfolder` to
provide a path to the file.  (There are also
`\cfcurrentfolderfigure` for a `figure/` subdirectory and
`\cfcurrentfolderlistings` for a `listings/` subdirectory.)

Documentation of [`chapterfolder`](http://ctan.org/pkg/chapterfolder) is in French, but the
`README` in the directory is in English.

