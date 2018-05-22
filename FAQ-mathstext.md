# Text inside maths

When we type maths in (La)TeX, the letters from which we make up
ordinary text assume a special significance: they all become
single-letter variable names.  The letters appear in italics, but it's
not the same sort of italics that you see when you're typing ordinary
text: a run of maths letters (for example ''here'') looks oddly
''lumpy'' when compared with the word written in italic text.  The
difference is that the italic text is kerned to make the letters fit
well together, whereas the maths is set to look as if you're
multiplying _h_ by _e_ by _r_ by _e_.  The other
way things are odd in TeX maths typing is that spaces are ignored:
at best we can write single words in this oddly lumpy font.

So, if we're going to have good-looking text in amongst maths we're
writing, we have to take special precautions.  If you're using
LaTeX, the following should help.

The simplest is to use `\mbox` or `\textrm`:
```latex
$e = mc^2 \mbox{here we go again}$
```
The problem is that, with either, the size of the text remains firmly
at the surrounding text size, so that
```latex
$z = a_{\mbox{other end}}$
```
can look quite painfully wrong.

The other simple technique, `\textrm`, is no more promising:
```latex
$z = a_{\textrm{other end}}$
```
does the same as `\mbox`, by default.

(The maths-mode instance of your roman font (`\mathrm`) gets the
size right, but since it's intended for use in maths, its spaces get
ignored&nbsp;&mdash; use `\mathrm` for upright roman alphabetic variable
names, but not otherwise.)

You can correct these problems with size selectors in the text, as:
```latex
$z = a_{\mbox{\scriptsize other end}}$
```
which works if your surrounding text is at default document size, but
gives you the wrong size otherwise.

The `\mbox` short cut is (just about) OK for ''occasional''
use, but serious mathematics calls for a technique that
relieves the typist of the sort of thought required.  As usual, the
AMSLaTeX system provides what's necessary&nbsp;&mdash; the `\text`
command.  (The command is actually provided by the [`amstext`](http://ctan.org/pkg/amstext)
package, but the ''global'' [`amsmath`](http://ctan.org/pkg/amsmath) package loads it.)  Thus
anyone using AMSLaTeX proper has the command available, so even
this author can write:
```latex
\usepackage{amsmath}
...
$z = a_{\text{other end}}$
```
and the text will be at the right size, and in the same font as
surrounding text.  (The [`amstext`](http://ctan.org/pkg/amstext) package also puts
`\textrm` to rights&nbsp;&mdash; but `\text` is easier to type than
`\textrm`!)

AMSLaTeX also makes provision for interpolated comments in the
middle of one of its multi-line display structures, through the
`\intertext` command.  For example:
```latex
\begin{align}
  A_1&=N_0(\lambda;\Omega')-\phi(\lambda;\Omega'),\\
  A_2&=\phi(\lambda;\Omega')-\phi(\lambda;\Omega),\\
  \intertext{and} A_3&=\mathcal{N}(\lambda;\omega).
\end{align}
```
places the text ''and'' on a separate line before the last line of the
display.  If the interjected text is short, or the equations
themselves are light-weight, you may find that `\intertext` leaves
too much space.  Slightly more modest is the `\shortintertext`
command from the [`mathtools`](http://ctan.org/pkg/mathtools) package:
```latex
\begin{align}
  a =& b
  \shortintertext{or}
  c =& b
\end{align}
```
To have the text on the same line as the second equation, one can use
the `flalign` environment (from [`amsmath`](http://ctan.org/pkg/amsmath))
with lots of dummy equations (represented by the double `\&`
signs):
```latex
\begin{flalign}
            && a =& b && \\
  \text{or} && c =& b &&
\end{flalign}
```

