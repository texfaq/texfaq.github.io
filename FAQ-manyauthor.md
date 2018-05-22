# BibTeX doesn't understand lists of names

BibTeX has a strict syntax for lists of authors' (or editors')
names in the BibTeX data file; if you write the list of names in a
''natural''-seeming way, the chances are you will confuse BibTeX,
and the output produced will be quite different from what you had
hoped.

Names should be expressed in one of the forms
```latex
First Last
Last, First
Last, Suffix, First
```
and lists of names should be separated with `and`.
For example:
```latex
AUTHOR = {Fred Q. Bloggs, John P. Doe \&
          Another Idiot}
```
falls foul of two of the above rules: a syntactically significant
comma appears in an incorrect place, and `\\&` is being used as a
name separator.  The output of the above might be something like:
```latex
John P. Doe \& Another Idiot Fred Q. Bloggs
```
because ''John P. Doe[[[&]]]Another Idiot has become the 'first name',
while ''Fred Q. Bloggs'' has become the 'last name' of a single
person.  The example should have been written:
```latex
AUTHOR = {Fred Q. Bloggs and John P. Doe and
          Another Idiot}
```
Some bibliography styles implement clever acrobatics with very long
author lists.  You can force truncation by using the pseudo-name
`others`, which will usually translate to something like
''_et al_'' in the typeset output.  So, if Mr.&nbsp;Bloggs wanted to
distract attention from his co-authors, he would write:
```latex
AUTHOR = {Fred Q. Bloggs and others}
```

