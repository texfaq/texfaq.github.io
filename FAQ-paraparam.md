# Why does it ignore paragraph parameters?

When TeX is laying out text, it doesn't work from word to word, or
from line to line; the smallest complete unit it formats is the
paragraph.  The paragraph is laid down in a buffer, as it appears, and
isn't touched further until the end-paragraph marker is processed.
It's at this point that the paragraph parameters have effect; and it's
because of this sequence that one often makes mistakes that lead to
the paragraph parameters not doing what one would have hoped (or
expected).

Consider the following sequence of LaTeX:
```latex
{\raggedright % declaration for ragged text
Here's text to be ranged left in our output,
but it's the only such paragraph, so we now
end the group.}

Here's more that needn't be ragged...
```
TeX will open a group, and impose the ragged-setting parameters within
that group; it will then save a couple of sentences of text and
close the group (thus restoring the previous value of the
parameters that `\raggedright` set).  Then TeX encounters a blank
line, which it knows to treat as a `\par` token, so it typesets the
two sentences; but because the enclosing group has now been closed,
the parameter settings have been lost, and the paragraph will be
typeset normally.

The solution is simple: close the paragraph inside the group, so that
the setting parameters remain in place.  An appropriate way of doing
that is to replace the last three lines above with:
```latex
end the group.\par}
Here's more that needn't be ragged...
```
In this way, the paragraph is completed while `\raggedright`s
parameters are still in force within the enclosing group.

Another alternative is to define an environment that does the
appropriate job for you.  For the above example, LaTeX already
defines an appropriate one:
```latex
\begin{flushleft}
Here's text to be ranged left...
\end{flushleft}
```

In fact, there are a number of parameters for which TeX only
maintains one value per paragraph.  A tiresome one is the set of upper
case/lower case translations, which (oddly enough) constrains
hyphenation of mutilingual texts.  Another that regularly creates
confusion is [`\baselineskip`](./FAQ-baselinepar.html).

