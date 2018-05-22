# My words aren't being hyphenated

Let's assume you've selected the right TeX 'language'&nbsp;&mdash; as
explained in [''how hyphenation works''](./FAQ-hyphen.html),
you're not likely to get the correct results typesetting one language
using the hyphenation rules of another.  (Select the proper language,
using [`babel`](http://ctan.org/pkg/babel) if you're a LaTeX user.  This may reveal that
you need another set of hyphenation patterns; see
[''using a new language''](./FAQ-newlang.html) for advice on how
to install it.)

So what else can go wrong?
  

-  Since TeX version&nbsp;3.0, the limits on how near to either end
    of a word hyphenation may take place have been programmable (see
    [''weird hyphenation''](./FAQ-weirdhyphen.html)), and for some
    reason the values in question may have been corrupted in some macros
    you are using.  TeX won't hyphenate less than `\lefthyphenmin`
    characters after the start of a word, nor less than
    `\righthyphenmin` before the end of a word; thus it won't
    hyphenate a word shorter than the sum of the two minima, at all.
    For example, since the minima are 2 and 3 for English, TeX won't
    hyphenate a word shorter than 5 letters long, if it believes the
    word to be English.
-  TeX won't hyphenate a word that's already been hyphenated.
    For example, the (caricature) English surname Smyth-Postlethwaite
    wouldn't hyphenate, which could be troublesome.  This is correct
    English typesetting style (it may not be correct for other
    languages), but if needs must, you can replace the hyphen in the
    name with a `\hyph` command, defined
    ```latex
    \def\hyph{-\penalty0\hskip0pt\relax}
    ```
    This is _not_ the sort of thing this FAQ would
    ordinarily recommend&hellip; The [`hyphenat`](http://ctan.org/pkg/hyphenat) package defines a
    bundle of such commands (for introducing hyphenation points at
    various punctuation characters).
-  There may be accent commands in the word.  The causes of and
    remedies for this effect are discussed in 
    [accents and hyphens](./FAQ-hyphenaccents.html).
-  The hyphenation may simply not have been spotted; while TeX's
    algorithm is good, it's not infallible, and it does miss perfectly
    good hyphenations in some languages.  When this happens, you need to
    give TeX _explicit_ instructions on how to hyphenate.

The `\hyphenation` command allows you to give explicit instructions.
Provided that the word will hyphenate at all (that is, it is not
prevented from hyphenating by any of the other restrictions above),
the command will override anything the hyphenation patterns might
dictate.  The command takes one or more hyphenated words as
argument&nbsp;&mdash; `\hyphenation{ana-lysis pot-able}`; note that
(as here, for analysis) you can use the command to overrule TeX's
choice of hyphenation (ana-lysis is the British etymological
hyphenation; some feel the American hyphenation feels
'unfortunate'&hellip;).

