# 'Watermarks' on every page

It's often useful to place some text (such as 'DRAFT') in the
background of every page of a document.  For LaTeX users, the
simplest way to do this uses the [`draftcopy`](http://ctan.org/pkg/draftcopy) package.  This
can deal with
many types of DVI processors (in the same way that the graphics
package does) and knows translations for the word 'DRAFT' into a wide
range of languages (though you can choose your own word, too).
Unfortunately, however, the package relies on PostScript specials, and will
therefore fail if you are viewing your document with `xdvi`,
and won't even compile if you're using PDFLaTeX.  (PDFLaTeX
users need one of the other solutions below.)

The [`wallpaper`](http://ctan.org/pkg/wallpaper) package builds on [`eso-pic`](http://ctan.org/pkg/eso-pic) (see
below).  Apart from the single-image backdrops described above
(''wallpapers'', of course, to this package), the package provides
facilities for tiling images.  All its commands come in pairs: one for
''general'' use, and one applying to the current page only.

The [`draftwatermark`](http://ctan.org/pkg/draftwatermark) package uses the same author's
[`everypage`](http://ctan.org/pkg/everypage) package to provide a simple interface for adding
textual ('DRAFT'-like) watermarks.

The [`xwatermark`](http://ctan.org/pkg/xwatermark) package provides very flexible watermarking,
with a ''modern'' (key-value) interface.

More elaborate watermarks may be achieved using the [`eso-pic`](http://ctan.org/pkg/eso-pic)
package, or by using [`everypage`](http://ctan.org/pkg/everypage) (see below).
[`Eso-pic`](http://ctan.org/pkg/Eso-pic) attaches a `picture` environment to
every page as it is shipped out; the user can put things into that
environment: the package provides commands for placing things at
certain useful points (like ''text upper left'' or ''text centre'') in
the picture, but the user is at liberty to do what he or she likes.

[`Eso-pic`](http://ctan.org/pkg/Eso-pic) is, in turn, built upon the package
[`atbegshi`](http://ctan.org/pkg/atbegshi).  That package has the capability to produce
watermarks _on top of_ the other material on the page; this
doesn't sound very ''watermark-like'', but can be useful on pages
where the watermark would otherwise be hidden by graphics or the
like.  The [`atbegshi`](http://ctan.org/pkg/atbegshi) command that [`eso-pic`](http://ctan.org/pkg/eso-pic) uses is
`\AtBeginShipoutUpperLeft`; `\AtBeginShipoutUpperLeftForeground`
is what's needed instead to place the material on top of the rest of
the content of the page.

[`Everypage`](http://ctan.org/pkg/Everypage) allows you to add ''something'' to every page, or
to a particular page; you therefore need to construct your own
apparatus for anything complicated.

Finally, one can use the `pdftk` untility; with it, the
command:
```latex
pdftk a.pdf background b.pdf output c.pdf
```
will recreate `a.pdf` as `c.pdf`, having used the first page
of `b.pdf` as background on every page.  If you have a standard
background (''DRAFT'' or ''SECRET'', or whatever) used in several
files, `pdftk` might well be attractive.

`Pdftk` is available as a command line tool; it is available
in most linux distritbutions, but may be downloaded from its
[home site](http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)

