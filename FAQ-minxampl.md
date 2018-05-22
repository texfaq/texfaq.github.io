# How to make a ''minimum example''

[Our advice on asking questions](./FAQ-askquestion.html)
suggests that you prepare a ''minimum example'' (also commonly known
as a ''_minimal_ example'') of failing behaviour,
as a sample to post with your question.  If you have a problem in a
two hundred page document, it may be unclear how to proceed from this
problem to a succinct demonstration of your problem.

There are two valid approaches to this task: building up, and hacking
down.

*_Building up_* starts
with a basic document structure
(for LaTeX, this would have `\documentclass`,
`\begin{document}`, `\end{document}`) and adds
things.  First to add is a paragraph or so around the actual point
where the problem occurs.  (It may prove difficult to find the actual
line that's provoking the problem.  If the original problem is an
error, reviewing 
[''the structure of TeX errors''](./FAQ-errstruct.html)
may help.)

Note that there are things that can go wrong in one part of the
document as a result of something in another part: the commonest is
problems in the table of contents (from something in a section title,
or whatever), or the list of &lsaquo;_something_&rsaquo; (from something in a
`\caption`).  In such a case, include the section title or caption
(the caption probably needs the `figure` or
`table` environment around it, but it _doesn't_ need
the figure or table itself).

If this file you've built up shows the problem already, then you're done.
Otherwise, try adding packages; the optimum is a file with only one
package in it, but you may find that the guilty package won't even load
properly unless another package has been loaded.  (Another common case
is that package [`A`](http://ctan.org/pkg/A) only fails when package [`B`](http://ctan.org/pkg/B) has been
loaded.)

*_Hacking down_* starts
with your entire document, and
removes bits until the file no longer fails (and then of course
restores the last thing removed).  Don't forget to hack out any
unnecessary packages, but mostly, the difficulty is choosing what to
hack out of the body of the document; this is the mirror of the
problem above, in the ''building up'' route.

If you've added a package (or more than one), add `\listfiles` to
the preamble too: that way, LaTeX will produce a list of the
packages you've used and their version numbers.  This information may
be useful evidence for people trying to help you.

The process of 'building up', and to some extent that of 'hacking
down', can be helped by stuff available on CTAN:
  

-  the [`minimal`](http://ctan.org/pkg/minimal) class (part of the LaTeX distribution)
    does what its name says: it provides nothing more than what is
    needed to get LaTeX code going, and
-  the [`mwe`](http://ctan.org/pkg/mwe) bundle provides a number of images in formats
    that (La)TeX documents can use, and a small package [`mwe`](http://ctan.org/pkg/mwe)
    which loads other useful packages (such as [`blindtext`](http://ctan.org/pkg/blindtext) and
    [`lipsum`](http://ctan.org/pkg/lipsum), both capable of producing dummy text in a
    document).

What if none of of these cut-down derivatives of your document will
show your error?  Whatever you do, don't post the whole of the document: if
you can, it may be useful to make a copy available on the web
somewhere: people will probably understand if it's impossible&nbsp;&hellip; 
or inadvisable, in the case of something confidential.

If the whole document is indeed necessary, it could be that your
error is an overflow of some sort; the best you can do is to post the
code ''around'' the error, and (of course) the full text of the error.

It may seem that all this work is rather excessive for preparing a
simple post.  There are two responses to that, both based on the
relative inefficiency of asking a question on the internet.

First, preparing a minimum document very often leads _you_ to the
answer, without all the fuss of posting and looking for responses.

Second, your prime aim is to get an answer as quickly as possible; a
well-prepared example stands a good chance of attracting an answer
''in a single pass'': if the person replying to your post finds she
needs more information, you have to find that request, post again, and
wait for your benefactor to produce a second response.

All things considered, a good example file can save you a day, for
perhaps half an hour's effort invested.

Much of the above advice, differently phrased, may also be read on the
web at [http://www.minimalbeispiel.de/mini-en.html]; source of
that article may be found at [http://www.minimalbeispiel.de/], in
both German and English.

