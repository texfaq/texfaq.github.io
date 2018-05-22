# My brackets don't match

(La)TeX has a low-level mechanism for matching braces in document
text.  This means you can type something like:
```latex
\section{All \emph{OK} now.}
```
and know that the first brace (for the argument of `\section`) will
be matched with the last brace, and the internal pair of braces (for
the argument of `\emph`) will be matched with each other.  It's all
very simple.

However, LaTeX has a convention of enclosing optional arguments in
brackets, as in:
```latex
\section[OK]{All \emph{OK} now.}
```
These brackets are not matched by TeX mechanisms, despite the
superficial similarity of their use.  As a result,
straightforward-looking usages like:
```latex
\section[All [OK] now]{All \emph{OK} now.}
```
aren't OK at all&nbsp;&mdash; the optional argument comes to consist of
''All [OK'', and `\section` takes the single character ''n'' (of
the first ''now'') as its argument.

Fortunately, TeX's scanning mechanisms helps us by accepting the
syntax `{]}` to 'hide' the closing bracket from the
scanning mechanism that LaTeX uses.  In practice, the commonest way
to use this facility is:
```latex
\section[All {[OK]} now]{All \emph{OK} now.}
```
since bracing the bracket on its own ''looks odd''.

LaTeX has another argument syntax, even less regular, where the
argument is enclosed in parentheses, as in:
```latex
\put(1,2){foo}
```
(a picture environment command).

This mechanism is also prone to problems with matching closing
parentheses, but the issue seldom arises since such arguments rarely
contain text.  If it were to arise, the same solution (enclosing the
confused characters in braces) would solve the problem.

