# Fonts go fuzzy when you switch to T1




You've been having problems with hyphenation, and someone has
suggested that you should use `\usepackage[T1]{fontenc}`
to help sort them out.  Suddenly you find that your final PDF
has become fuzzy.  The problem may arise whether you are using PostScript
output and then distilling it, or you are using PDFTeX for the
whole job.


In fact, this is the same problem as most others about the
[quality of PDF](./FAQ-dvips-pdf.html): you've abandoned
your previous setup using Type&nbsp;1 versions of the CM fonts, and
`dvips` has inserted Type&nbsp;3 versions of the EC fonts
into your document output.  (See 
''[Adobe font types](./FAQ-adobetypen.html)
for details of these font types; also, note that the font
_encoding_&nbsp;T1
has nothing directly to do with the font _format_&nbsp;Type&nbsp;1).


However, as noted in 
''[8-bit Type&nbsp;1 fonts](./FAQ-type1T1.html)'',
Type&nbsp;1 versions of CM-like fonts in T1 (or equivalent) encoding
are now available, both as ''real'' fonts, and as virtual font sets.
One solution, therefore, is to use one of these alternatives.


The alternative is to switch font family altogether, to something like
`Times` (as a no-thought default) or one of the many more pleasing
Adobe-encoded fonts.  The default action of [`fontinst`](http://ctan.org/pkg/fontinst), when
creating metrics for such a font, is to create settings for both OT1
and T1 encodings, so there's little change in what goes on (at the
user level) even if you have switched to T1&nbsp;encoding when using the
fonts.


