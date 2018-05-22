# 'String too long' in BibTeX

The BibTeX diagnostic ''Warning&ndash;you've exceeded 1000, the
`global-string-size`, for entry `foo` usually arises
from a very large abstract or annotation included in the database.
The diagnostic usually arises because of an infelicity in the coding of
`abstract.bst`, or styles derived from it.  (One doesn't
ordinarily output annotations in other styles.)

The solution is to make a copy of the style file (or get a clean copy
long file-name system, to `abstract-long.bst`).  Now edit it: find
function `output.nonnull` and
  

-  change its first line (line 60 in the version on CTAN)
    from
    ```latex
    { 's :=
    ```
  to
    ```latex
    { swap$
    ```
  Finally,
-  delete the function's last line, which just says `s`
    (line 84 in the version on CTAN).

Finally, change your `\bibliographystyle` command to refer to the
name of the new file.

This technique applies equally to any bibliography style: the same
change can be made to any similar `output.nonnull` function.

If you're reluctant to make this sort of change, the only way forward
is to take the entry out of the database, so that you don't encounter
BibTeX's limit, but you may need to retain the entry because it
will be included in the typeset document.  In such cases, put the body
of the entry in a separate file:
```latex
@article{long.boring,
  author =    "Fred Verbose",
  ...
  abstract =  "{\input{abstracts/long.tex}}"
}
```
In this way, you arrange that all BibTeX has to deal with is the
file name, though it will tell TeX (when appropriate) to include
all the long text.

