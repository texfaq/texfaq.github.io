# Contributing a file to the archives

You have something to submit to the archive&nbsp;&mdash; good news!

Before we even start, here's a check-list of things to sort out:
  

1.  Licence: in the spirit of TeX, we hope for free software; in
    the spirit of today's lawyer-enthralled society, CTAN
    provides a 
    [list of ''standard'' licence statements](http://mirror.ctan.org/help/Catalogue/licenses.html).
    Make sure that there's a formal statement of the licence of your
    package, somewhere in the files you upload; beyond the CTAN
    installation, your package is a candidate for inclusion in (La)TeX
    distributions&nbsp;&hellip; and thereafter, also in operating system
    distributions&nbsp;&hellip; and the people who bundle all these things up
    need a clear statement of your intent. 
2.  Documentation: it's good for users to be able to browse
    documentation before downloading a package.  You need at least a
    plain text `README` file (possible names are
    ''README'', ''README.txt'', and ''README.md'', but no other variants);
    in addition a
    PDF file of the package documentation, prepared for screen
    reading, is highly desirable.
3.  Name: endless confusion is caused by name clashes.  If your
    package has the same name as one already on CTAN, or if your
    package installation generates files of the same name as something
    in a ''normal'' distribution, the CTAN team will delay
    installation while they check that you're doing the right thing:
    they may nag you to change the name, or to negotiate a take-over
    with the author of the original package. 
    [Browse the archive](./FAQ-findfiles.html) to ensure uniqueness.
  

    The name you choose should also (as far as possible) be somewhat
    descriptive of what your submission actually _does_; while
    ''descriptiveness'' is to some extent in the eye of the beholder,
    it's clear that names such as `mypackage` or `jiffy`
    aren't suitable.

You upload via the
  [CTAN upload redirector](http://www.ctan.org/upload)
(the archive's main page has a link).  The upload page shows what it
needs to know, and allows you to enter the information.  The mechanism
can only accept one file per upload: if you had intended to upload
lots of files, you need to bundle them into an 'archive' file of some
sort; acceptable formats are `zip` and `tar.gz`
(most uploads are packed in `zip` format).  Once you have
completed your upload, the redirector assigns it to a member of the
team for processing.

If you can't use this method, or if you find something confusing, ask
advice of the
  [CTAN management team](mailto:ctan@dante.de)

If your package is large, or regularly updated, it may be appropriate
to 'mirror' your contribution direct into CTAN.
Mirroring is only practical using `ftp` or `rsync`, so
this facility is limited to packages offered by a server that uses one
of those protocols.

