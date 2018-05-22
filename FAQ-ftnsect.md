# Footnotes in LaTeX section headings

The `\footnote` command is fragile, so that simply placing the
command in `\section`s arguments isn't satisfactory.  Using
`\protect``\footnote` isn't a good idea either: the arguments of a
section command are used in the table of contents and (more
dangerously) potentially also in page headers.  While footnotes will
work in the table of contents, it's generally not thought a ''good
thing'' to have them there; in the page header, footnotes will simply
fail.  Whatever the desirability of the matter, there's no mechanism
to suppress the footnote in the page header while allowing it in the table
of contents, so the footnote may only appear in the section heading itself.

To suppress the footnote in headings and table of contents:
  

-  Take advantage of the fact that the mandatory argument doesn't
    'move' if the optional argument is present:
  

    `\section[title]`
      `{title}`\footnote{title ftnt}`\texttt{}`
-  Use the [`footmisc`](http://ctan.org/pkg/footmisc) package, with package option
    `stable`&nbsp;&mdash; this modifies footnotes so that they softly and
    silently vanish away if used in a moving argument.  With this, you
    simply need:
    ```latex
    % in the document preamble
    \usepackage[stable]{footmisc}
    ...
    % in the body of the document
    \section{title\footnote{title ftnt}}
    ```

