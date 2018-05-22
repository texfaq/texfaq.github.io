# Letters and the like

LaTeX itself provides a [`letter`](http://ctan.org/pkg/letter) document class, which is
widely disliked; the present author long since gave up trying with
it.  If you nevertheless want to try it, but are irritated by its way
of vertically-shifting a single-page letter, try the following hack:
```latex
\makeatletter
\let\@texttop\relax
\makeatother
```
in the preamble of your file.

Doing-it-yourself is a common strategy; Knuth (for use with
Plain TeX, in the TeXbook), and Kopka and Daly (in their Guide to
LaTeX) offer worked examples.  (The latest version of Knuth's
macros appear in his ''local library'' dump on the archive, which is
updated in parallel with new versions of TeX&nbsp;&mdash; so not very often&hellip;)

Nevertheless, there _are_ contributed alternatives&nbsp;&mdash; in fact
there are an awfully large number of them: the following list, of
necessity, makes but a small selection.

The largest, most comprehensive, class is [`newlfm`](http://ctan.org/pkg/newlfm); the `lfm`
part of the name implies that the class can create letters, faxes and
memoranda.  The documentation is voluminous, and the package seems
very flexible.

Other classes recommended for inclusion in this FAQ are
[`akletter`](http://ctan.org/pkg/akletter) and [`isodoc`](http://ctan.org/pkg/isodoc).

The [`dinbrief`](http://ctan.org/pkg/dinbrief) class, while recommended, is only documented in
German.

There are letter classes in each of the excellent
[`KOMA-script`](http://ctan.org/pkg/KOMA-script) ([`scrlttr2`](http://ctan.org/pkg/scrlttr2): documentation is available in
English) and [`ntgclass`](http://ctan.org/pkg/ntgclass) ([`brief`](http://ctan.org/pkg/brief): documentation in Dutch
only) bundles.  While these are probably good (since the bundles
themselves inspire trust) they've not been specifically recommended by
any users.

