# Using a new language with Babel

[`Babel`](http://ctan.org/pkg/Babel) is capable of working with a large range of
languages, and a new user often wants to use a language that her
TeX installation is not set up to employ.  Simply asking Babel to
use the language, with the command
```latex
  \usepackage[catalan]{babel}
```
provokes the warning message
```latex
Package babel Warning: No hyphenation patterns were loaded for
(babel)                the language `Catalan'
(babel)                I will use the patterns loaded for \language=0 instead.
```

The problem is that your TeX system doesn't know how to hyphenate
Catalan text: you need to tell it how before Babel can do its work
properly.  To do this, for LaTeX installations, one needs to change
`language.dat` (which is part of the Babel installation); it will
contain a line
```latex
%catalan         cahyphen.tex
```
which, if you remove the comment marker, is supposed to instruct
LaTeX to load Catalan hyphenation patterns when you tell it to build
a new format.

Unfortunately, in many Babel distributions, the line just isn't
right&nbsp;&mdash; you need to check the name of the file containing the
patterns you're going to use.  As you can see, in the author's system,
the name is supposed to be `cahyphen.tex`; however the file
actually present on the system is `cahyph.tex`&nbsp;&mdash; fortunately,
the error should prove little more than an inconvenience (most of the
files are in better distributions anyway, but an elusive one
may be found on CTAN; if you have to retrieve
a new file, ensure that it's correctly installed, for which see
[installing a new package](./FAQ-inst-wlcf.html)).

Finally, you need to regenerate the formats used (in fact, most users
of Babel are using it in their LaTeX documents, so regenerating the
LaTeX-related formats will ordinarily be enough; however, the
author always generates the lot, regardless).

- teTeXIt's possible to do the whole operation in one go, by
  using the `texconfig` command:
```latex
texconfig hyphen latex
```
  which first enters an editor for you to edit `language.dat`,
  and then regenerates the format you specify (`latex` in
  this case).

  Otherwise, to regenerate all formats, do: 

  `fmtutil --all`

  If you're willing to think through what you're doing (this is
  _not_ for the faint-hearted), you can select a sequence of
  formats and for each one, run: 

  `fmtutil --byfmt &lsaquo;_formatname_&rsaquo;`

  where _`formatname`_ is something like `latex`,
  or: 

  `fmtutil --byhyphen &lsaquo;_hyphenfile_&rsaquo;`

  where _`hyphenfile`_ is the file specifying hyphenation
  to the format&nbsp;&mdash; usually `language.dat`
- MiKTeX On a [`MiKTeX`](http://ctan.org/pkg/MiKTeX) distribution earlier than v2.0, do: 

  `Start`&rarr;
  `Programs`&rarr;
  `MiKTeX`&rarr;
  `Maintenance`&rarr;
  `Create all format files`

  or get a DOS window and run:

  `initexmf --dump`

  On a [`MiKTeX`](http://ctan.org/pkg/MiKTeX) distribution v2.0 or later, the whole
  procedure can be done via the GUI.  To select the new
  language, do:

  `Start`&rarr;
  `Programs`&rarr;
  `MiKTeX 2`&rarr;
  `MiKTeX Options`, and select the `Languages` tab.
  Select your language from the list, press the `Apply` button,
  and then the `OK` button.  Then select the `General`
  tab and press the `Update Now` button.

  Otherwise, edit the `language.dat` file (as outlined above),
  and then run:

  `initexmf --dump`

  just as for a pre-v2.0 system.

*_Caveat_:* It is (just) possible that
your TeX system may run out of ''pattern memory'' while generating
the new format.  Most TeX implementations have fixed-size arrays
for storing the details of hyphenation patterns, but although their
size is adjustable in most modern distributions, actually changing the
size is a fiddle.  If you _do_ find you've run out of memory,
it may be worth scanning the list of languages in your
`language.dat` to see whether any could reasonably be removed.

