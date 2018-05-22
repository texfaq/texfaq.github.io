# Perhaps a missing `\item`?

Sometimes, the error
```latex
Something's wrong--perhaps a missing \item
```
actually means what it says:
```latex
\begin{itemize}
  boo!
\end{itemize}
```
produces the error, and is plainly in need of an `\item` command.

You can also have the error appear when at first sight things are
correct:
```latex
\begin{tabular}{l}
  \begin{enumerate}
  \item foo\\
  \item bar
  \end{enumerate}
\end{tabular}
```
produces the error at the ` `.  This usage is just wrong; if you
want to number the cells in a table, you have to do it ''by hand'':
```latex
\newcounter{tablecell}
...
\begin{tabular}{l}
  \stepcounter{tablecell}
  \thetablecell. foo\\
  \stepcounter{tablecell}
  \thetablecell. bar
\end{tabular}
```
This is obviously untidy; a command `\numbercell` defined as:
```latex
\newcounter{tablecell}
...
\newcommand*{\numbercell}{%
  \stepcounter{tablecell}%
  \thetablecell. % **
}
```
could make life easier:
```latex
\begin{tabular}{l}
  \numbercell foo\\
  \numbercell bar
\end{tabular}
```
Note the deliberate introduction of a space as part of the command,
marked with asterisks.  Omitted above, the code needs to set the
counter `tablecell` to zero
(`\setcounter{tablecell}{0}`) before each tabular that uses it.

The error also regularly appears when you would never have thought
that a `\item` command  might be appropriate.  For example, the
seemingly innocent:
```latex
\fbox{%
  \begin{alltt}
    boo!
  \end{alltt}%
}
```
produces the error (the same happens with `\mbox` in place of
`\fbox`, or with either of their ''big brothers'', `\framebox` and
`\makebox`).  This is because the `alltt` environment
uses a ''trivial'' list, hidden inside its definition.  (The
`itemize` environment also has this construct inside
itself, in fact, so `\begin{itemize}` won't work inside an
`\fbox`, either.)  The list construct wants to happen between
paragraphs, so it makes a new paragraph of its own.  Inside the
`\fbox` command, that doesn't work, and subsequent macros convince
themselves that there's a missing `\item` command.

To solve this rather cryptic error, one must put the
`alltt` inside a paragraph-style box.  The following
modification of the above _does_ work:
```latex
\fbox{%
  \begin{minipage}{0.75\textwidth}
    \begin{alltt}
      hi, there!
    \end{alltt}
  \end{minipage}
}
```
The code above produces a box that's far too wide for the text.  One
may want to use something that allows 
[variable size boxes](./FAQ-varwidth.html) in place of the
`minipage` environment.

Oddly, although the `verbatim` environment wouldn't work
inside a `\fbox` command argument (see 
[verbatim in command arguments](./FAQ-verbwithin.html)), you
get an error that complains about `\item`: the environment's
internal list bites you before `verbatim` has even had a
chance to create its own sort of chaos.

Another (seemingly) obvious use of `\fbox` also falls foul of this
error:
```latex
\fbox{\section{Boxy section}}
```
This is a case where you've simply got to be more subtle; you should
either write your own macros to replace the insides of LaTeX's
sectioning macros, or  look for some alternative in the packages
discussed in 
''[The style of section headings](./FAQ-secthead.html)''.

