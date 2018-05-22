# What's wrong with `\bf`, `\it`, etc.?

The font-selection commands of LaTeX 2.09 were `\rm`, `\sf`,
`\tt`, `\it`, `\sl`, `\em` and `\bf`; they were modal
commands, so you used them as:
```latex
{\bf Fred} was {\it here\/}.
```
with the font change enclosed in a group, so as to limit its effect;
note the italic correction command `\/` that was necessary at the
end of a section in italics.

At the release of LaTeX 2e in summer 1994, these simple commands were
deprecated, but recognising that their use is deeply embedded in the
brains of LaTeX users, the commands themselves remain in LaTeX,
_with their LaTeX 2.09 semantics_.  Those semantics were part of
the reason they were deprecated: each `_xx_` overrides
any other font settings, keeping only the size.  So, for example,
```latex
{\bf\it Here we are again\/}
```
ignores `\bf` and produces text in italic, medium weight (and the
italic correction has a real effect), whereas
```latex
{\it\bf happy as can be\/}
```
ignores `\it` and produces upright text at bold weight (and the
italic correction has nothing to do).  The same holds if you mix
LaTeX 2e font selections with the old style commands:
```latex
\textbf{\tt all good friends}
```
ignores the `\textbf` that encloses the text, and produces
typewriter text at medium weight.

So why are these commands deprecated?&nbsp;&mdash; it is because of confusions
such as that in the last example.  The alternative (LaTeX 2e)
commands are discussed in the rest of this answer.

LaTeX 2e's font commands come in two forms: modal commands and
text-block commands.  The default set of modal commands offers weights
`\mdseries` and `\bfseries`, shapes `\upshape`,
`\itshape`, `\scshape` and `\slshape`, and families
`\rmfamily`, `\sffamily` and `\ttfamily`.  A font selection
requires a family, a shape and a series (as well as a size, of
course).  A few examples
```latex
{\bfseries\ttfamily and jolly good company!}
```
produces bold typewriter text (but note the lack of a 
  [bold typewriter font](./FAQ-bold-extras.html)
in the default Computer Modern fonts), or
```latex
{\slshape\sffamily Never mind the weather\/}
```
(note the italic correction needed on slanted fonts, too).

LaTeX 2e's text block commands take the first two letters of the
modal commands, and form a `\text`_`xx`_ command from
them.  Thus `\bfseries` becomes `\textbf{text}`,
`\itshape` becomes `\textit{text}`, and `\ttfamily`
becomes `\texttt{text}`.  Block commands may be nested, as:
```latex
\textit{\textbf{Never mind the rain}}
```
to produce bold italic text (note that the block commands supply
italic corrections where necessary), and they be nested with the
LaTeX 2e modal commands, too:
```latex
\texttt{\bfseries So long as we're together}
```
for bold typewriter, or
```latex
{\slshape \textbf{Whoops!  she goes again}\/}
```
for a bold slanted instance of the current family (note the italic
correction applied at the end of the modal command group, again).

The new commands (as noted above) override commands of the same type.
In almost all cases, this merely excludes ludicrous ideas such as
''upright slanted'' fonts, or ''teletype roman'' fonts.  There are a
couple of immediate oddities, though.  The first is the conflict
between `\itshape` (or `\slshape`) and `\scshape`: while many
claim that an italic small-caps font is typographically unsound, such
fonts do exist.  Daniel Taupin's [`smallcap`](http://ctan.org/pkg/smallcap) package enables
use of the instances in the [EC fonts](./FAQ-ECfonts.html), and
similar techniques could be brought to bear on many other font sets.
The second is the conflict between `\upshape` and `\itshape`:
Knuth actually offers an upright-italic font which LaTeX uses for
the ''&#xa3;'' symbol in the default font set.  The combination is
sufficiently weird that, while there's a defined font shape, no
default LaTeX commands exist; to use the shape, the (eccentric) user
needs LaTeX's simplest font selection commands:
```latex
{\fontshape{ui}\selectfont Tra la la, di dee}
```

