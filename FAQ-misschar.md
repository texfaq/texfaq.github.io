# Where have my characters gone?

You've typed some apparently reasonable text and processed it, but the
result contains no sign of some of the characters you typed.  A likely
reason is that the font you selected just doesn't have a
representation for the character in question.

For example, if I type ''that will be &#xa3;44.00'' into an ordinary
(La)TeX document, or if I select the font `rsfs10` (which contains
uppercase letters only) and type pretty much anything, the &#xa3;
sign, or any lowercase letters or digits will not appear in the
output.  There's no actual error message, either: you have to read the
log file, where you'll find cryptic little messages like
```latex
Missing character: There is no ^^a3 in font cmr10!
Missing character: There is no 3 in font rsfs10!
``` 
(the former demonstrating my TeX's unwillingness to deal in characters
which have the eighth bit set, while the `rsfs10` example shows that
TeX will log the actual character in error, if it thinks it's
possible).

Somewhat more understandable are the diagnostics you may get from
[`dvips`](http://ctan.org/pkg/dvips) when using the OT1 and T1 versions of
fonts that were supplied in Adobe standard encoding:
```latex
dvips: Warning: missing glyph `Delta'
```
The process that generates the metrics for using the fonts generates
an instruction to [`dvips`](http://ctan.org/pkg/dvips) to produce these diagnostics, so
that their non-appearance in the printed output is less surprising
than it might be.  Quite a few glyphs provided in Knuth's text
encodings and in the Cork encoding are not available in the Adobe
fonts.  In these cases, there _is_ a typeset sign of the
character: `dvips` produces a black rectangle of whatever
size the concocted font file has specified.

