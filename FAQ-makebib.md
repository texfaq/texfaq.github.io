# Reconstructing `bib` files

Perhaps you've lost the `bib` file you generated your document from,
or have been sent a document without one.  Or even, you've realised
the error of building a substantial document without the benefit of
BibTeX&hellip;

The `Perl` script, [`tex2bib`](http://ctan.org/pkg/tex2bib) makes a reasonable job
of regenerating `bib` files from `thebibliography`
environments, provided that the original (whether automatically or
manually generated) doesn't deviate too far from the ''standard''
styles.

You are well-advised to check the output of the script.  While it will
not usually destroy information, it can quite reasonably mislabel it.

Documentation of the script is to be found in the file `tex2bib.readme`

