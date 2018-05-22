# Changing the margins in LaTeX

Changing the layout of a document's text on the page involves several
subtleties not often realised by the beginner.  There are interactions
between fundamental TeX constraints, constraints related to the
design of LaTeX, and good typesetting and design practice, that
mean that any change must be very carefully considered, both to ensure
that it ''works'' and to ensure that the result is pleasing to the
eye.

LaTeX's defaults sometimes seem excessively conservative,
but there are sound reasons behind how Lamport designed the layouts
themselves, whatever one may feel about his overall design.  For
example, the common request for ''one-inch margins all round on A4
paper'' is fine for 10- or 12-pitch typewriters, but not for 10pt (or
even 11pt or 12pt) type because readers find such wide, dense, lines
difficult to read.  There should ideally be no more than 75 characters
per line (though the constraints change for two-column text).

So Lamport's warning to beginners in his section on 'Customizing the
Style'&nbsp;&mdash; ''don't do it''&nbsp;&mdash; should not lightly be ignored.

This set of FAQs recommends that you use a package to establish
consistent settings of the parameters: the interrelationships are
taken care of in the established packages, without you _needing_
to think about them, but remember&nbsp;&mdash; the packages only provide
consistent, working, mechanisms: they don't analyse the quality of
what you propose to do.

The following answers deal with the ways one may choose to proceed:
  

-  [Choose which package to use](./FAQ-marginpkgs.html).
-  [Find advice on setting up page layout by hand](./FAQ-marginmanual.html).

There is a related question&nbsp;&mdash; how to change the layout
temporarily&nbsp;&mdash; and there's an answer that covers that, too:
  

-  [Change the margins on the fly](./FAQ-chngmargonfly.html).

