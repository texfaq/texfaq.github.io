# Double-spaced documents in LaTeX

A quick and easy way of getting inter-line space for copy-editing is
to change `\baselinestretch`&nbsp;&mdash; `\linespread{1.2}` (or,
equivalently `\renewcommand{`\baselinestretch`}{1.2}`) may
be adequate.  Note that `\baselinestretch` changes don't take
effect until you select a new font, so make the change in the preamble
before any font is selected.  Don't try changing `\baselineskip`:
its value is reset at any size-changing command so that results will
be inconsistent.

For preference (and certainly for a production document, such as a
dissertation or an article submission), use a line-spacing package.
The only one currently supported is [`setspace`](http://ctan.org/pkg/setspace).
[`Setspace`](http://ctan.org/pkg/Setspace) switches off double-spacing at places where even
the most die-hard official would doubt its utility (footnotes, figure
captions, and so on); it's very difficult to do this consistently if
you're manipulating `\baselinestretch` yourself.

(Note: do _not_ be tempted by [`doublespace`](http://ctan.org/pkg/doublespace)&nbsp;&mdash; its
performance under current LaTeX is at best problematical.)

Of course, the real solution (other than for private copy editing) is
_not_ to use double-spacing at all.  Universities, in particular,
have no excuse for specifying double-spacing in submitted
dissertations: LaTeX is a typesetting system, not a
typewriter-substitute, and can (properly used) make single-spaced text
even more easily readable than double-spaced typewritten text.  If you
have any influence on your university's system (for example, through
your dissertation supervisor), it may be worth attempting to get the
rules changed (at least to permit a ''well-designed book'' format).

Double-spaced submissions are also commonly required when submitting
papers to conferences or journals.  Fortunately (judging by the
questions from users in this author's department), this demand is
becoming less common.

Documentation of [`setspace`](http://ctan.org/pkg/setspace) appears as TeX comments in the
package file itself.

