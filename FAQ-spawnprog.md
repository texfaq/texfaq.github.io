# Spawning programs from (La)TeX: `\write18`

The TeX [`\write` primitive instruction](./FAQ-write.html) is used
to write to different file 'streams'; TeX refers to each open file by
a number, not by a file name (although most of the time we hide this).
Originally, TeX would write to a file connected to a stream
numbered 0&ndash;15.  More recently, a special ''stream 18'' has been
implemented: it is not writing to a file, but rather tells TeX to ask
the operating system to do something.  To run a command, we put it as
the argument to `\write18`.  So to run the `epstopdf`
utility on a file with name stored as `\epsfilename`, we would
write:
```latex
\write18{epstopdf \epsfilename}
```
When using something like the [`epstopdf`](http://ctan.org/pkg/epstopdf) package, the 'stream'
write operation is hidden away and you don't need to worry about the
exact way it's done.

However, there is a security issue. If you download some (La)TeX code from
the Internet, can you be sure that there is not some command in it
(perhaps in a hidden way) to do stuff that might be harmful to your
computer (let's say: delete everything on the hard disk!)?  In the
face of this problem, both MiKTeX and TeX&nbsp;Live have, for some
time, disabled `\write18` by default.  To turn the facility on,
both distributions support an additional argument when starting TeX
from the command shell:
```latex
(pdf)(la)tex --shell-escape <file>
```
The problem with this is that many people use (La)TeX via a graphical
editor, so to use `\write18` for a file the editor's settings must
be changed.  Of course, the settings need restoring after the file is
processed: you defeat the point of the original protection, that way.

The latest MiKTeX (version 2.9), and recent TeX&nbsp;Live (from the
2010 release) get
around this by having a special ''limited'' version of `\write18`
enabled 'out of the box'.  The idea is to allow only a pre-set list of
commands (for example, BibTeX, `epstopdf`, TeX itself,
and so on).  Those on the list are regarded as safe enough to allow,
whereas anything else (for example deleting files) still needs to be
authorised by the user. This seems to be a good balance: most people
most of the time will not need to worry about `\write18` at all,
but it will be available for things like [`epstopdf`](http://ctan.org/pkg/epstopdf).

Note that the TeX system may tell you that the mechanism is in use:
```latex
This is pdfTeX, Version 3.1415926-1.40.11 (TeX Live 2010)
 restricted \write18 enabled.
```
when it starts.

