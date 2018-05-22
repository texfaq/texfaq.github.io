# Typesetting music in TeX

The current best bet for music typesetting is to use
[`musixtex`](http://ctan.org/pkg/musixtex).  [`Musixtex`](http://ctan.org/pkg/Musixtex) is a three-pass system that
has a TeX-based pass, a processing pass and then a further TeX
pass.  The middle pass, a program called `musixflx`,
optimises the spacing and sorts out slurs and ties.
[`Musixtex`](http://ctan.org/pkg/Musixtex) is demanding of TeX resources, and any
significant score requires that typesetting is done using &epsilon;-TeX,
whose expanded variable- and box-register ranges allow for more of the
''parallel'' activities that abound in a music score.
Of course, [`musixtex`](http://ctan.org/pkg/musixtex) also requires music fonts; those are
available in a separate package on the archive.

[`Musixtex`](http://ctan.org/pkg/Musixtex) requires pretty arcane input; most people using it
actually prepare (less obscure) input for `pmx`, whose output
is TeX input suitable for [`musixtex`](http://ctan.org/pkg/musixtex).

A further preprocessor, `M-Tx`, allows preparation of music
with lyrics; `M-Tx`s output is fed into `pmx`, and
thence to [`musixtex`](http://ctan.org/pkg/musixtex).

An alternative path to music examples within a (La)TeX document is
[`Lilypond`](http://www.lilypond.org).
`Lilypond` is (at heart) a batch music typesetting system
with plain text input that does most of its work without TeX.
`Lilypond`s input syntax is less cryptic than is
MusiXTeX's, though similar quality is achieved.  The
`lilypond`
[FAQ](http://lilypond.org/web/about/faq) mentions programs
with graphical user interfaces, that export lilypond output.

For occasional music references (sharp and flat signs, notes, clefs
and so on, there is a (LaTeX) package (with associated font) called
[`lilyglyphs`](http://ctan.org/pkg/lilyglyphs).  This uses `lilypond`s fonts (which
are included in the package), and also provides the means to add stuff
from other sources.

Another alternative in the production of music is the ABC
notation, which was developed to notate the traditional music of
Western Europe (which can be written on a single stave), though it can
be used much more widely.  A front end to [`musictex`](http://ctan.org/pkg/musictex) (see
below), `abc2mtex`, makes ABC typesetting possible.

The program `midi2tex` can also generate [`musictex`](http://ctan.org/pkg/musictex)
output, from MIDI files.

The history of music in TeX goes back some time; the earliest
''working'' macros were MuTeX, by Angelika Schofer and Andrea
Steinbach.  MuTeX was very limited, but it was some time before
Daniel Taupin took up the baton, and developed MusicTeX, which
allows the typesetting of polyphonic and other multiple-stave music;
MusicTeX remains available, but is no longer recommended.

The first version of MusixTeX was developed by Andreas Egler, but
he withdrew from the project to work on another package, OpusTeX.
That never reached the mainstream, and is no longer maintained.  The
current recommended way of doing OpusTeX's job is
[`gregorio`](http://home.gna.org/gregorio/), which can
in principle feed into a TeX-based document.

Once Andreas Egler had withdrawn (his last version of
[`musixtex`](http://ctan.org/pkg/musixtex) is preserved on the archive), Daniel Taupin took up
the development, leading to the [`musixtex`](http://ctan.org/pkg/musixtex) used today.

