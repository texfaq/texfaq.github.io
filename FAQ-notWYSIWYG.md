---
title: Why is TeX not a WYSIWYG system?
category: background
permalink: /FAQ-notWYSIWYG
redirect_from: /FAQ-notwysiwyg
date: 2018-05-27
---

# Why is TeX not a WYSIWYG system?

WYSIWYG is a marketing term (''What you see is what you get'') for
a particular style of text processor.  WYSIWYG systems are
characterised by two principal claims: that you type what you want to
print, and that what you see on the screen as you type is a close
approximation to how your text will finally be printed.

The simple answer to the question is, of course, that TeX was
conceived long before the marketing term, at a time when the marketing
imperative wasn't perceived as significant.  (In fact, it appears that
the first experimental WYSIWYG systems were running in commercial
labs, near where Knuth was working on TeX.  At the time, of course,
TeX was only available on a mainframe, and getting it to run on the
small experimental machines would have distracted Knuth from his
mission to create a typesetting system that he could use when
preparing his books for publication.)

However, all that was a long time ago: why has nothing been done with
the ''wonder text processor'' to make it fit with modern perceptions?

There are two answers to this.  First, the simple ''things _have_
been done'' (but they've not taken over the TeX world); and second,
''there are philosophical reasons why the way TeX has developed is
ill-suited to the WYSIWYG style''.

Indeed, there is a fundamental problem with applying WYSIWYG
techniques to TeX: the complexity of TeX makes it hard to get
the equivalent of TeX's output without actually running TeX over
the whole of the document being prepared.

All the same, it's clear that the TeX world has taken a long time
to latch onto the idea of WYSIWYG.
Apart from simple arrogance (''we're better, and have no need to
consider the petty doings of the commercial word processor market''),
there is a real conceptual difference between the word processor model
of the world and the model LaTeX and ConTeXt employ&nbsp;&mdash; the idea of
''markup''.  ''Pure'' markup expresses a logical model of a document,
where every object within the document is labelled according to what
it is rather than how it should appear: appearance is deduced from the
properties of the type of object.  Properly applied, markup can
provide valuable assistance when it comes to re-use of documents.

Established WYSIWYG systems find the expression of this sort of
structured markup difficult; however, markup _is_ starting to
appear in the lists of the commercial world's requirements, for two
reasons.  First, an element of markup helps impose style on a
document, and commercial users are increasingly obsessed with
uniformity of style; and second, the increasingly pervasive use of
XML-derived document archival formats demands it.  The same
challenges must needs be addressed by TeX-based document
preparation support schemes, so we are
observing a degree of confluence of the needs of the two communities:
interesting times may be ahead of us.

A celebrated early system offering ''WYSIWYG using TeX'' came
from the VorTeX project: a pair of Sun workstations worked in
tandem, one handling the user interface while the other beavered away
in the background typesetting the result.  VorTeX was quite
impressive for its time, but the two workstations combined had hugely
less power than the average laptop
nowadays, and its code has not proved portable (it never even made the
last ''great'' TeX version change, at the turn of the 1990s, to
TeX version 3).

Today, [LyX](https://lyx.org) offers a ''What you see is what you mean''
interface, using LaTeX for typesetting but it's own file format for documents
themselves. The commercial system [Scientific
Word](https://www.mackichan.com/products/sw.html) (which can also interact with
a computer algebra system) continues to offer perhaps the closest available
approximation to WYSIWYG TeX usage.


