# (La)TeX makes overfull lines

When TeX is building a paragraph, it can make several attempts to
get the line-breaking right; on each attempt it runs the same
algorithm, but gives it different parameters.  You can affect the way
TeX's line breaking works by adjusting the parameters: this answer
deals with the ''tolerance'' and stretchability parameters.  The other
vital 'parameter' is the set of hyphenations to be applied: see
''[my words aren't being hyphenated](./FAQ-nohyph.html)''
(and the questions it references) for advice.

If you're getting an undesired ''overfull box'', what has happened is
that TeX has given up: the parameters you gave it don't allow it to
produce a result that _doesn't_ overfill.  In this circumstance,
Knuth decided the best thing to do was to produce a warning, and to
allow the user to solve the problem.  (The alternative, silently to go
beyond the envelope of ''good taste'' defined for this run of TeX,
would be distasteful to any discerning typographer.)  The user can
almost always address the problem by rewriting the text that's
provoking the problem&nbsp;&mdash; but that's not always possible, and in some
cases it's impossible to solve the problem without adjusting the
parameters.  This answer discusses the approaches one might take to
resolution of the problem, on the assumption that you've got the
hyphenation correct.

The simplest case is where a 'small' word fails to break at the end of
a line; pushing the entire word to a new line isn't going to make much
difference, but it might make things just bad enough that TeX won't
do it by default.  In such a case on can _try_ the LaTeX
`\linebreak` command: it may solve the problem, and if it does, it
will save an awful lot of fiddling.  Otherwise, one needs to adjust
parameters: to do that we need to recap the details of TeX's line
breaking mechanisms.

TeX's first attempt at breaking lines is performed without even
trying hyphenation: TeX sets its ''tolerance'' of line breaking
oddities to the internal value `\pretolerance`, and sees what
happens.  If it can't get an acceptable break, TeX adds the
hyphenation points allowed by the current patterns, and tries again
using the internal `\tolerance` value.  If this pass also fails, and
the internal `\emergencystretch` value is positive, TeX will try
a pass that allows `\emergencystretch` worth of extra stretchability
to the spaces in each line.

In principle, therefore, there are three parameters (other than
hyphenation) that you can change: `\pretolerance`, `\tolerance`
and `\emergencystretch`.  Both the `tolerance` values are
simple numbers, and should be set by TeX primitive count
assignment&nbsp;&mdash; for example
```latex
\pretolerance=150
```
For both, an ''infinite'' tolerance is represented by the value
`10``000`, but infinite tolerance is rarely
appropriate, since it can lead to very bad line breaks indeed.

`\emergencystretch` is a TeX-internal 'dimen' register, and can
be set as normal for dimens in Plain TeX; in LaTeX, use
`\setlength`&nbsp;&mdash; for example:
```latex
\setlength{\emergencystretch}{3em}
```

The choice of method has time implications&nbsp;&mdash; each of the
passes takes time, so adding a pass (by changing
`\emergencystretch`) is less desirable than suppressing one (by
changing `\pretolerance`).  However, it's unusual nowadays to find a
computer that's slow enough that the extra passes are really
troublesome.

In practice, `\pretolerance` is rarely used other than to manipulate
the use of hyphenation; Plain TeX and LaTeX both set its value
to `100`.  To suppress the first scan of paragraphs, set
`\pretolerance` to `-1`.

`\tolerance` is often a good method for adjusting spacing;
Plain TeX and LaTeX both set its value to `200`.  LaTeX's
`\sloppy` command sets it to `9999`, as does the
`sloppypar` environment.  This value is the largest
available, this side of infinity, and can allow pretty poor-looking
breaks (this author rarely uses `\sloppy` ''bare'', though he does
occasionally use `sloppypar`&nbsp;&mdash; that way, the change of
`\tolerance` is confined to the environment).  More satisfactory is
to make small changes to `\tolerance`, incrementally, and then to look to
see how the change affects the result; very small increases can often
do what's necessary.  Remember that `\tolerance` is a paragraph
parameter, so you need to ensure it's actually applied&nbsp;&mdash; see
''[ignoring paragraph parameters](./FAQ-paraparam.html)''.
LaTeX users could use an environment like:
```latex
\newenvironment{tolerant}[1]{%
  \par\tolerance=#1\relax
}{%
  \par
}
```
enclosing entire paragraphs (or set of paragraphs) in it.

The value of `\emergencystretch` is added to the assumed
stretchability of each line of a paragraph, in a further run of the
paragraph formatter in case that the paragraph can't be made to look
right any other way.  (The extra scan happens if
`\emergencystretch>0pt`&nbsp;&mdash; if it's zero or negative, no gain
could be had from rerunning the paragraph setter.)  The example above
set it to `3em`; the Computer Modern fonts ordinarily fit three
space skips to the `em`, so the change would allow anything up
to the equivalent of nine extra spaces in each line.  In a line with
lots of spaces, this could be reasonable, but with (say) only three
spaces on the line, each could stretch to four times its natural
width.  It is therefore clear that `\emergencystretch` needs to be
treated with a degree of caution.

More subtle (but more tricky to manage) are the microtypographic
extensions provided by PDFTeX.  Since PDFTeX is the default
'engine' for LaTeX and CONTeXT work in all distributions,
nowadays, the extensions are available to all.  There are two
extensions, margin kerning and font expansion; margin kerning only
affects the visual effect of the typeset page, and has little effect
on the ability of the paragraph setter to ''get things right''.
Font expansion works like a subtler version of the trick that
`\emergencystretch` plays: PDFTeX 'knows' that your current font
may be stretched (or shrunk) to a certain extent, and will do that
''on the fly'' to optimise the setting of a paragraph.  This is a
powerful tool in the armoury of the typesetter.

As mentioned above, the microtypographic extensions are tricky beasts
to control; however, the [`microtype`](http://ctan.org/pkg/microtype) package relieves the user
of the tedious work of specifying how to perform margin adjustments
and how much to scale each font&nbsp;&hellip; for the fonts the package
knows about; it's a good tool, and users who can take on the
specification of adjustments for yet more fonts are always welcome.

