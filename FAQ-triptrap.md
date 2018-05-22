# How can I be sure it's really TeX?

TeX (and MetaFont and MetaPost) are written in a
  ['literate' programming](./FAQ-lit.html) language called `Web`
which is designed to be portable across a wide range of computer
systems.  How, then, is a new version of TeX checked?

Of course, any sensible software implementor will have his own suite
of tests to check that his software runs: those who port TeX and
its friends to other platforms do indeed perform such tests.

Knuth, however, provides a 'conformance test' for both TeX
([`trip`](http://ctan.org/pkg/trip)) and MetaFont ([`trap`](http://ctan.org/pkg/trap)).
He characterises these as 'torture tests': they are designed not to
check the obvious things that ordinary typeset documents, or font
designs, will exercise, but rather to explore small alleyways off the
main path through the code of TeX.  They are, to the casual reader,
pretty incomprehensible!

Once an implementation of TeX has passed its [`trip`](http://ctan.org/pkg/trip) test, or
an implementation of MetaFont has passed its [`trap`](http://ctan.org/pkg/trap) test, then it
may in principle be distributed as a working version.  (In practice,
any distributor would test new versions against ''real'' documents or
fonts, too; while [`trip`](http://ctan.org/pkg/trip) and [`trap`](http://ctan.org/pkg/trap) test bits of
pathways within the program, they don't actually test for any real
world problem.)

