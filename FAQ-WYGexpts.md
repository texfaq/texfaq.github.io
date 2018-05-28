---
title: The TeX document preparation environment
category: misc
permalink: /FAQ-WYGexpts
redirect_from: /FAQ-wygexpts
date: 2018-05-24
---

# The TeX document preparation environment

''[Why TeX is not WYSIWYG](/FAQ-notWYSIWYG)''
outlines the reasons (or excuses) for the huge disparity of user
interface between ''typical'' TeX environments and commercial word
processors.

Nowadays, at last, there is a range of tools available that try either
to bridge or to close the gap.  One range modestly focuses on
providing the user with a legible source document. The low end of the
prettifying range is occupied by syntax highlighting: marking TeX
tokens, comments and other stuff with special colors.
Many free editors can cater for TeX in this way. At the other
extreme we have [TeXmacs](http://www.texmacs.org),
a&nbsp;document processor using
TeX's algorithms and fonts for both editor display and printing.
TeXmacs does not use the TeX
language itself (though among other formats, LaTeX may be exported
and imported).  A bit closer to LaTeX is
[LyX](http://www.lyx.org/), which has its own
editor display and file formats as well, but does its print output by
exporting to LaTeX.  The editor display merely resembles the
printed output, but you have the possibility of entering arbitrary
LaTeX code.  If you use constructs that LyX does not
understand, it will just display them as source text marked red, but
will properly export them.

Since a lot of work is needed to create an editor from scratch that actually is
good at editing (as well as catering for TeX), it is perhaps no accident that
several approaches have been implemented using the extensible Emacs editor.
There are though a very large number of (La)TeX-specific editors: see
<https://tex.stackexchange.com/q/339/> for a (non-comprehensive) list.

A different type of tool focuses on making update and access to previews of the
typeset document more immediate. This is typically handled using a system
called SyncTeX, which allows the relationship between lines in input and
position in PDF output to be tracked. Thus it is possible to switch directly
from a (potentially long) source to the resulting output, or _vice versa_. A
very large number of the editors mentioned above support this technology.

The different approaches offer various choices differing in the
immediacy of their response, the screen area they work on (source or
separate window), degree of correspondence of the display to the final
output, and the balance they strike between visual aid and visual
distraction.

