# LaTeX won't include from other directories

You wanted to `\include{../bar/xyz.tex}`, but LaTeX says:
```latex
latex: Not writing to ../bar/xyz.aux (openout_any = p).
! I can't write on file `../bar/xyz.aux'.
```
The error comes from TeX's protection against writing to
directories that aren't descendents of the one where your document
resides.  (The restriction protects against problems arising from
LaTeXing someone else's malicious, or merely broken, document.  If
such a document overwrites something you wanted kept, there is obvious
potential for havoc.)

Document directory structures that can lead to this problem will look
like the fictional `mybook`:
```latex
./base/mybook.tex
./preface/Preface.tex
./preface/***
./chapter1/Intro.tex
...
```
With such a structure, any document directory (other than the one
where `mybook.tex` lives), seems ''up'' the tree from the
base directory.  (References to such files will look like
`\include{../preface/Preface}`: the `..` is the
hint.)

But why did it want to write at all?&nbsp;&mdash; 
''[what's going in in my `\include`](./FAQ-include.html)'' explains
how `\include` works, among other things by writing an
`aux` file for every `\includ`ed file.

Solutions to the problem tend to be drastic:
  

1.  Restructure the directories that hold your document so that the
    master file is at the root of the tree:
    ```latex
    ./mybook.tex
    ./mybook/preface/Preface.tex
    ./mybook/preface/***
    ./mybook/chapter1/Intro.tex
    ...
    ```
    and so on.
2.  Did you actually _need_ `\include`?&nbsp;&mdash; if not, you can
    replace `\include` by `\input` throughout.  (This only works
    if you don't need `\includeonly`.)
3.  You _could_ patch your system's `texmf.cnf`&nbsp;&mdash; if you
    know what you're doing, the error message should be enough of a
    hint; this action is definitely not recommended, and is left to
    those who can ''help themselves'' in this respect.

