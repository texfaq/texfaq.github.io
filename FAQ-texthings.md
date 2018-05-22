# Things with ''TeX'' in the name

New TeX users are often baffled by the myriad terms with ''TeX''
in the name.  The goal of this answer is to clarify some of the more
common such terms.

#### TeX itself
TeX proper is a typesetting system based on a set of low-level
control sequences that instruct TeX how to lay out text on the
page.  For example, `\hskip` inserts a given amount of horizontal
space into the document, and `\font` makes a given font available
in a document.  TeX is fully programmable using an integrated macro
scripting language that supports variables, scoping, conditional
execution, control flow, and function (really, macro) definitions.
See 
[what is TeX?](./FAQ-whatTeX.html) for some background
information on TeX and 
[some reference documents](./FAQ-ref-doc.html) for pointers to
descriptions of TeX control sequences, data types, and other key
parts of TeX.

#### TeX macro packages (a.k.a.&nbsp;TeX formats)
Some of TeX's control sequences are tedious to use directly; they are
intended primarily as building blocks for higher-level&nbsp;&mdash; and therefore
more user-friendly&nbsp;&mdash;  abstractions.  For example, there is no way in
base TeX to specify that a piece of text should be typeset in a
larger font.  Instead, one must keep track of the current size and
typeface, load a new font with the same typeface but a (specified)
larger size, and tell TeX to use that new font until instructed
otherwise.  Fortunately, because TeX is programmable, it is
possible to write a macro that hides this complexity behind a simple,
new control sequence.  (For example, it is possible to define
`\larger{my text}` to typeset ''my text'' in
at a font size next larger than the current one.)

While some users write their own, perfectly customized set of
macros&nbsp;&mdash; which they then typically reuse across many documents&nbsp;&mdash; it is
far more common to rely upon a _macro package_, a collection of
TeX macros written by experts.  For the user's convenience, these
macro packages are often combined with the base TeX engine into a
standalone executable.  The following are some of that macro packages
that you are likely to encounter:

  - Plain TeX (executable: `tex`)
  See
  [Books on TeX and Plain TeX](./FAQ-tex-books.html),
  [Online introductions: TeX](./FAQ-man-tex.html),
  [Should I use Plain TeX or LaTeX?](./FAQ-plainvltx.html) and
  [Freely available (La)TeX books](./FAQ-ol-books.html).
  Note that the Plain TeX executable is called `tex`; the
  base TeX engine is generally provided by a separate executable
  such as `initex` or as a `-ini` flag to
  `tex`.

  - LaTeX (executable: `latex`)
  See
  [Books on TeX and its relations](./FAQ-latex-books.html),
  [(La)TeX Tutorials, etc.](./FAQ-tutorials*.html),
  [Online introductions: LaTeX](./FAQ-man-latex.html) and
  [Specialized (La)TeX tutorials](./FAQ-tutbitslatex.html).
  Note that there have been two major versions of LaTeX: LaTeX 2e
  refers to the current version of LaTeX while LaTeX 2.09 is the
  long-since-obsolete (since 1994) version (cf.&nbsp;
  [What is LaTeX 2e?](./FAQ-latex2e.html) for more information).

  - CONTeXT (executable: `texmfstart`)
  See
  [What is CONTeXT?](./FAQ-context.html).

  - Texinfo (executables: `tex`, `makeinfo`)
  See
  [What is Texinfo?](./FAQ-texinfo.html).  `makeinfo`
  converts Texinfo documents to HTML, DocBook, Emacs info,
  XML, and plain text.  `Tex` (or wrappers such as
  `texi2dvi` and `texi2pdf`) produce one of TeX's
  usual output formats such as DVI or PDF.  Because
  `tex` loads the Plain TeX macros, not the Texinfo ones,
  a Texinfo document must begin with
    `\input`` texinfo`
  explicitly load the Texinfo macro package.

  - Eplain&nbsp;&mdash; Extended Plain TeX (executable: `eplain`)
  See
  [What is Eplain?](./FAQ-eplain.html).

