# Accented words aren't hyphenated

TeX's algorithm for hyphenation gives up when it encounters an
`\accent` command; there are good reasons for this, but it means
that quality typesetting in non-English languages can be difficult.

For TeX macro packages, you can avoiding the effect by using an
appropriately encoded font (for example, a Cork-encoded font&nbsp;&mdash; see
[the EC fonts](./FAQ-ECfonts.html)) which contains accented
letters as single glyphs.  LaTeX users can achieve this end simply
by adding the command
```latex
  \usepackage[T1]{fontenc}
```
to the preamble of their document.  Other encodings (notably
LY1, once promoted by Y&Y inc) may be used
in place of T1.  Indeed, most current 8-bit TeX font
encodings will 'work' with the relevant sets of hyphenation patterns. 

With the advance of XeTeX and LuaTeX to the mainstream, a new
regime for generating hyphenation tables is in place.  For each
language, a table is written in Unicode, and ''8-bit'' versions are
generated for use with various LaTeX font encodings.  Original sets
of patterns remain on CTAN, for use when an older environment
is needed.

