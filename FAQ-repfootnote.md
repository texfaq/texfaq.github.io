# Footnotes whose texts are identical

If the _same_ footnote turns up at several places within a
document, it's often inappropriate to repeat the footnote in its
entirety over and over again.  We can avoid repetition by
semi-automatic means, or by simply labelling footnotes that we know
we're going to repeat and then referencing the result.  There is no
completely automatic solution (that detects and suppresses repeats)
available.

If you know you only have one footnote, which you want to repeat, the
solution is simple: merely use the optional argument of
`\footnotemark` to signify the repeats:
```latex
...\footnote{Repeating note}
...
...\footnotemark[1]
```
&hellip; which is very easy, since we know there will only ever be a
footnote number 1.  A similar technique can be used once the footnotes
are stable, reusing the number that LaTeX has allocated.  This can
be tiresome, though, as any change of typesetting could change the
relationships of footnote and repeat: labelling is inevitably better.

Simple hand-labelling of footnotes is possible, using a counter dedicated
to the job:
```latex
\newcounter{fnnumber}
...
...\footnote{Text to repeat}%
\setcounter{fnnumber}{\thefootnote}%
...
...\footnotemark[\thefnnumber]
```
but this is somewhat tedious.  LaTeX's labelling mechanism can be
summoned to our aid, but there are ugly error messages before the
`\ref` is resolved on a second run through LaTeX:
```latex
...\footnote{Text to repeat\label{fn:repeat}}
...
...\footnotemark[\ref{fn:repeat}]
```
Alternatively, one may use the `\footref` command, which has the
advantage of working even when the footnote mark isn't expressed as a
number.  The command is defined in the [`footmisc`](http://ctan.org/pkg/footmisc) package and
in the [`memoir`](http://ctan.org/pkg/memoir) class (at least); `\footref` reduces the above
example to:
```latex
...\footnote{Text to repeat\label{fn:repeat}}
...
...\footref{fn:repeat}
```
This is the cleanest simple way of doing the job.  Note that the
`\label` command _must_ be inside the argument of
`\footnote`.

The [`fixfoot`](http://ctan.org/pkg/fixfoot) package takes away some of the pain of the
matter: you declare footnotes you're going to reuse, typically in the
preamble of your document, using a `\DeclareFixedFoot` command, and
then use the command you've 'declared' in the body of the document:
```latex
\DeclareFixedFootnote{\rep}{Text to repeat}
...
...\rep{}
...\rep{}
```
The package ensures that the repeated text appears at most once per
page: it will usually take more than one run of LaTeX to get rid of
the repeats.

