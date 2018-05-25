---
category: misc
permalink: /FAQ-biblatex
date: 2018-05-24
---

# Replacing the BibTeX&ndash;LaTeX mechanism

## Background

As originally conceived, BibTeX was a program for creating bibliographies for
technical documents, in English. People have contributed mechanisms for a
degree of multilingual use, while an extension (`bibtex8`) allows use with
8-bit character codes, thus providing some multilingual capabilities. In
addition, specialist BibTeX style files are available for use in non-technical
papers.

BibTeX uses a style language whose mechanisms are unfamiliar to
most current programmers: it's difficult to learn, but since there are
few opportunities to write the language, it's also difficult to become
fluent (in the way that so many people fluently write the equally
arcane TeX macro language). 

There are two parts to a bibliography system; processing the database
of citations, and typesetting the results.  The existing BibTeX
system provides a means of processing the database, and there are
macros built into LaTeX, as well as many LaTeX packages, that
process the results.

Whilst a number of approaches have been suggested to go beyond the
BibTeX&ndash;LaTeX, two stand out for their availability and usage:
`biblatex` and `amsref`.

## `biblatex`/Biber

The [`biblatex`](https://ctan.org/pkg/Biblatex) package provides a programmable
approach to creating bibliographies in which control takes place in the (La)TeX
code, rather than a BibTeX style file. This means that output can be modified
on a per-document basis. Moreover, with full availablity of the data in the
LaTeX run, a much wider range of bibliographic outcomes are possible. This is
particularly important in supporting citation styles in the humanities. The
`biblatex` package also integrates many ideas from existing BibTeX-focussed
systems, meaning that all interfaces are consistent (and compatible).

Extracting data from `.bib` files for use with `biblatex` _can_ be achieved
using ''classical'' BibTeX: however, this is limited. The `biblatex` package
is co-developed with the Biber program. This is a Unicode-aware system which
can extract data from `.bib` files, sort according to a range of language
criteria, and more. It is tied to `biblatex` (the output format is targeted
at the requirements of `biblatex`).

### `amsrefs`

The [`amsrefs`](https://ctan.org/pkg/amsrefs) uses a transformed `.bib` file
which is expressed as LaTeX macros.  (The package provides a
BibTeX style that performs the transformation, so that a LaTeX
source containing a `\nocite{*}` command enables BibTeX to
produce a usable `amsrefs` bibliography database.)


