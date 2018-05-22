# The TeX document preparation environment

''[Why TeX is not WYSIWYG](./FAQ-notWYSIWYG.html)''
outlines the reasons (or excuses) for the huge disparity of user
interface between ''typical'' TeX environments and commercial word
processors.

Nowadays, at last, there is a range of tools available that try either
to bridge or to close the gap.  One range modestly focuses on
providing the user with a legible source document.  At the other
extreme we have [`TeXmacs`](http://www.texmacs.org),
a&nbsp;document processor using
TeX's algorithms and fonts for both editor display and printing.
`TeXmacs` does not use the TeX
language itself (though among other formats, LaTeX may be exported
and imported).  A bit closer to LaTeX is
[LyX](http://www.lyx.org/), which has its own
editor display and file formats as well, but does its print output by
exporting to LaTeX.  The editor display merely resembles the
printed output, but you have the possibility of entering arbitrary
LaTeX code.  If you use constructs that LyX does not
understand, it will just display them as source text marked red, but
will properly export them.

Since a lot of work is needed to create an editor from scratch that
actually is good at editing (as well as catering for TeX), it is
perhaps no accident that several approaches have been implemented
using the extensible `emacs` editor.  The low end of the
prettifying range is occupied by syntax highlighting: marking TeX
tokens, comments and other stuff with special colours.
Many free editors (including `emacs`) can cater for TeX in
this way.  Under Windows, one of the more popular editors with such
support is the
Shareware product [`winedt`](http://www.winedt.com/).
Continuing the range of
tools prettifying your input, we have the `emacs` package
[[`x-symbol`](http://ctan.org/pkg/x-symbol)](http://x-symbol.sourceforge.net), which does
the WYSIWYG part of its work by replacing single TeX tokens and
accented letter sequences with appropriate-looking characters on the
screen.

A different type of tool focuses on making update and access to
previews of the typeset document more immediate.  A recent addition
in several viewers, editors and TeX executables are so-called
'source specials' for cross-navigation.  When TeX compiles a
document, it will upon request insert special markers for every input
line into the typeset output.  The markers are interpreted by the DVI
previewer which can be made to let its display track the page
corresponding to the editor input position, or to let the editor jump
to a source line corresponding to a click in the preview window.

An `emacs` package that combines this sort of editor movement
tracking with automatic fast recompilations (through the use of dumped
formats) is
[[`WhizzyTeX`](http://ctan.org/pkg/WhizzyTeX)](http://pauillac.inria.fr/whizzytex/)
 which is best used with a previewer by the
same author.

Another `emacs` package called
[[`preview-latex`](http://ctan.org/pkg/preview-latex)](http://preview-latex.sourceforge.net)
tries to solve
the problem of visual correlation between source and previews in a
more direct way: it uses a LaTeX package to chop the document source
into interesting fragments (like figures, text or display math) which
it runs through LaTeX and replaces the source text of those
fragments with the corresponding rendered output images.  Since it
does not know about the structure of the images, at the actual cursor
position the source text is displayed while editing rather than the
preview.  This approach is more or less a hybrid of the source
prettifying and fast preview approaches since it works in the source
buffer but uses actual previews rendered by LaTeX.

A more ambitious contender is called TeXlite.  This
system is only available on request from its author;
it continuously updates its screen with the help of a special version
of TeX dumping its state in a compressed format at each page and
using hooks into TeX's line breaking mechanism for reformatting
paragraphs on the fly.  That way, it can render the output from the
edited TeX code with interactive speed on-screen, and it offers the
possibility of editing directly in the preview window.

That many of these systems occupy slightly different niches can be
seen by comparing the range of the
`emacs`-based solutions ranging from syntax highlighting to instant
previewing: all of them can be activated at the same time without
actually interfering in their respective tasks.

The different approaches offer various choices differing in the
immediacy of their response, the screen area they work on (source or
separate window), degree of correspondence of the display to the final
output, and the balance they strike between visual aid and visual
distraction.

