# Generating bitmaps from DVI




In the last analysis, any DVI driver or previewer is generating
bitmaps: bitmaps for placing tiny dots on paper via a laser- or
inkjet-printer, or bitmaps for filling some portion of your screen.
However, it's usually difficult to extract any of those bitmaps any
way other than by screen capture, and the resolution of _that_ is
commonly lamentable.


Why would one want separate bitmaps?  Most often, the requirement is for
something that can be included in HTML generated from (La)TeX
source&nbsp;&mdash; not everything that you can write in (La)TeX can be
translated to HTML (at least, portable HTML that may be
viewed in 'most' browsers), so the commonest avoiding action is to
generate a bitmap of the missing bit.  Examples are maths (a maths
extension to the `*`ML' family is available but not
universally supported by browsers), and 'exotic' typescripts (ones
that you cannot guarantee your readers will have available).  Other
common examples are generation of 
sample bitmaps, and generation for insertion into some other
application's display&nbsp;&mdash; to insert equations into Microsoft
PowerPoint, or to support the enhanced-`emacs` setup called
[`preview`-`latex`](./FAQ-WYGexpts.html).


In the past, the commonest way of generating bitmaps was to generate a
PostScript file of the DVI and then use
[`ghostscript`](http://www.ghostscript.com/) to
produce the required bitmap format (possibly by way of PNM
format or something similar).  This is an undesirable procedure (it is
tedious, involving requires two or three steps that run slowly) but it
served for a long time.


(La)TeX users may now take advantage of two bitmap 'drivers'.  The
longer-established, `dvi2bitmap`, will generate XBM and
XPM formats, the long-deprecated GIF format (which is
now obsolescent, but has finally been relieved of the patent
protection of the LZW compression it uses), and also
the modern (ISO-standardised) PNG format.


`Dvipng` started out as a PNG renderer; from version 1.2 it can also
render to the GIF format. It is designed for speed, in environments that
generate large numbers of PNG files: the `README` mentions
`preview`-`latex`, `LyX`, and a few
web-oriented environments. Note that `dvipng` gives
high-quality output even though its internal operations are optimised
for speed.






