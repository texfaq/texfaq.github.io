# Interrupting enumerated lists

It's often convenient to have commentary text, 'outside' the list,
between successive entries of a list.  In the case of
`itemize` lists this is no problem, since there's never
anything to distinguish successive items, while in the case of
`description` lists, the item labels are under the user's
control so there's no automatic issue of continuity.

For `enumerate` lists, the labels are generated
automatically, and are context-sensitive, so the context (in this
case, the state of the enumeration counter) needs to be preserved.

The belt-and-braces approach is to remember the state of the
enumeration in your own counter variable, and then restore it when
restarting enumerate:
```latex
\newcounter{saveenum}
 ...
\begin{enumerate}
  ...
  \setcounter{saveenum}{\value{enumi}}
\end{enumerate}
<Commentary text>
\begin{enumerate}
  \setcounter{enumi}{\value{saveenum}}
  ...
\end{enumerate}
```

This is reasonable, in small doses&hellip; Problems (apart from sheer
verbosity) are getting the level right (''should I use counter
`enumi`, `enumii`, &hellip;'') and remembering not to
nest the interruptions (i.e., not to have a separate list, that is
itself interrupted) in the ''commentary text'').

The [`mdwlist`](http://ctan.org/pkg/mdwlist) package defines commands `\suspend` and
`\resume` that simplify the process:
```latex
\begin{enumerate}
  ...
\suspend{enumerate}
<Commentary text>
\resume{enumerate}
  ...
\end{enumerate}
```
The package allows an optional name (as in
`\suspend[id]{enumerate}`) to allow you to identify a
particular suspension, and hence provide a handle for manipulating
nested suspensions.

If you're suspending a [fancy-enumeration list](./FAQ-enumerate.html),
you need to 
re-supply the optional ''item label layout'' parameters required by
the [`enumerate`](http://ctan.org/pkg/enumerate) package when resuming the list, whether by the
belt-and-braces approach, or by the [`mdwlist`](http://ctan.org/pkg/mdwlist)
`\resume{enumerate}` technique.  The task is a little tedious
in the [`mdwlist`](http://ctan.org/pkg/mdwlist) case, since the optional argument has to be
encapsulated, whole, inside an optional argument to `\resume`,
which requires use of extra braces:
```latex
\begin{enumerate}[\textbf{Item} i]
  ...
\suspend{enumerate}
<comment>
\resume{enumerate}[{[\textbf{Item} i]}]
...
\end{enumerate}
```
The [`enumitem`](http://ctan.org/pkg/enumitem) package, in its most recent
release, will also allow you to resume lists:
```latex
\begin{enumerate}
...
\end{enumerate}
<comment>
\begin{enumerate}[resume]
...
\end{enumerate}
```
which feels just as ''natural'' as the [`mdwtools`](http://ctan.org/pkg/mdwtools) facility,
and has the advantage of playing well with the other excellent
facilities of [`enumitem`](http://ctan.org/pkg/enumitem).

[`Expdlist`](http://ctan.org/pkg/Expdlist) has a neat way of providing for comments, with its
`\listpart` command.  The command's argument becomes a comment
between items of the list:
```latex
\begin{enumerate}
\item item 1
\item item 2
  \listpart{interpolated comment}
\item item 3
\end{enumerate}
```
This, you will realise, means it doesn't even have to think about
suspending or resuming the list, and of course it works equally well
in any of the list environments (thought it's not actually
_necessary_ for any but `enumerate`).

[`Enumitem`](http://ctan.org/pkg/Enumitem) also allows multi-level suspension and resumption
of lists:
```latex
\begin{enumerate}
\item outer item 1
\end{enumerate}
<comment>
\begin{enumerate}[resume]
\item outer item 2
% nested enumerate
\begin{enumerate}
\item inner item 1
\end{enumerate}
<nested comment>
% resume nested enumerate
\begin{enumerate}[resume]
\item inner item 2
\end{enumerate}
\item outer item 3
% end outer enumerate
\end{enumerate}
```
However, the 'nested comment' interpolated in the nested enumeration
appears as if it were a second paragraph to ''outer item 2'', which is
hardly satisfactory.

