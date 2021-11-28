---
title: Contributing a file to the archives
category: installing
permalink: /FAQ-uploads
---

You have something to submit to the archive&nbsp;&mdash; good news!

Before we even start, here's a check-list of things to sort out:

1.  Licence: in the spirit of TeX, we hope for free software; in
    the spirit of today's lawyer-enthralled society, CTAN
    provides a 
    [list of "standard" licence statements](https://ctan.org/license).
    Make sure that there's a formal statement of the licence of your
    package, somewhere in the files you upload; beyond the CTAN
    installation, your package is a candidate for inclusion in (La)TeX
    distributions&nbsp;&hellip; and thereafter, also in operating system
    distributions&nbsp;&hellip; and the people who bundle all these things up
    need a clear statement of your intent. 
2.  Documentation: it's good for users to be able to browse
    documentation before downloading a package.  You need at least a
    plain text `README` file (possible names are
    "README", "README.txt", and "README.md", but no other variants).
    For an international audience it would be best to write the `README`
    file in English; of course, you can provide another `README` file
    in another language if you want to.  All text files should be UTF-8
    encoded.

    In addition, a PDF file of the package documentation, prepared for screen
    reading, is highly desirable. The source code of the documentation
    should be provided.
3.  Name: endless confusion is caused by name clashes.  If your
    package has the same name as one already on CTAN, or if your
    package installation generates files of the same name as something
    in a "normal" distribution, the CTAN team will delay
    installation while they check that you're doing the right thing:
    they may nag you to change the name, or to negotiate a take-over
    with the author of the original package. 
    [Browse the archive](FAQ-findfiles) to ensure uniqueness.

    The name you choose should also (as far as possible) be somewhat
    descriptive of what your submission actually _does_; while
    "descriptiveness" is to some extent in the eye of the beholder,
    it's clear that names such as `mypackage` or `jiffy`
    aren't suitable.
4.  Version: Every submission of every CTAN package has to contain a
    "version identifier" that permits to distinguish this version of
    the package from earlier or later ones.  This tag should be put
    into a place where it is easy to find, such as a `VERSION` file,
    or the top part of your `README` file.
    It is not enough to rely on your Changes file.

    This version identifier may consist of either a version number
    (i.e. something like `1.0`, or `3.0.17`, or `2.1a`), or a version
    date (i.e.: preferably in `YYYY-MM-DD` or `YYYY/MM/DD` notation,
    like `2021-04-01` or `2021/04/01`), or a string consisting of
    both the aforementioned data.


You upload via the [CTAN upload redirector](https://ctan.org/upload)
(the archive's main page has a link).  The upload page shows what it
needs to know, and allows you to enter the information.  The mechanism
can only accept one file per upload: if you had intended to upload
lots of files, you need to bundle them into an "archive" file of some
sort; acceptable formats are `zip` and `tar.gz` (most uploads are packed
in `zip` format).  Once you have completed your upload, the redirector
assigns it to a member of the team for processing.

If you can't use this method, or if you find something confusing, feel
free to ask advice of the [CTAN management team](mailto:ctan@ctan.org).
You can also use the contact field of the upload form to provide
specific information to the CTAN team.


What will happen next?

-  Every upload will be unpacked and checked by an upload manager
   from the CTAN management team.
-  Small deficiencies will be corrected immediately by that person.
   You will receive feedback about this and be asked to apply the same sort
   of change(s) to your own file(s) before your next upload.

   If there is a non-trivial problem that cannot be fixed without your help
   the team will ask back and the installation process will be
   momentarily stalled until they receive an answer to their question.
   In some cases even a re-upload may become necessary.
-  After installation of the package on the CTAN central server, the
   corresponding `.xml` source file of the [Catalogue](FAQ-catalogue) entry
   will either be created (for new packages) or be updated
   (in all other cases).

   When all of this has been done, one of the upload managers will send you
   an email to the address you entered into the upload form.
   It may take a few hours (up to 24 hours) for your files to arrive on all
   the mirrors worldwide.

   If your upload is a new one or if you have requested an announcement,
   the message to [`CTAN-Announce`](https://www.ctan.org/ctan-ann) will
   be posted shortly after the end of that propagation time

   It is always helpful if you check what you see at the URLs indicated
   in the acknowledgement mail around 24 hours after installation and inform
   the CTAN team about any possible flaws in the presentation.
