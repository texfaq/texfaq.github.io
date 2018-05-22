# Unpacking LaTeX packages




As discussed [elsewhere](./FAQ-dtx.html), the 'ordinary' way to
distribute a LaTeX package is as a pair of files `package.dtx`
and `package.ins`.  If you've acquired such a pair, you simply
process `package.ins` with LaTeX, and the files will appear,
ready for installation.


Other sorts of provision should ordinarily be accompanied by a
`README` file, telling you what to do; we list a few example
configurations.


Sometimes, a directory comes with a bunch of `dtx` files, but
fewer (often only one) `ins` files (LaTeX itself comes
looking like this).  If there is more than one `ins` file,
and in the absence of any instruction in the `README` file, simply
process the `ins` file(s) one by one.


If you're missing the `package.ins` altogether, you need to play
around until something works.  Some `dtx` files are
''self-extracting''&nbsp;&mdash; they do without an `ins` file, and once
you've processed the `package.dtx`, `package.sty` has
automagically appeared.  Various other oddities may appear, but the
archivists aim to have `README` file in every package, which
should document anything out of the ordinary with the distribution.


