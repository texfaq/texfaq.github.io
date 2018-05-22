# What is the TDS?

TDS is an acronym for ''TeX Directory Structure''; it
specifies a standard way of organising all the TeX-related files on
a computer system.

Most modern distributions arrange their TeX files in conformance
with the TDS, using both a 'distribution' directory tree and a
(set of) 'local' directory trees, each containing TeX-related
files.  The TDS recommends the name `texmf` for the name
of the root directory (folder) of an hierarchy; in practice there are
typically several such trees, each of which has a name that compounds
that (e.g., `texmf-dist`, `texmf-var`).

Files supplied as part of the distribution are put into the
distribution's tree, but the location of the distribution's hierarchy is
system dependent.  (On a Unix system it might be at
`/usr/share/texmf` or `/opt/texmf`, or a similar location.)

There may be more than one 'local' hierarchy in which additional files
can be stored.  An installation will also typically offer a local
hierarchy, while each user may have an individual local hierarchy.

The TDS itself is published as the output of a TUG 
[Technical Working Group](./FAQ-TUG*.html).  You may browse an
[on-line version](http://tug.org/tds/) of the standard, and
copies in several other formats (including source) are available on
CTAN.

