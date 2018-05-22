# What is CTAN?

The acronym stands for ''Comprehensive TeX Archive Network'', which
more-or-less specifies what it's _for_:
  

-  The archives offer a comprehensive collection of TeX resources.
-  The content is made publicly accessible, via the internet.
-  CTAN is a _network_ of archives, which strive to
    stay in step with one another.

The basic framework was developed by a TUG working group set up
to resolve the (then existing) requirement for users to _know_ on
which archive site a particular package might be found.

Actual implementation offers three distinct types of host:

- _Core_ archivesWhich form a small, tightly-coupled set of
  machines, which perform management functions as well as serving
  files;
- _Mirror_ archivesWhich do no more than take regular copies
  of core archives, and serve them; and
- Archive selectorWhich is a meta-service, which routes requests
  to an apparently ''local'' mirror (''local'' is determined by an
  algorithm that uses your net address to determine where you are, and
  then selects a mirror that's close).

Note that there is nothing to prevent any archive from supporting
other functions, so a CTAN mirror may also operate as a
CPAN (Perl) mirror and as a SourceForge (general free software)
mirror, and &hellip;

Functions that distinguish core archives are:
  

-  Uploads: users may submit new (or updated) material via the
    [upload redirector](./FAQ-uploads.html). Significant changes to the
    archive are reported via the mailing list <a href="mailto:ctan-ann@dante.de">ctan-ann@dante.de</a>
-  Weak consistency: changes to the content of the archives are
    rapidly distributed to all core archives.  (Consistency is 'weak'
    since changes can take several minutes to propagate.)
-  Providing distribution (TeX&nbsp;Live and MiKTeX) support.
-  Catalogue maintenance.
-  Mirror monitoring.

Users may make direct contact with the
  [CTAN management team](mailto:ctan@dante.de).

Users should ordinarily download material from CTAN via the
[archive selector](http://mirror.ctan.org/): this uses the
mirror monitor's database, and uses the caller's geographical location to
offer an efficient choice of ''sufficiently up-to-date'' mirror site for
you to connect to.  This procedure has the advantage of distributing
the load on CTAN mirrors.

Note that all the download links, given in the web representation of
these FAQs, are set up to use the mirror selector.

