# Warning: ''Font shape &hellip; not available''

LaTeX's font selection scheme maintains tables of the font families
it has been told about.  These tables list the font families that
LaTeX knows about, and the shapes and series in which those font
families are available.  In addition, in some cases, the tables list
the sizes at which LaTeX is willing to load fonts from the family.

When you specify a font, using one of the LaTeX font selection
commands, LaTeX looks for the font (that is, a font that matches
the encoding, family, shape, series and size that you want) in its
tables.  If the font isn't there at the size you want, you will see a
message like:
```latex
LaTeX Font Warning: Font shape `OT1/cmr/m/n' in size <11.5> not available
(Font)              size <12> substituted on input line ...
```
There will also be a warning like:
```latex
LaTeX Font Warning: Size substitutions with differences
(Font)              up to 0.5pt have occurred.
```
after LaTeX has encountered `\end{document}`.

The message tells you that you've chosen a font size that is not in
LaTeX's list of ''allowed'' sizes for this font; LaTeX has
chosen the nearest font size it knows is allowed.  In fact, you can
tell LaTeX to allow _any_ size: the restrictions come from the
days when only bitmap fonts were available, and they have never
applied to fonts that come in scaleable form in the first place.
Nowadays, most of the fonts that were once bitmap-only are also
available in scaleable (Adobe Type&nbsp;1) form.  If your installation uses
scaleable versions of the Computer Modern or European Computer Modern
(EC) fonts, you can tell LaTeX to remove the restrictions;
use the [`type1cm`](http://ctan.org/pkg/type1cm) or [`type1ec`](http://ctan.org/pkg/type1ec) package as appropriate.

If the combination of font shape and series isn't available, LaTeX
will usually have been told of a fall-back combination that may be
used, and will select that:
```latex
LaTeX Font Warning: Font shape `OT1/cmr/bx/sc' undefined
(Font)              using `OT1/cmr/bx/n' instead on input line 0.
```

Substitutions may also be ''silent''; in this case, there is no more
than an ''information'' message in the log file.  For example, if you
specify an encoding for which there is no version in the current font
family, the 'default family for the encoding' is selected.  This
happens, for example, if you use command `\textbullet`, which is
normally taken from the maths symbols font, which is in `OMS`
encoding.  My test log contained:
```latex
LaTeX Font Info:    Font shape `OMS/cmr/m/n' in size <10> not available
(Font)              Font shape `OMS/cmsy/m/n' tried instead on input line ...
```

In summary, these messages are not so much error messages, as
information messages, that tell you what LaTeX has made of your
text.  You should check what the messages say, but you will ordinarily
not be surprised at their content.

