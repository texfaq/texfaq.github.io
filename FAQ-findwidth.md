# Finding the width of a letter, word, or phrase

Put the word in a box, and measure the width of the box. For example,
```latex
\newdimen\stringwidth
\setbox0=\hbox{hi}
\stringwidth=\wd0
```
Note that if the quantity in the `\hbox` is a phrase, the actual
measurement only approximates the width that the phrase will occupy in
running text, since the inter-word glue can be adjusted in paragraph
mode.

The same sort of thing is expressed in LaTeX by:
```latex
\newlength{\gnat}
\settowidth{\gnat}{\textbf{small}}
```
This sets the value of the length command `\gnat` to the width of ''small''
in bold-face text.

