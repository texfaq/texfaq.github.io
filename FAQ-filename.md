---
section: How do I do&hellip;?
subsection: Document management
date: 2014-06-10
---

# What's the name of this file

One might want this so as to automatically generate a page header or
footer recording what file is being processed.  It's not easy&hellip;

TeX retains what it considers the name of the _job_, only, in
the primitive `\jobname`; this is the name of the file first
handed to TeX, stripped of its directory name and of any extension
(such as `tex`).  If no file was passed (i.e., you're using
TeX interactively), `\jobname` has the value `texput`
(the name that's given to `log` files in this case).

This is fine, for the case of a small document, held in a single file;
most significant documents will be held in a bunch of files, and
TeX makes no attempt to keep track of files input to the
_job_.  So the user has to keep track, himself&nbsp;&mdash; the only way
is to patch the input commands and cause them to retain details of the
file name.  This is particularly difficult in the case of Plain TeX,
since the syntax of the `\input` command is so peculiar.

In the case of LaTeX, the input commands have pretty regular
syntax, and the simplest [patching techniques](FAQ-patch.md) can be
used on them.  (Note that LaTeX's `\input` command is itself a
patch on top of the Plain TeX command.  Our patches apply to the
LaTeX version of the command, which is used as `\input{file}`)

It is possible to keep track of the name of the file currently being
processed, but it's surprisingly difficult (these FAQs offered
code, for a long time, that just didn't work in many cases).

The [`currfile`](https://ctan.org/pkg/currfile) package provides a regular means of keeping
track of the details of the current file (its name in
`\currfilename`, directory in `\currfiledir`, as well as the
file ''base'' name (less its extension) and its extension).
[`Currfile`](https://ctan.org/pkg/Currfile) does this with the help of a second package,
[`filehook`](https://ctan.org/pkg/filehook), which spots file operations that use `\input`,
`\InputIfFileExists` and `\include`, as well as package and
class loading.

The [`FiNK`](https://ctan.org/pkg/FiNK) (''File Name Keeper'') package keeps track of the
file name and extension, in a macro `\finkfile`.  [`FiNK`](https://ctan.org/pkg/FiNK) is
now deprecated, in favour of [`currfile`](https://ctan.org/pkg/currfile), but remains available
for use in old documents.
The [`FiNK`](https://ctan.org/pkg/FiNK) bundle includes a `fink.el` that provides
support under `emacs` with AUC-TeX.

