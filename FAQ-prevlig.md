---
title: Preventing a ligature
category: formatting
permalink: /FAQ-prevlig
date: 2021-04-18
---

This is a strength of TeX: some pairs of letters are automatically replaced
by a single glyph, for aesthetic reasons, as is done in letterpress.  For example,
when an `f` and an `i` are placed next to each other, the hood of the `f` would
normally tend collide with the title of the `i`, which wouldn't look very nice.
TeX therefore replaces them with a new, prettier glyph: ﬁ.
This merging of glyphs is called a ligature.

The same mechanism is used to obtain the Spanish characters ¡ and ¿, which are
typed in as `` !` `` and `` ?` ``.

In Cyrillic fonts used with OT2 encoding, the letter pair `sh` will produce the
glyph ш (the _sha_ letter).

But in some cases, one may want to prevent ligatures from occurring.


To prevent a single ligature, just separate the letters in the (La)TeX code
with something that will produce nothing in the output file. For example:
`\/`, `{}`, `\mbox{}`, `\null`.  The T1 and OT1 font encodings also provide
the `\textcompwordmark` command, which has the same purpose.

```latex
% With the automatic ligature:
offence

% Without it:
of\/fence
of{}fence
of\null fence
of\mbox{}fence
of\textcompwordmark fence
```

Note that, in some cases, `{}` seems to have no effect, and the ligature
occurs in spite of it.  This is apparently a side effect of some packages, such
as [`multicol`](https://ctan.org/pkg/multicol).  The other solutions may
therefore be preferred.
In all cases, [hyphenation](FAQ-hyphen) of the word is no longer performed
automatically by TeX, and you have to [take care of it manually](FAQ-hyphexcept),
if needed.


The same solution prevents kerning between consecutive characters.
Compare for example the rendering of `AV` and `A\/V`.


In case you want to prevent ligature in you whole document,
have a look at [`fontspec`](https://ctan.org/pkg/fontspec) options.
It can disable all aesthetic ligatures, or disable them on a type by type basis:

```latex
\usepackage{fontspec}
 
\defaultfontfeatures{
  Ligatures={
    NoCommon,
    NoRequired,
    NoContextual,
    NoHistoric,
    NoDiscretionary
  }
}
```

