# The style of captions

Changes to the style of captions may be made by redefining the commands
that produce the caption.  So, for example, `\fnum@figure` (which
produces the float number for figure floats) may be redefined, in a
package of your own, or between
[`\makeatletter`&ndash;`\makeatother`](./FAQ-atsigns.html):
```latex
\renewcommand{\fnum@figure}{\textbf{Fig.~\thefigure}}
```
which will cause the number to be typeset in bold face.  (Note that
the original definition used 
[`\figurename`](./FAQ-fixnam.html).)  More elaborate changes can be
made by patching the `\caption` command, but since there are
packages to do the job, such changes (which can get rather tricky)
aren't recommended for ordinary users.

The [`float`](http://ctan.org/pkg/float) package provides some control of the appearance of
captions, though it's principally designed for the creation of
non-standard floats.  The [`caption`](http://ctan.org/pkg/caption) and [`ccaption`](http://ctan.org/pkg/ccaption)
(note the double ''_c_'') packages provide a range of different
formatting options.

[`ccaption`](http://ctan.org/pkg/ccaption) also provides 'continuation' captions and captions
that can be placed outside of float environments.  The (very simple)
[`capt-of`](http://ctan.org/pkg/capt-of) package also allows captions outside a float
environment.  Note that care is needed when doing things that assume
the sequence of floats (as in continuation captions), or potentially
mix non-floating captions with floating ones.

The [`memoir`](http://ctan.org/pkg/memoir) class includes the facilities of the
[`ccaption`](http://ctan.org/pkg/ccaption) package; the [`KOMA-script`](http://ctan.org/pkg/KOMA-script) classes also
provide a wide range of caption-formatting commands.

The documentation of [`caption`](http://ctan.org/pkg/caption) is available by processing a
file `manual.tex`, which is created when you unpack
`caption.dtx`

Note that the previously-recommended package [`caption2`](http://ctan.org/pkg/caption2) has
now been overtaken again by [`caption`](http://ctan.org/pkg/caption); however,
[`caption2`](http://ctan.org/pkg/caption2) remains available for use in older documents.

