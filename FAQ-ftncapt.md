# Footnotes in captions

Footnotes in captions are especially tricky: they present problems of
their own, on top of the problems one experiences with
[footnotes in section titles](./FAQ-ftnsect.html) (footnotes migrating to
to the list of figures or tables, or 
[apparently random errors](./FAQ-extrabrace.html) because
`\footnote` is a fragile command), and with 
[footnotes in tables](./FAQ-footintab.html) (typically, the footnote
simply disappears).  Fortunately, the requirement for footnotes in
captions is extremely rare: if you are experiencing problems, it is
worth reviewing what you are trying to say by placing this footnote:
other options are to place text at the bottom of the float, or to
place a footnote at the point where you refer to the float.

Note that the [`threeparttable`](http://ctan.org/pkg/threeparttable) scheme (see, again, 
[footnotes in tables](./FAQ-footintab.html)) also applies
to notes in captions, and may very well be preferable to whatever you
were thinking of.

If you _are_ going to proceed:
  

-  use an optional argument in your `\caption` command, that
    doesn't have the footnote in it; this prevents the footnote
    appearing in the ''List of &hellip;'', and
-  put your whole float in a `minipage` so as to keep
    the footnotes with the float.

so we have:
```latex
\begin{figure}
  \begin{minipage}{\textwidth}
    ...
    \caption[Compact Routing Example]%
    {Compact Routing\footnote{something} Example}
  \end{minipage}
\end{figure}
```
So, we make an entry for the List of Figures, which doesn't hold
troublesome commands, such as `\footnote`.

However, _as well as_ all of the above, one _also_ has to
deal with the tendency of the `\caption` command to produce the
footnote's text twice.  For this last problem, there is no tidy
solution this author is aware of.

If you're suffering the problem, a well-constructed `\caption`
command in a `minipage` environment within a float (as
in the example above) can produce _two_ copies of the footnote
body ''something''. (In fact, the effect only occurs with captions that are
long enough to require two lines to be typeset, and so wouldn't appear
with such a short caption as that in the example above.)

The documentation of the [`ccaption`](http://ctan.org/pkg/ccaption) package describes a really
rather awful work-around for this problem.

