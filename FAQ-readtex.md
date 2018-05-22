# Reading (La)TeX files

So you've been sent an (La)TeX file: what are you going to do with
it?

You can, of course, ''just read it'', since it's a plain text file;
the problem is that the markup tags in the document may prove
distracting.  Most of the time, even TeX _experts_ will
typeset a (La)TeX file before attempting to read it&nbsp;&hellip;

So you shouldn't be too concerned if you can't make head nor tail of
the file: it is designed to be read by a (sort of) compiler, and
compilers don't have much in common with human readers.

A possible next step is to try an on-line LaTeX editor.  There are
many of these&nbsp;&mdash; a compilation of links may be found in 
[this blog post](http://texblog.net/latex-link-archive/online-compiler/)

Of that long list, the present author has only dabbled with 
[WriteLaTeX](https://www.writelatex.com/); it seems well
suited to simple 'one-shot' use in this way.

If no online compiler helps, you need to typeset the document
''yourself''.  The good news is that TeX systems are available,
free, for most sorts of computer; the bad news is that you need a
pretty complete TeX system even to read a single file, and complete
TeX systems are pretty large.

TeX is a typesetting system that arose from a publishing project (see
''[what is TeX](./FAQ-whatTeX.html)''),
and its basic source is available free from its author.  However, at
its root, it is _just_ a typesetting engine: even to view or to
print the typeset output, you will need ancillary programs.  In short,
you need a TeX _distribution_&nbsp;&mdash; a collection of
TeX-related programs tailored to your operating system: for details
of the sorts of things that are available, see
''[TeX distributions](./FAQ-TeXsystems.html)''
or
''[commercial TeX distributions](./FAQ-commercial.html)''.

But beware&nbsp;&mdash; TeX makes no attempt to look like the sort of
WYSIWYG system you're probably used to (see
''[why is TeX not WYSIWYG](./FAQ-notWYSIWYG.html)''):
while many modern versions of TeX have a compile&ndash;view cycle that
rivals the best commercial word processors in its responsiveness, what
you type is usually _markup_, which typically defines a logical
(rather than a visual) view of what you want typeset.

So there's a balance between the simplicity of the original
(marked-up) document, which can more-or-less be read in _any_
editor, and the really rather large investment needed to install a
system to read a document ''as intended''.

Are you ''put off'' by all this?&nbsp;&mdash; remember that TeX is good at
producing PDF: why not ask the person who sent the TeX file
to send an PDF copy?

