# Finding (La)TeX files

Modern TeX distributions contain a huge array of various sorts of
files, but sooner or later most people need to find something that's
not in their present system (if nothing else, because they've heard
that something has been updated).

But how to find the files?

Modern distributions (TeX&nbsp;Live and MiKTeX, at least) provide the
means to update your system ''over the net''.  This is the minimum
effort route to getting a new file: 'simply' find which of the
distribution's 'packages' holds the file in question, and ask the
distribution to update itself.  The mechanisms are different (the two
distributions exhibit the signs of evolutionary divergence in their
different niches), but neither is difficult&nbsp;&mdash; see 
''[using MiKTeX for installing](./FAQ-inst-miktex*.html)'' and 
''[using TeX&nbsp;Live for installing](./FAQ-inst-texlive.html)''.

There are packages, though, that aren't in the distribution you use
(or for which the distribution hasn't yet been updated to offer the
version you need).

Some sources, such as these FAQ answers, provide links to
files: so if you've learnt about a package here, you should be able to
retrieve it without too much fuss.

Otherwise, CTAN provides a full-text search, at its
['central database'](http://www.ctan.org/) site, as well as
topic- and author-based indexes and a link to browse the archive
itself.

An alternative way to scan the catalogue is to use the catalogue's
[''by topic'' index](http://mirrors.ctan.org/help/Catalogue/bytopic.html);
this is an older mechanism than the topic-based search (above), but is
well presented (even though its data has not been updated for some time).  

In fact, `Google`, and other search engines, can be useful
tools.  Enter your search keywords, and you may pick up a package that
the author hasn't bothered to submit to CTAN.

A user of `Google` can restrict the search to
CTAN by entering
  `site:ctan.org tex-archive &lsaquo;_search term(s)_&rsaquo;`
in `Google`s ''search box''.  You can also enforce the
restriction using `Google`s ''advanced search'' mechanism;
other search engines (presumably) have similar facilities.

Many people avoid the need to go over the network at all, for their
searches, by downloading the file list that the archives' web
file searches use.  This file, `FILES.byname`,
presents a unified listing of the archive (omitting directory names and
cross-links).  Its companion `FILES.last07days` is also useful, to
keep an eye on the changes on the archive.  Since these files are
updated only once a day, a nightly automatic download (using
`rsync`) makes good sense.

