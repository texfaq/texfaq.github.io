# Fuzzy fonts because `Ghostscript` too old




So you've done everything the FAQ has told you that you need,
correct fonts properly installed and appearing in the `dvips`
output, but _still_ you get fuzzy character output after
distilling with [`ghostscript`](http://www.ghostscript.com/).


The problem could arise from too old a version of
[`ghostscript`](http://www.ghostscript.com/), which you
may be using directly, or via a
script such as `ps2pdf` (distributed with
`ghostscript` itself), `dvipdf`, or similar.
Though `ghostscript` was capable of distillation from
version&nbsp;5.50, that version could only produce bitmap Type&nbsp;3 output of
any font other than the fundamental 35&nbsp;fonts (`Times`,
`Helvetica`, etc.).  Later versions added 'complete'
distillation, but it wasn't until version&nbsp;6.50 that one could rely on
it for everyday work.


So, if your PDF  output still looks fuzzy in `Acrobat`
`Reader`, upgrade `ghostscript`.  The new version
should be at least version&nbsp;6.50, of course, but it's usually good
policy to go to the most recent version (version&nbsp;8.12 at the time of
writing&nbsp;&mdash; 2003).


