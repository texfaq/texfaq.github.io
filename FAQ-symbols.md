# Where can I find the symbol for &hellip;

There is a wide range of symbols available for use with TeX, most
of which are not shown (or even mentioned) in (La)TeX books.
_The Comprehensive LaTeX Symbol List_ (by Scott Pakin
_et al._) illustrates over 2000 symbols, and details the
commands and the LaTeX packages needed to produce them.

However, while the symbol list is a wonderful resource, it is never
easy to find a particular symbol there.  A graphical 
[symbol search](http://detexify.kirelabs.org/classify.html) is
available on the web.  The site provides you a scratch area on which
you draw the symbol you're thinking of, with your mouse; when you've
finished drawing, the classifier tries to match your sketch with
symbols it knows about.  The matching process is pretty good, even for
the sketches of a _really_ poor draughtsman (such as the present
author), and it's often worth trying more than once.  'Detexify apps'
are available for both Android and iPhone devices, you can use them to
draw the symbol with your fingertip&nbsp;&mdash; a less challenging procedure
than using your workstation's mouse, by all accounts!

If you are using Unicode maths in XeTeX or LuaTeX, your own
distribution ought to provide the Unicode maths symbol table
`unimath-symbols.pdf`; this lists the things available in the
commonly-used mathematics fonts.  (If the file isn't already available
on your system, you can download it from CTAN, where it live
with the [`unicode-math`](http://ctan.org/pkg/unicode-math) package.

Other questions in this FAQ offer specific help on kinds of
symbols:
  

-  [Script fonts for mathematics](./FAQ-scriptfonts.html)
-  [Fonts for the number sets](./FAQ-numbersets.html)
-  [Typesetting the principal value integral](./FAQ-prinvalint.html)

  are processed versions PDF form for both A4 and letter paper.

