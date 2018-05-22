# Weird characters in `dvips` output

You've innocently generated output, using `dvips`, and there
are weird transpositions in it: for example, the `fi` ligature has
appeared as a &#xa3; symbol.
This is an unwanted side-effect of the precautions
outlined in [generating PostScript for PDF](./FAQ-dvips-pdf.html).
The `-G1` switch discussed in that question is appropriate for
Knuth's text fonts, but doesn't work with text fonts that don't follow
Knuth's patterns (such as fonts supplied by Adobe).

If the problem arises, suppress the `-G1` switch: if you were using it
explicitly, _don't_; if you were using `-Ppdf`, add `-G0` to
suppress the implicit switch in the pseudo-printer file.

The problem has been corrected in `dvips` v&nbsp;5.90 (and later
versions); it is unlikely ever to recur&hellip;

