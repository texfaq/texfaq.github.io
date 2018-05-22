# Installing a font provided as MetaFont source

Installing Metafont fonts is (by comparison with other sorts of font) rather
pleasingly simple.  Nowadays, they are mostly distributed just as the
MetaFont source, since modern TeX distributions are able to produce
everything the user needs ''on the fly''; however, if the distribution
_does_ include TFM files, install them too, since they
save a little time and don't occupy much disc space.  Always distrust
distributions of PK font bitmap files: there's no way of
learning from them what printer they were generated for, and naming
schemes under different operating systems are another source of
confusion.

''[Where to install files](./FAQ-install-where.html)''
specifies where the files should go.

Further confusion is introduced by font families whose authors devise rules
for automatic generation of MetaFont sources for generating fonts at
particular sizes; the installation has to know about the rules, as
otherwise it cannot generate font files.  No general advice is
available, but most such font families are now obsolescent.

