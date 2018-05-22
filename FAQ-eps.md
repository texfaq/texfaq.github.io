# What is ''Encapsulated PostScript'' (''EPS'')?

PostScript has been for many years a _lingua franca_ of powerful
printers (though modern high-quality printers now tend to require some
constrained form of Adobe Acrobat, instead); since PostScript is also a
powerful graphical programming language, it is commonly used as an
output medium for drawing (and other) packages.

However, since PostScript _is_ such a powerful language, some
rules need to be imposed, so that the output drawing may be included
in a document as a figure without ''leaking'' (and thereby destroying
the surrounding document, or failing to draw at all).

Appendix H of the PostScript Language Reference Manual (second
and subsequent editions), specifies a set of rules for PostScript to
be used as figures in this way.  The important features are:
  

-  certain ''structured comments'' are required; important ones are
    the identification of the file type, and information about the
    ''bounding box'' of the figure (i.e., the minimum rectangle
    enclosing it);
-  some commands are forbidden&nbsp;&mdash; for example, a `showpage`
    command will cause the image to disappear, in most TeX-output
    environments; and
-  ''preview information'' is permitted, for the benefit of things
    such as word processors that don't have the ability to draw
    PostScript in their own right&nbsp;&mdash; this preview information may be in
    any one of a number of system-specific formats, and any viewing
    program may choose to ignore it.

A PostScript figure that conforms to these rules is said to be in
''Encapsulated PostScript'' (EPS) format.  Most (La)TeX packages for
including PostScript are structured to use Encapsulated PostScript;
which of course leads to much hilarity as exasperated (La)TeX users
struggle to cope with the output of drawing software whose authors
don't know the rules.

