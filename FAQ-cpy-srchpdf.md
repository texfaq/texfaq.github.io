# Copy-paste-able/searchable PDF files




PDF files generated from TeX (and friends), will by default
hold their text in the encoding of the original TeX font used by
the document.


When PDF readers, etc., offer copy-paste or searching
functions, the operations take place on the glyph codes used for the
fonts selected by the document.  This is fine, for the simplest
documents (in English, at least); the problem comes when you're using
an inflected language (with accented letters, or composite glyphs
such as '&aelig;')&nbsp;&mdash; TeX will typically use a non-standard
encoding, and there are likely be problems, since PDF readers
assume the text is presented in Unicode.


For PDF generated from LaTeX (the DVI being
converted, by whatever means), or from PDFLaTeX, the character
codes used in the PDF file are in fact those of the document's
[font encoding](./FAQ-whatenc.html); if you're using OT1 or
T1, your document will be OK for almost all ASCII
characters, but it's likely that anything ''out of the ordinary'' will
not be represented properly.  (Of course, PDF generated from
XeTeX- or LuaTeX-based formats is going to be OK, since
those engines work in Unicode througout.)


The solution comes from the character-mapping facilities in the
PDF specification: the file may specify a table of translations
of characters present in the coding used in the file, to a Unicode
version of the characters.


Packages [`cmap`](http://ctan.org/pkg/cmap) and [`mmap`](http://ctan.org/pkg/mmap) both offer means of
generating such tables ([`mmap`](http://ctan.org/pkg/mmap) has wider coverage, including
the various maths encodings); both work with PDFTeX and no other
engine.  Thus your document becomes something like:
```latex
\documentclass{article}
\usepackage{mmap} % (or cmap)
\usepackage[T1]{fontenc}
... % your other packages
\begin{document}
... % your actual text
```


Unfortunately, the packages only work with fonts that are directly
encoded, such as the default (Computer Modern, i.e., `cm`
fonts, and things such as `cm-super` or the `Latin`
`Modern` sets.  Fonts like Adobe
Times Roman (which are encoded for (La)TeX use via virtual fonts)
are not amenable to this treatment.












