# Previewing files using Type 1 fonts

Originally, free TeX previewers were only capable of displaying
bitmap (PK) fonts, but free Type&nbsp;1 font rendering software has
been available for some time, and many previewers now use such
facilities.

The alternative, for previewers, is automatic generation of the
requisite PK files (using `gsftopk`, or similar,
behind the scenes).

In the unlikely event that your previewer isn't capable of either, you
have a couple options:
  

-  Convert the DVI file to PostScript and use a
    PostScript previewer.  Some systems offer this capability as
    standard, but most people will need to use a separate previewer such
    as [`ghostscript`](http://www.ghostscript.com/) or
    `ghostscript`-based viewers
    such as (free) `gv` or (shareware)
    [`gsview`](http://www.ghostgum.com.au/).
-  If you have the PostScript fonts in Type&nbsp;1 format, use
    `ps2pk` or `gsftopk` (designed for use with the
    [`ghostscript`](http://www.ghostscript.com/) fonts) to
    make PK bitmap fonts which
    your previewer will understand (a process similar to the way some
    browsers fo the job 'automatically') This can produce adequate results,
    also suitable for printing with non-PostScript devices.  (Note: if you
    purchased the fonts, it is advisable to check that their licence
    permits you to convert them, for private use, in this way.)

