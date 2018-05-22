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
syntax, and the simplest [patching techniques](./FAQ-patch.html) can be
used on them.  (Note that LaTeX's `\input` command is itself a
patch on top of the Plain TeX command.  Our patches apply to the
LaTeX version of the command, which is used as `\input{file}`)

%% ```latex
%% \def\ThisFile{\jobname}
%% \let\OldInput\input
%% \renewcommand{\input}[1]{%
%%   \renewcommand{\ThisFile}{#1}%
%%   \OldInput#1%
%% }
%% ```
%% ```latex
%% \documentclass{article}
%% ... (macros above)
%% \begin{document}
%% \input{preamble}
%% <body of document>
%% \input{postamble}
%% \end{document}
%% ```

%% ```latex
%% \def\ThisFile{\jobname}
%% \newcounter{FileStack}
%% \let\OrigInput\input
%% \renewcommand{\input}[1]{%
%%   \stackinput{#1}{\OrigInput}%
%% }
%% \newcommand{\stackinput}[2]{%
%%   \stepcounter{FileStack}%
%%   \expandafter\let
%%     \csname NameStack\theFileStack\endcsname
%%     \ThisFile
%%   \def\ThisFile{#1}%
%%   #2#1%
%%   \expandafter\let\expandafter
%%     \ThisFile
%%     \csname NameStack\theFileStack\endcsname
%%   \addtocounter{FileStack}{-1}%
%% }
%% ```
%% ```latex
%% \let\OrigInclude\include
%% \renewcommand{\include}[1]{%
%%   \stackinput{#1}{\OrigInclude}%
%% }
%% ```

It is possible to keep track of the name of the file currently being
processed, but it's surprisingly difficult (these FAQs offered
code, for a long time, that just didn't work in many cases).

The [`currfile`](http://ctan.org/pkg/currfile) package provides a regular means of keeping
track of the details of the current file (its name in
`\currfilename`, directory in `\currfiledir`, as well as the
file 'base' name (less its extension) and its extension).
[`Currfile`](http://ctan.org/pkg/Currfile) does this with the help of a second package,
[`filehook`](http://ctan.org/pkg/filehook), which spots file operations that use `\input`,
`\InputIfFileExists` and `\include`, as well as package and
class loading.

The [`FiNK`](http://ctan.org/pkg/FiNK) (''File Name Keeper'') package keeps track of the
file name and extension, in a macro `\finkfile`.  [`FiNK`](http://ctan.org/pkg/FiNK) is
now deprecated, in favour of [`currfile`](http://ctan.org/pkg/currfile), but remains available
for use in old documents.
%% ```latex
%% \def\striptexext#1.tex{#1}
%% ...
%% \edef\ThisFile{\expandafter\stripext\finkfile}
%% ```
The [`FiNK`](http://ctan.org/pkg/FiNK) bundle includes a `fink.el` that provides
support under `emacs` with AUC-TeX.

