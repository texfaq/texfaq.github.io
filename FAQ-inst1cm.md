# Installing the Type&nbsp;1 versions of the CM&nbsp;fonts

This is a specialised case of [installing a font](./FAQ-instfont.html),
but it is almost never necessary&nbsp;&mdash; it's inconceivable that any (even
remotely) recent system will _not_ have the fonts already
installed.  You can confirm this (near-inevitable) fact by trying the
fonts.  On a system that uses `dvips` (almost all do), try
the sequence:
```latex
latex sample2e
dvips -o sample2e.ps sample2e
```
at a ''command prompt'' (`shell`, in a Unix-style system,
''DOS box'' in a Windows system).

If the command works at all, the console output of the command will
include a sequence of Type&nbsp;1 font file names, listed as
`<_path_/cmr10.pfb>` and so on; this is `dvips`
telling you it's copying information from the Type&nbsp;1 font, and you
need do no more.

If the test has failed, you need to install your own set of the fonts;
the distribution (including all the fonts the AMS designed and
produced themselves) is now described as [`amsfonts`](http://ctan.org/pkg/amsfonts).  The
bundle contains metric and map files&nbsp;&mdash; all you need to
[install the fonts](./FAQ-instt1font.html).

