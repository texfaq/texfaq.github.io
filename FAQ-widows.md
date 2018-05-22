# Controlling widows and orphans

Widows (the last line of a paragraph at the start of a page) and
orphans (the first line of paragraph at the end of a page) interrupt
the reader's flow, and are generally considered ''bad form'';
(La)TeX takes some precautions to avoid them, but completely
automatic prevention is often impossible.  If you are typesetting your
own text, consider whether you can bring yourself to change the
wording slightly so that the page break will fall differently.

The (La)TeX page maker, when forming a page, takes account of variables
`\widowpenalty` and `\clubpenalty` (which relates to orphans!).
These penalties are usually set to the moderate value of `150`; this
offers mild discouragement of bad breaks.  You can increase the values
by saying (for example) `\widowpenalty``=500`; however, vertical
lists (such as pages are made of) typically have rather little
stretchability or shrinkability, so if the page maker has to balance
the effect of stretching the unstretchable and being penalised, the
penalty will seldom win.  Therefore, for typical layouts, there are
only two sensible settings for the penalties: finite (150 or 500, it
doesn't matter which) to allow widows and orphans, and infinite (10000
or greater) to forbid them.

The problem can be avoided by allowing the pagemaker to run pages
short, by using the `\raggedbottom` directive; however, many
publishers insist on the default `\flushbottom`; it is seldom
acceptable to introduce stretchability into the vertical list, except
at points (such as section headings) where the document design
explicitly permits it.

Once you've exhausted the automatic measures, and have a final draft
you want to ''polish'', you should proceed to manual measures.  To
get rid of an orphan is simple: precede the paragraph with
`\clearpage` and the paragraph can't start in the wrong place.

Getting rid of a widow can be more tricky.  Options are
  

-  If the previous page contains a long paragraph with a short last
    line, it may be possible to set it 'tight': write
    `\looseness``=-1` immediately after the last word of the
    paragraph.
-  If that doesn't work, adjusting the page size, using
    `\enlargethispage{`\baselineskip`}` to 'add a line' to
    the page, which may have the effect of getting the whole paragraph
    on one page.
-  Reducing the size of the page by
    `\enlargethispage{-`\baselineskip`}` may produce a
    (more-or-less) acceptable ''two-line widow''.

Note that `\looseness``=1` (which should increase the line
length by one) seldom has the right effect&nbsp;&mdash; the looser paragraph
typically has a one-word final line, which doesn't look much better
than the original widow.

