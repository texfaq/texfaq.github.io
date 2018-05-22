# Missing `\begin`{document}

The _preamble_ of your document is the stuff before
`\begin{document}`; you put `\usepackage` commands and
your own macro definitions in there.  LaTeX doesn't like
_typesetting_ anything in the preamble, so if you have:
  

-  typed the odd grumble,
-  created a box with `\newsavebox` and put something in it
    using `\sbox` (or the like),
-  forgotten to put `\begin{document}` into the document,
    at all, or even
-  gave it the wrong file

the error is inevitable and the solution is simple&nbsp;&mdash; judicious use
of comment markers ([[[texttt]]]
line, moving things around, providing something that was
missing&nbsp;&hellip; or switching to the correct file.

The error may also occur while reading the `aux` file from an
earlier processing run on the document; if so, delete the
`aux` file and start again from scratch.  If the error
recurs, it could well be due to a buggy class or package.

However, it may be that none of the above solves the problem.

If so, remember that things that appear before `\documentclass` are
also problematical: they are inevitably before
`\begin{document}`!

Unfortunately, modern editors are capable of putting things there, and
preventing you from seeing them.  This can happen when your document
is being 'written' in [Unicode](./FAQ-unicode.html).  The Unicode
standard defines ''Byte Order Marks'' (BOM), that reassure a
program (that reads the document) of the way the Unicode codes are
laid out.  Sadly ordinary LaTeX or PDFLaTeX choke on
BOMs, and consider them typesetting requests.  The error
message you see will look like:
```latex
! LaTeX Error: Missing \begin{document}.
...
l.1 <?>
       <?><?>\documentclass{article}
```
(Those `<?>`s are your operating system's representation of an
unknown character; on the author's system it's a reverse video
`?` sign.)

You can spot the BOM by examining the bytes; for example, the
Unix `hexdump` application can help:
```latex
$ hexdump -C <file>
00000000  ef bb bf 5c 64 6f 63 75 ...
```
The `5c 64 6f 63 75` are the `\docu` at the start of
(the 'real' part of) your document; the three bytes before it form the
BOM.

How to stop your editor from doing this to you depends, of course, on
the editor you use; if you are using GNU Emacs, you have to
change the encoding from `utf-8-with-signature` to 'plain'
`utf-8`; instructions for that are found on
[the ''stack overflow'' site](http://stackoverflow.com/questions/3859274/)

(So far, all instances of this problem that the author has seen have
afflicted GNU Emacs users.)

Fortunately XeTeX and LuaTeX know about BOMs and what to
do with them, so LaTeX using them is ''safe''.

