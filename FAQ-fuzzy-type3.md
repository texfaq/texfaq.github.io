# The wrong type of fonts in PDF




This is far the commonest problem: the symptom is that text in the
document looks ''fuzzy''.


Most people use `Adobe` `Acrobat` `Reader`
to view their PDF: `Reader` is distributed free of
charge, and is widely available, for all its faults.  One of those
faults is its failure to deal with bitmap fonts (at least, in all
versions earlier than version&nbsp;6, all of which copies are pretty old,
now&nbsp;&hellip; but some are occasionally found).


So we don't want bitmap fonts in our PostScript: with them, characters show
up in `Reader`s display as blurred blobs which are often not
even recognisable as the original letter, and are often not properly placed
on the line.  Nevertheless, even now, most TeX systems have
`dvips` configured to use
[`pk` files](./FAQ-pk.html) in its output.  Even
PDFTeX will use `pk` files if it can see no alternative for
a font in the document it is processing.


Our remedy is to use
''[Adobe Type&nbsp;1](./FAQ-adobetypen.html)''
versions of the fonts we need.  Since Adobe are in the
business of selling Type&nbsp;1 fonts, `Reader` was of course made
to deal with them really rather well, from the very beginning.


Of course, if your document uses nothing but fonts that came from
Adobe in the first place&nbsp;&mdash; fonts such as `Times` that
appear in pretty much every PostScript printer, or such as Adobe
`Sabon` that you pay extra for&nbsp;&mdash; then there's no problem.


But most people use `Computer` `Modern` to start
with, and even those relative sophisticates who use something as
exotic as `Sabon` often find themselves using odd characters
from CM without really intending to do so.  Fortunately, rather
good versions of the CM fonts are available from the AMS
(who have them courtesy of 
[Blue Sky Research](./FAQ-commercial.html) and Y&Y).


Most modern systems have the fonts installed ready to use; and any
system installed less than 3&nbsp;years ago has a `dvips`
configuration file `pdf` that signals the use of the
CM fonts, and also sets a few other parameters to improve
`dvips` output.  Use this configuration as:
```latex
dvips -Ppdf myfile -o myfile.ps
```
This may produce a warning message about failing to find the
configuration file:
```latex
dvips: warning: no config file for `pdf'
```
or something similar, or about failing to find a font file:
```latex
dvips: ! Couldn't find header file cmr10.pfb
```
Either of these failures signals that your
system doesn't have the fonts in the first place.


A way of using the fonts that doesn't involve the sophistication of
the `-Ppdf` mechanism is simply to load maps:
```latex
dvips -Pcmz -Pamz myfile -o myfile.ps
```
You may encounter the same warning messages as listed above.


If your system does not have the fonts, it won't have the
configuration file either; however, it might have the configuration
file without the fonts.  In either case, you need to
[install the fonts](./FAQ-inst1cm.html).




