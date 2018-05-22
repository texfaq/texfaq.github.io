# How does LaTeX relate to Plain TeX?

TeX provides a programming language (of sorts), and any document
more complex than the trivial ''hello world'' will need some
programming.

LaTeX and Plain TeX are both libraries written for use with
TeX; the user commands `tex` and `latex` invoke
TeX-the-program with a library incorporated.  Libraries that may be
loaded in this way are known as '_formats_'; when a user ''runs''
Plain TeX or LaTeX, they are running TeX (the program) with an
appropriate format.  The documents are then programmed in Plain TeX
or LaTeX _language_.

Plain TeX and LaTeX exist because writing your documents in 'raw'
TeX could involve much reinventing of wheels for every document.
Both languages serve as convenient aids to make document writing more
pleasant: LaTeX provides many more items to support 'common'
requirements of documents.

As such, LaTeX is close to being a superset of Plain TeX, but
some Plain TeX commands don't work as expected when used in a
LaTeX document.  Using Plain TeX commands in a LaTeX document
is an occasional source of bugs: the output is _almost_ right,
but some things are misplaced.

So, Plain TeX and LaTeX are related through a common parent, and
are designed for use in similar jobs; programming for one will often
not work correctly in the other.

