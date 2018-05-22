# What was the CTAN `nonfree` tree?

When CTAN was founded, in the 1990s, it was unusual to publish
the terms under which a TeX-related package was distributed (or, at
any rate, to publish those terms formally).

With the advent of the TeX _distributions_, however, people
started to realise the need for such information, to protect those who
create, distribute or sell the discs that hold the packages, etc.
With the licence information available, the distributors can decide
which packages may be distributed.

The CTAN team decided that it would be useful for users (and
distributors, not to say package authors) to separate packages that
were candidates for distribution, and those that were in some sense
''not free''.  Thus was the `nonfree` tree born.

From the start, the `nonfree` tree was controversial: the terms
under which a package would be placed on the tree were hotly
contested, and the CTAN team were only able slowly to populate
the tree.  It became obvious to the team that the project would never
have been completed.

The CTAN catalogue now records the nature of the licences of a
good proportion of the packages it describes (though there remain
several for which the licence is unknown, which is as good, for the
distributors, as a licence forbidding distribution).  Since the
catalogue's coverage of CTAN is good (and slowly improving),
the general rule for distributors has become
''if the package is listed in the catalogue, check there to see
whether you should distribute; if the package is not listed in the
catalogue, don't think of distributing it''.
(The catalogue only has a modest 
[list of licences](http://www.ctan.org/license/), but it covers the set used
by packages on CTAN, with a wild-card `other-free`
which covers packages that the CTAN administrators believe to
be free even though the authors haven't used a standard licence.)

There is a corollary to the 'general rule': if you notice something
that ought to be in the distributions, for which there is no catalogue
entry, please let the CTAN team (<a href="mailto:ctan@dante.de">ctan@dante.de</a>) know.
It may well be that the package has simply been missed, but some aren't
catalogued because there's no documentation and the team just doesn't
understand the package.

In the light of the above, the `nonfree` tree is being
dismantled, and its contents moved (or moved _back_) to the main
CTAN tree.  So the answer to the question is, now, ''the
nonfree tree was a part of CTAN, whose contents are now in
the main tree''.

