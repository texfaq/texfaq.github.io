# Why bother with [`inputenc`](http://ctan.org/pkg/inputenc) and [`fontenc`](http://ctan.org/pkg/fontenc)?




The standard input encoding for Western Europe (pending the arrival of
Unicode) is ISO&nbsp;8859&ndash;1 (commonly known by the standard's
subtitle 'Latin-1').  Latin-1 is remarkably close, in the codepoints
it covers, to the (La)TeX T1 encoding.


In this circumstance, why should one bother with [`inputenc`](http://ctan.org/pkg/inputenc)
and [`fontenc`](http://ctan.org/pkg/fontenc)?  Since they're pretty exactly mirroring each
other, one could do away with both, and use just [`t1enc`](http://ctan.org/pkg/t1enc),
despite its [shortcomings](./FAQ-t1enc.html).


One doesn't do this for a variety of small reasons:


- Confusion You've been happily working in this mode, and for
  some reason find you're to switch to writing in German: the effect
  of using `&szlig;` is somewhat startling, since T1
  and Latin-1 treat the codepoint differently.
- Compatibility You find yourself needing to work with a
  colleague in Eastern Europe: their keyboard is likely to be set to
  produce Latin-2, so that the simple mapping doesn't work.
- Traditional LaTeX You lapse and write something like
  `\'{e}` rather than typing `&eacute;`; only [`fontenc`](http://ctan.org/pkg/fontenc)
  has the means to convert this LaTeX sequence into the T1
  character, so an `\accent` primitive slips through into the
  output, and hyphenation is in danger.


The [`inputenc`](http://ctan.org/pkg/inputenc)&ndash;[`fontenc`](http://ctan.org/pkg/fontenc) combination seems slow and
cumbersome, but it's safe.


