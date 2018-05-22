# Conversion from SGML or HTML to TeX

SGML is a very important system for document storage and interchange,
but it has no formatting features; its companion ISO standard
DSSSL
(see [http://www.jclark.com/dsssl/]) is designed for writing
transformations and formatting,
but this has not yet been widely implemented. Some SGML authoring
systems (e.g., SoftQuad `Author/Editor`) have formatting
abilities, and
there are high-end specialist SGML typesetting systems (e.g., Miles33's
`Genera`).  However, the majority of SGML users probably transform
the source to an existing typesetting system when they want to print. 
TeX is a good candidate for this. There are three approaches to writing a
translator:
  

1.  Write a free-standing translator in the traditional way, with
    tools like `yacc` and `lex`; this is hard, in
    practice, because of the complexity of SGML.
2.  Use a specialist language designed for SGML transformations; the
    best known are probably `Omnimark` and `Balise`.
    They are expensive, but powerful, incorporating SGML query and
    transformation abilities as well as simple translation.
3.  Build a translator on top of an existing SGML parser.  By far
    the best-known (and free!) parser is James Clark's
    `nsgmls`, and this produces a much simpler output format,
    called ESIS, which can be parsed quite straightforwardly (one also
    has the benefit of an SGML parse against the DTD). Two
    good public domain packages use this method:
  

  4. 
        David Megginson's
        [`sgmlspm`](http://www.perl.com/CPAN/modules/by-module/SGMLS),
        written in `Perl` 5.
    5. 
        Joachim Schrod and Christine Detig's
        [`STIL`](ftp://ftp.tu-darmstadt.de/pub/text/sgml/stil),
         ('SGML Transformations in Lisp').
  

    Both of these allow the user to write 'handlers' for every SGML
    element, with plenty of access to attributes, entities, and
    information about the context within the document tree.
  

    If these packages don't meet your needs for an average SGML
    typesetting job, you need the big commercial stuff.

Since HTML is simply an example of SGML, we do not need a specific
system for HTML.  However, Nathan Torkington developed
`html2latex` from the HTML parser in NCSA's
Xmosaic package.
The program takes an HTML file and generates a LaTeX file from it.
The conversion code is subject to NCSA restrictions, but the whole
source is available on CTAN.

Michel Goossens and Janne Saarela published a very useful summary of
SGML, and of public domain tools for writing and manipulating it, in
TUGboat 16(2).

