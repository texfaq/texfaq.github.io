# Creating a BibTeX bibliography file

A BibTeX bibliography file may reasonably be compared to a small
database, the entries in which are references to literature that may
be called up by citations in a document.

Each entry in the bibliography has a _type_ and a unique
_key_.  The bibliography is read, by BibTeX, using the details
specified in a _bibliography style_.  From the style, BibTeX
finds what entry types are permissible, what _fields_ each entry
type has, and how to format the whole entry.

The type specifies the type of document you're making reference to; it
may run all the way from things like `Book` and
`Proceedings` (which may even contain other citations
of type `InBook` or  `InProceedings`)
through dissertation styles like  `PhdThesis` to
otherwise-uncategorisable things such as `Misc`.  The
unique key is something you choose yourself: it's what you use when
you want to [cite an entry in the file](./FAQ-usebibtex.html).  People
commonly create a key that combines the (primary) author's name and
the year of publication, possibly with a marker to distinguish
publications in the same year.  So, for example, the Dyson, Eddington,
Davidson paper about deflection of starlight appears in my
experimental `bib` file as `Dyson20.1`.

So, noting the rules of the style, you have 'simply' to write a
bibliography database.  Fortunately, there are several tools to help
in this endeavour:
  

-  Most of the better [(La)TeX-oriented editors](./FAQ-editors.html)
    have ''BibTeX modes''.
-  If you have an existing `thebibliography`
    environment, the `Perl` script `tex2bib` will
    probably help.
-  There are a number of BibTeX bibliography management systems
    available, some of which permit a graphical user interface to the
    task.  Sadly, none seems to be available with the ordinary TeX
    distributions.
  

    Tools such as `Xbibfile` (a graphical user interface),
    `ebib` (a database application written to run 'inside'
    `emacs`) and 
    `btOOL` (a set of `perl` tools for building 
    BibTeX database handlers) are available from CTAN.
  

    Other systems, such as
    [`RefDB`](http://refdb.sourceforge.net/),
    [BibORB](http://www.nongnu.org/biborb),
    [`BibDesk`](http://bibdesk.sourceforge.net/),
    [`pybliographer`](http://pybliographer.org) and the
    `Java`-based
    [`Bibkeeper`](http://freshmeat.net/projects/bibkeeper/)
    and [`JabRef`](http://jabref.sourceforge.net) (which
    claims to supersede `Bibkeeper`)
    are only available from their development sites.
-  Some commercial citation-management systems will export in
    BibTeX format; an example is
    [EndNote](http://www.endnote.com/).
-  Data from on-line citation databases may often be translated to
    BibTeX format by utilities to be found on CTAN.  For
    example, the `Perl` script `isi2bibtex` will
    translate citations from ISI ''Web of knowledge'' (a
    subscription service, available to UK academics via
    BIDS).  UK academics may translate BIDS downloads
    using `bids.to.bibtex`
-  [Google Scholar](http://scholar.google.com) provides an
    ''Import into BibTeX'' tab for each reference it finds for you:
    that tab gives you a page containing a BibTeX entry for the
    reference.

