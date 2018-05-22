# Preventing page breaks between lines

One commonly requires that a block of typeset material be kept on the
same page; it turns out to be surprisingly tricky to arrange this.

LaTeX provides a `samepage` environment which claims it
does this sort of thing for you.  It proceeds by setting infinite
penalties for all sorts of page-break situations; but in many
situations where you want to prevent a page break,
`samepage` doesn't help.  If you're trying to keep running
text together, you need to end the paragraph inside the environment
(see [preserving paragraph parameters](./FAQ-paraparam.html)).
Also, if the things you are trying to keep together insert their own
pagebreak hints, `samepage` has no power over them (though
list items' attempts&nbsp;&mdash; they suggest page breaks between items&nbsp;&mdash;
are subverted by `samepage`).  Naturally, if
`samepage` _does_ work, it is capable of leaving
stuff jutting out at the bottom of the page.

Another convenient trick is to set all the relevant stuff in a
`\parbox` (or a `minipage` if it contains things like
verbatim text that may not be used in the argument of a `\parbox`).
The resulting box certainly _won't_ break between pages, but
that's not to say that it will actually do what you want it to do:
again, the box may be left jutting out at the bottom of the page.

Why do neither of these obvious things work?&nbsp;&mdash; Because TeX can't
really distinguish between infinitely awful things.
`Samepage` will make any possible break point ''infinitely
bad'' and boxes don't even offer the option of breaks, but if the
alternative is the leave an infinitely bad few centimetres of blank
paper at the bottom of the page, TeX will take the line of least
resistance and do nothing.

This problem still arises even if you have `\raggedbottom` in
effect: TeX doesn't notice the value of _that_ until it starts
actually shipping a page out.  One approach is to set:
```latex
\raggedbottom
\addtolength{\topskip}{0pt plus 10pt}
```
The `10pt` offers a hint to the output routine that the column is
stretchable; this will cause TeX to be more tolerant of the need to
stretch while building the page.  If you're doing this as a temporary
measure, cancel the change to `\topskip` by:
```latex
\addtolength{\topskip}{0pt plus-10pt}
```
as well as resetting `\flushbottom`.  (Note that the `10pt` never
actually shows up, because it is overwhelmed when the page is shipped
out by the stretchability introduced by `\raggedbottom`; however, it
could well have an effect if `\flushbottom` was in effect.)

An alternative (which derives from a suggestion by Knuth in the
TeXbook) is the package [`needspace`](http://ctan.org/pkg/needspace) or the [`memoir`](http://ctan.org/pkg/memoir) class,
which both define a command `\needspace` whose argument tells it
what space is needed.  If the space isn't available, the current page
is cleared, and the matter that needs to be kept together will be
inserted on the new page.  For example, if 4&nbsp;lines of text need to be
kept together, the sequence
```latex
\par
\needspace{4\baselineskip}
% the stuff that must stay together
<text generating lines 1-4>
% now stuff we don't mind about
```
Yet another trick by Knuth is useful if you have a sequence of small
blocks of text that need, individually, to be kept on their own page.
Insert the command `\filbreak` before each small block, and the
effect is achieved.  The technique can be used in the case of
sequences of LaTeX-style sections, by incorporating `\filbreak`
into the definition of a command (as in 
[patching commands](./FAQ-patch.html)).  A simple and effective
patch would be:
```latex
\let\oldsubsubsection=\subsubsection
\renewcommand{\subsubsection}{%
  \filbreak
  \oldsubsubsection
}
```
While the trick works for consecutive sequences of blocks, it's
slightly tricky to get out of such sequences unless the sequence is
interrupted by a forced page break (such as `\clearpage`, which may
be introduced by a `\chapter` command, or the end of the document).
If the sequence is not interrupted, the last block is likely to be
forced onto a new page, regardless of whether it actually needs it.

If one is willing to accept that not everything can be accomplished
totally automatically, the way to go is to typeset the document and to
check for things that have the potential to give trouble.  In such a
scenario (which has Knuth's authority behind it, if one is to believe
the rather few words he says on the subject in the TeXbook) one can
decide, case by case, how to deal with problems at the last
proof-reading stage.  At this stage, you can manually alter page
breaking, using either `\pagebreak` or `\clearpage`, or you can
place a `\nopagebreak` command to suppress unfortunate breaks.
Otherwise, you can make small adjustments to the page geometry, using
`\enlargethispage`.  Supposing you have a line or two that stray:
issue the command `\enlargethispage{2`\baselineskip`}` and
two lines are added to the page you're typesetting.  Whether this
looks impossibly awful or entirely acceptable depends on the document
context, but the command remains a useful item in the armoury.

Note that both `\pagebreak` and `\nopagebreak` take an optional
number argument to adjust how the command is to be interpreted.  Thus
`\pagebreak[0]`, the command 'suggests' that a page break
might be worth doing, whereas `\pagebreak[4]` 'demands' a
page break.  Similarly `\nopagebreak[0]` makes a suggestion,
while `\nopagebreak[4]` is a demand.  In both commands, the
default value of the optional argument is 4.

