# How to typeset an underscore character

The underscore character `_` is ordinarily used in TeX to
indicate a subscript in maths mode; if you type `_`, on its
own, in the course of ordinary text, TeX will complain.  The
''proper'' LaTeX command for underscore is `\textunderscore`,
but the LaTeX 2.09 command `\_` is an established alias.  Even so,
if you're writing a document which will contain a large number of
underscore characters, the prospect of typing `\_` for every one
of them will daunt most ordinary people.

Moderately skilled macro programmers can readily generate a quick hack
to permit typing `_` to mean 'text underscore' (the answer in
  ''[defining characters as macros](./FAQ-activechars.html)''
uses this example to illustrate its techniques).
However, the code _is_ somewhat tricky, and more importantly
there are significant points where it's easy to get it wrong.  There
is therefore a package [`underscore`](http://ctan.org/pkg/underscore) which provides a general
solution to this requirement.

There is a problem, though: OT1 text fonts don't contain an
underscore character, unless they're in the typewriter version of the
encoding (used by fixed-width fonts such as `cmtt`).  In place
of such a character, LaTeX (in OT1 encoding) uses a short rule
for the command `\textunderscore`, but this poses problems
for systems that interpret PDF&nbsp;&mdash; for example those
PDF-to-voice systems used by those who find reading difficult.

So either you must ensure that your underscore characters only occur
in text set in a typewriter font, or you must use a more modern
encoding, such as T1, which has the same layout for every font,
and thus an underscore in every font.

A stable procedure to achieve this is:
```latex
% (1) choose a font that is available as T1
% for example:
\usepackage{lmodern}

% (2) specify encoding
\usepackage[T1]{fontenc}

% (3) load symbol definitions
\usepackage{textcomp}
```
which will provide a command `\textunderscore` which robustly
selects the right character.  The [`underscore`](http://ctan.org/pkg/underscore) package,
mentioned above, will use this command.