#### Modified `tex` executables
The original `tex` executable was produced in the late 1970s
(cf.&nbsp;[What is TeX?](./FAQ-whatTeX.html)) and consequently
lacked some features that users have come to expect from today's
software.  The following programs address these issues by augmenting
the TeX engine with some additional useful features:

  - PDFTeX (executable: `pdftex`)
  TeX, which predates the PDF file format by a decade,
  outputs files in a TeX-specific format called DVI
  (cf.&nbsp;[What is a DVI file?](./FAQ-dvi.html)).  In
  contrast, PDFTeX can output both DVI _and_ PDF
  files.  In PDF mode, it lets documents exploit various
  PDF features such as hyperlinks, bookmarks, and annotations,
  PDFTeX additionally supports two sophisticated micro-typographic
  features: character protrusion and font expansion.  See
  [What is PDFTeX?](./FAQ-whatpdftex.html).

  - XeTeX (executable: `xetex`)
  XeTeX reads UTF-8 encoded Unicode input, and extends
  TeX's font support to include 'modern' formats such as TrueType
  and OpenType; these extensions to its capabilities make it
  well-suited to multi-lingual texts covering different writing
  systems.  See [What is XeTeX?](./FAQ-xetex.html).

  - LuaTeX (executable: `luatex`)
  TeX is programmed in its own arcane, integrated, macro-based
  programming language.  LuaTeX adds a second programming engine
  using a modern scripting language, Lua, which is 'embedded' in a
  TeX-alike engine; it too reads UTF-8 and uses TrueType
  OpenType fonts.  See 
  [What is LuaTeX?](./FAQ-luatex.html).

  - &epsilon;-TeX (executable: `etex`)
  &epsilon;-TeX is an extension of TeX's programming interface; as such
  it's only indirectly useful to end users, but it can be valuable to
  package developers; there is an increasing number of macro packages
  that require the use of &epsilon;-TeX.  As well as existing in
  `etex`, &epsilon;-TeX features are usually available in the
  `pdftex` executables provided in the standard
  distributions; XeTeX and LuaTeX also provide &epsilon;-TeX's
  programming facilities.    See 
  [What is &epsilon;-TeX?](./FAQ-etex.html).

  (Note: &epsilon;-TeX, which enhances the TeX engine, is not to be
  confused with Eplain, which enhances the Plain TeX macro
  package.)

Because each of the above derive from a base TeX engine, it is in
principle possible to combine any of them with one of the TeX macro
packages listed earlier to produce 'extended' executables.  For
example, the `pdflatex`, `xelatex` and
`lualatex` executables each combine LaTeX with an enhanced
TeX engine.  Indeed, most (if not all) of the development of
Context is now using LuaTeX.

Some executables combine the features of multiple enhanced TeX
engines: for example, `pdftex` now (in current distributions)
offers both PDFTeX and &epsilon;-TeX extensions into a single executable
This executable may be offered with a LaTeX format (as
`latex` or `pdflatex`) or with a Plain TeX format
(as `pdftex`).  (`Tex` remains with an unadorned
TeX executable using Plain TeX, for people such as Knuth himself,
who want the certainty of the ''original''.)

#### TeX distributions
A _TeX distribution_ provides a structured collection of
TeX-related software.  Generally, a TeX distribution includes a
set of ''core'' TeX executables such as `tex` and
`latex`; various fonts optimized for use with TeX; helper
programs such as the BibTeX bibliographic-database formatter,
editors, integrated development environments, file-format-conversion
programs; numerous LaTeX packages; configuration tools; and any
other goodies the distributor chooses to include.

Commonly encountered TeX distributions include TeX&nbsp;Live,
MiKTeX and MacTeX; older ones include ozTeX,
CMacTeX and teTeX.  MiKTeX is also available as the
basis of the ProTeXt bundle, distributed on the TeX&nbsp;Live
DVD mailing, as well as being available online.

Some TeX distributions target a specific operating system and/or
processor architecture; others run on multiple platforms.  Many TeX
distributions are free; a few require payment.  See 
[(La)TeX for different machines](./FAQ-TeXsystems.html) for a
list of free and shareware TeX distributions and 
[Commercial TeX implementations](./FAQ-commercial.html) for a
list of commercial TeX distributions.

#### Summary
What does it all mean?&nbsp;&mdash; the simple lists of objects, alone, offer
no help for the beginner.  The FAQ team expects this answer
only to be of use for people who are seeking guidance elsewhere
(possibly within these FAQs) and coming across an unexpected
name like ''blahTeX''.

The subject matter covered by this answer is also addressed in a page
on the TUG site, 
''[the Levels of TeX](http://tug.org/levels.html)''.

