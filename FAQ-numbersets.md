# Symbols for the number sets

Mathematicians commonly use special lettering for the real numbers and
other standard number sets. Traditionally these were typeset in bold.
In the ordinary course of events, but mathematicians do not have
access to bold chalk, so they invented special symbols that are now
often used for the number sets.  Such symbols are known as
''blackboard bold'' (or double-stroked) letters; in place of the heavier
strokes of a bold font, (some) strokes of the letters are doubled.
The minimum useful set is upper-case letters 'I', 'N', 'R', 'Q' and
'Z'; some fonts offer a figure '1' (for a unit matrix&nbsp;&mdash; not a number
set at all).

A set of blackboard bold capitals is available in the AMS
`msbm` fonts (`msbm` is available at a range of
design sizes, with names such as `msbm10`).  The AMS
actually provides a pair of font
families (the other is called `msam`), which offer a large number of
mathematical symbols to supplement those provided in Knuth's fonts.
The fonts are available in Type&nbsp;1 format in
modern distributions.   Support for using the fonts under
LaTeX is available in packages [`amssymb`](http://ctan.org/pkg/amssymb) and
[`amsfonts`](http://ctan.org/pkg/amsfonts).  The font shape is a rather
austere sans, which many people don't like (though it captures the
essence of quickly-chalked writing rather well).

The `bbold` family is set of blackboard bold fonts written in
MetaFont.  This set offers blackboard bold forms of lower-case letters;
the font source directory also contains sources for a LaTeX package
that enables use of the fonts.  The fonts are not available in Type&nbsp;1 format.

The `bbm` family claims to provide
'blackboard' versions of most of the `cm` fonts&nbsp;&hellip; including
the bold and bold-extended series.  Again, the fonts are designed in
MetaFont and are not available in Type&nbsp;1 format.  LaTeX macro support
comes from a package by Torsten Hilbrich.

The `doublestroke` family comes in just roman
and sans shapes, at a single weight, and is available both as MetaFont
sources and as Type&nbsp;1; the font covers the uppercase latin letters,
lowercase 'h' and 'k', and the digit '1'.

A document that shows the `bbm`, `bbold`,
`doublestroke` and `msbm` fonts, so that you can get
a feel for their appearance, is available (CTAN package
[`blackboard`](http://ctan.org/pkg/blackboard)).

The [`boondox`](http://ctan.org/pkg/boondox) font set consists of Type&nbsp;1 versions of the
STIX mathematics set (the originals are distributed in
OTF format).  The set contains a font
'BOONDOXDoubleStruck-Regular' (blackboard bold) (as well as a 'bold'
version of that.

An alternative source of Type&nbsp;1 fonts with blackboard bold characters
may be found in the steadily increasing set of complete families, both
commercial and free, that have been prepared for use with (La)TeX
(see 
''[choice of outline fonts](./FAQ-psfchoice.html)'').
Of the free sets, the `txfonts` and `pxfonts` families
both come with replicas of `msam` and `msbm`, but
(as noted elsewhere, there are other reasons not to use these fonts);
revised versions of the fonts, `newtx` and `newpx`
are better adjusted.  The `mathpazo` family includes a
''mathematically significant'' choice of blackboard bold characters, and the
`fourier` fonts contain blackboard bold upper-case letters,
the digit '1', and lower-case 'k'.

The ''lazy person's'' blackboard bold macros:
```latex
\newcommand{\R}{{\textsf{R}\hspace*{-0.9ex}%
  \rule{0.15ex}{1.5ex}\hspace*{0.9ex}}}
\newcommand{\N}{{\textsf{N}\hspace*{-1.0ex}%
  \rule{0.15ex}{1.3ex}\hspace*{1.0ex}}}
\newcommand{\Q}{{\textsf{Q}\hspace*{-1.1ex}%
  \rule{0.15ex}{1.5ex}\hspace*{1.1ex}}}
\newcommand{\C}{{\textsf{C}\hspace*{-0.9ex}%
  \rule{0.15ex}{1.3ex}\hspace*{0.9ex}}}
```
are almost acceptable at normal size if the surrounding text is
`cmr10` (the position of the vertical bar can be affected by
the surrounding font).  However, they are not part of a proper maths font,
and do not work in sub- and superscripts.  As we've seen, there are
plenty of alternatives: that mythical ''lazy'' person can inevitably
do better than the macros, or anything similar using capital 'I'
(which looks even worse!).  Voluntary  (La)TeX effort has redefined
the meaning of laziness (in this respect!).

