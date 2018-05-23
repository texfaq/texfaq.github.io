---
ID: Q-extex
section: Current TeX-related projects
revised: 2014-06-10
---
# The ExTeX project

[The ExTeX project](http://www.extex.org/) is
building on the experience of the many existing TeX development and
extension projects, to develop a new TeX-like system.  The system
is to be developed in Java (like the ill-fated NTS project).

While ExTeX will implement all of TeX's primitives, some may be
marked as obsolete, and ''modern'' alternatives provided (an obvious
example is the primitive `\input` command, whose syntax inevitably
makes life difficult for users of modern operating system file
paths).  Desirable extensions from [&epsilon;-TeX](FAQ-etex.md),
[pdfTeX](FAQ-whatpdftex.md) and [&Omega;](FAQ-omegaleph.md)
have been identified.

Usability will be another focus of the work: debugging support and log
filtering mechanisms will please those who have long struggled with
TeX macros.

ExTeX will accept Unicode input, from the start.  In the longer
term, drawing primitives are to be considered.

