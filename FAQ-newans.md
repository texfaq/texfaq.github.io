# Submitting new material for the FAQ

The FAQ will never be complete, and we always expect that
there will be people out there who know better than we do about
something or other.  We always need to be put right about whatever
we've got wrong, and suggestions for improvements, particularly
covering areas we've missed, are always needed: mail anything you have
to the
  [maintainers](mailto:faq-devel@tex.ac.uk)

If you have actual material to submit, your contribution is more than
ever welcome.  Submission in plain text is entirely acceptable, but
if you're really willing, you may feel free to mark up your submission
in the form needed for the FAQ itself.  The markup is a
strongly-constrained version of LaTeX&nbsp;&mdash; the constraints come from
the need to translate the marked-up text to HTML on the fly
(and hence pretty efficiently).  There is a file `markup-syntax`
in the FAQ distribution that describes the structure of the
markup, but there's no real substitute for reading at least some of
the source (`faqbody.tex`) of the FAQ itself.  If you
understand `Perl`, you may also care to look at the
translation code in `texfaq2file` and `sanitize.pl` in the
distribution: this isn't the code actually used on the Web site, but
it's a close relation and is kept
up to date for development purposes.

