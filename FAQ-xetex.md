# XeTeX

[XeTeX](http://scripts.sil.org/xetex), by Jonathan Kew, is a
successor to the shareware TeX/GX program for Macintoshes.  It was
developed as a WEB 'change file' applied to the original source
of TeX; the main changes include:

- The input stage XeTeX by default reads Unicode (UTF-8, for
  instance), although it's also capable of interpreting differently
  encoded files (for backwards compatibility).  Multibyte characters
  are reduced to a single internal character upon reading, so they are
  considered as a unique entity when tokenization is performed.  (So,
  for example, you can have command names in cyrillic, if you must,
  but such a practice is not recommended.)
- The font management a substantial revision has added support
  for OpenType and TrueType fonts, delegating some parts to
  third-party libraries.
- The maths font set up XeTeX introduces new primitives for
  extending the `\mathcode` and `\mathchardef` commands in TeX,
  allowing the user to specify characters in the whole Unicode set and
  in 256 'math families' (TeX only has 16, which limits some maths
  coding techniques).
- ''Post-processing'' features (A) XeTeX links to the
  `teckit` library so it can apply a `map` file
  that allows transformation of characters in already formed token
  lists, before they are processed in the ''stomach'' for typesetting.
  In this way, a declaration `Ligatures=TeX` is provided,
  which attaches a map directive to the font that transforms the
  character combinations (familiar to TeX users) into a single
  character; for instance `---` is transformed into
  ''&mdash;''.
- ''Post-processing'' features (B) Characters can be assigned to
  an ''interchar token class'' and it is possible to specify tokens to
  be added when there is a transition from one class to another.  The
  packages [`polyglossia`](http://ctan.org/pkg/polyglossia), [`xeCJK`](http://ctan.org/pkg/xeCJK) and
  [`ucharclasses`](http://ctan.org/pkg/ucharclasses) exploit this feature.

Otherwise, the process of typesetting is essentially the same as
TeX's.  (However some changes have also been made in the
hyphenation stage that may give slightly different results if the same
document is compiled with PDFTeX or XeTeX.)

