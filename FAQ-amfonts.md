# Where are the `am` fonts?

One _still_ occasionally comes across a request for the `am`
series of fonts.  The initials stood for 'Almost [Computer] Modern',
and they were the predecessors of the Computer Modern fonts that we
all know and love (or hate)
<sup class="fmk">&dagger;</sup><span class="footnote">&dagger; 
  The fonts acquired their label 'Almost' following the realisation
  that their first implementation in MetaFont79 still wasn't quite right;
  Knuth's original intention had been that they were the final answer.
</span>.
There's not a lot one can do with these
fonts; they are (as their name implies) almost (but not quite) the
same as the `cm` series; if you're faced with a document that requests
them, the only reasonable approach is to edit the document to replace
`am*` font names with `cm*`.

The appearance of DVI files that request them is sufficiently
rare that no-one has undertaken the mammoth task of creating a
translation of them by means of virtual fonts.

You therefore have to fool the system into using `cm*` fonts
where the original author specified `am*`.

One option is the font substitutions that many
DVI drivers provide via their configuration file&nbsp;&mdash;
specify that every `am` font should be replaced by its
corresponding `cm` font.

Alternatively, one may try DVI editing&nbsp;&mdash; packages
[`dtl`](http://ctan.org/pkg/dtl) (DVI Text Language) and [`dviasm`](http://ctan.org/pkg/dviasm)
(DVI assembler) can both provide round trips from DVI to
text and back to DVI.  One therefore edits font names
(throughout the text representation of the file) in the middle of that
round trip.

The DTL text is pretty straightforward, for this purpose:
fontnames are in single quotes at the end of lines, so:
  `dv2dt -o` &lsaquo;_doc.txt_&rsaquo; &lsaquo;_doc.dvi_&rsaquo;

  (_edit the `txt` file_)

  `dt2dv -o` &lsaquo;_edited.dvi_&rsaquo; &lsaquo;_edited.txt_&rsaquo;
(you have to compile the C programs for this).

`Dviasm` is a `Python` script; its output has font
names in a section near the start of the document, and then dotted
about through the body, so:
  `python dviasm.py -o` &lsaquo;_doc.txt_&rsaquo; &lsaquo;_doc.dvi_&rsaquo;

  (_edit the `txt` file_)

  `python dviasm.py -o` &lsaquo;_edited.dvi_&rsaquo; &lsaquo;_edited.txt_&rsaquo;
Both routes seem acceptable ways forward; it is a matter of taste
which any particular user may choose (it's not likely that it will be
necessary very often...).

