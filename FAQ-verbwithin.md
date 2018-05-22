# Why doesn't verbatim work within &hellip;?

The LaTeX verbatim commands work by changing category codes.  Knuth
says of this sort of thing ''Some care is needed to get the timing
right&hellip;'', since once the category code has been assigned to a
character, it doesn't change.  So `\verb` and
`\begin{verbatim}` have to assume that they are getting the
first look at the parameter text; if they aren't, TeX has already
assigned category codes so that the verbatim command doesn't have a
chance.  For example:
```latex
\verb+\error+
```
will work (typesetting `\error`), but if we define no more than a
no-op macro,
```latex
\newcommand{\unbrace}[1]{#1}
```
which simply regurgitates its argument, and use it as:
```latex
\unbrace{\verb+\error+}
```
the combinartion will not (it will attempt to execute `\error`).
Other errors one
may encounter are `\verb` ended by end of line', or even the
rather more helpful `\verb` illegal in command argument'.  The
same sorts of thing happen with `\begin{verbatim}` &hellip;
`\end{verbatim}`:
```latex
\ifthenelse{\boolean{foo}}{%
\begin{verbatim}
foobar
\end{verbatim}
}{%
\begin{verbatim}
barfoo
\end{verbatim}
}
```
provokes errors like 'File ended while scanning use of
`xverbatim`, as `\begin{verbatim}` fails to see its
matching `\end{verbatim}`.

This is why the LaTeX book insists that verbatim
commands must not appear in the argument of any other command; they
aren't just fragile, they're quite unusable in any ''normal'' command
parameter, 
regardless of [`\protect`ion](./FAQ-protect.html).  (The `\verb`
command tries hard to detect if you're misusing it; unfortunately, it
can't always do so, and the error message is therefore not reliable as an
indication of problems.)

The first question to ask yourself is: ''is `\verb` actually
necessary?''.
  

-  If `\texttt{_your text_}` produces the same result
    as `\verb``+_your text_+`, then there's no need of
    `\verb` in the first place.
-  If you're using `\verb` to typeset a URL or email
    address or the like, then the `\url` command from the
    [`url`](http://ctan.org/pkg/url) will help: it doesn't suffer from all the problems of
    `\verb`, though it's still not robust; 
    ''[typesetting URLs](./FAQ-setURL.html)'' offers advice here.
-  If you're putting `\verb` into the argument of a boxing
    command (such as `\fbox`), consider using the `lrbox`
    environment:
    ```latex
    \newsavebox{\mybox}
    ...
    \begin{lrbox}{\mybox}
      \verb!VerbatimStuff!
    \end{lrbox}
    \fbox{\usebox{\mybox}}
    ```

If you can't avoid verbatim, the `\cprotect` command (from the
package [`cprotect`](http://ctan.org/pkg/cprotect)) might help.  The package manages to make a
macro read a verbatim argument in a ''sanitised'' way by the simple
medium of prefixing the macro with `\cprotect`:
```latex
\cprotect\section{Using \verb|verbatim|}
```
The package _does_ work in this simple case, and deserves
consideration in many others cases; the package documentation gives
more details.

Another way out is to use one of ''argument types'' of the
`\NewDocumentCommand` command in the experimental LaTeX3 package
[`xparse`](http://ctan.org/pkg/xparse):
```latex
\NewDocumentCommand\cmd{ m v m }{#1 `#2' #3}
\cmd{Command }|\furble|{ isn't defined}
```
Which gives us:
  Command `\furble` isn't defined
The `m` tag argument specifies a normal mandatory argument,
and the `v` specifies one of these verbatim arguments.
As you see, it's implanting a `\verb`-style command argument in the
argument sequence of an otherwise ''normal'' sort of command; that
  `|` 
may be any old character that doesn't
conflict with the content of the argument.

This is pretty neat (even if the verbatim is in an argument of its
own) but the downside is that [`xparse`](http://ctan.org/pkg/xparse) pulls in
the experimental LaTeX3 programming environment
([`l3kernel`](http://ctan.org/pkg/l3kernel)) which is pretty big.

Other than the [`cprotect`](http://ctan.org/pkg/cprotect) package, there are four partial
solutions to the problem:
  

-  Some packages have macros which are designed to be responsive
    to verbatim text in their arguments.  For example,
    the [`fancyvrb`](http://ctan.org/pkg/fancyvrb) package defines a command
    `\VerbatimFootnotes`, which redefines the `\footnotetext`
    command, and hence also the behaviour of the `\footnote`)
    command, in such a way that you can include `\verb` commands in
    its argument.  This approach could in principle be extended to the
    arguments of other commands, but it can clash with other packages:
    for example, `\VerbatimFootnotes` interacts poorly with the
    `para` option of the [`footmisc`](http://ctan.org/pkg/footmisc) package.
  

    The [`memoir`](http://ctan.org/pkg/memoir) class defines its `\footnote` command so that
    it will accept verbatim in its arguments, without any supporting package.
-  The [`fancyvrb`](http://ctan.org/pkg/fancyvrb) package defines a command `\SaveVerb`,
    with a corresponding `\UseVerb` command, that allow you to save
    and then to reuse the content of its argument; for details of this
    extremely powerful facility, see the package documentation.
  

    Rather simpler is the [`verbdef`](http://ctan.org/pkg/verbdef) package, whose `\verbdef`
    command defines a (robust) command which expands to the verbatim
    argument given; the [`newverbs`](http://ctan.org/pkg/newverbs) package provides a similar
    function as well as several related ones.
-  In a similar vein, the [`verbatimbox`](http://ctan.org/pkg/verbatimbox) package makes it
    possible to put verbatim material in a box:
    ```latex
    \begin{verbbox}
    some exotic _&$ stuff
    \end{verbbox}
    \theverbbox
    ```
    the operation typesets exotic stuff into an anonymous box, and its
    contents may be retrieved using the command `\theverbbox`.  It is
    clear that it's in the same mould as the `\verbdef` command
    mentioned above; the package defines other similar commands.
-  The [`tcolorbox`](http://ctan.org/pkg/tcolorbox) package provides a similar facility
-  If you have a single character that is giving trouble (in
    its absence you could simply use `\texttt`), consider using
    `\string`.  `\texttt{my`\string`_name}`
    typesets the same as 
    `\verb+my_name+`, and will work in the argument of a command.  It
    won't, however, work in a moving argument, and no amount of
    [`\protect`ion](./FAQ-protect.html) will make it work in
    such a case.
  

    A robust alternative is:
    ```latex
    \chardef\us=`\_
    ...
    \section{... \texttt{my\us name}}
    ```
    Such a definition is 'naturally' robust; the construction
    ''&lsaquo;_back-tick_&rsaquo;`\&lsaquo;_char_&rsaquo;` may be used for any
    troublesome character (though it's plainly not necessary for things
    like percent signs for which (La)TeX already provides
    robust macros).
  

-  One may also consider putting verbatim material in an external
    file; this is somewhat more tedious, but the file may be reused
    several times within a single document.  The [`tcolorbox`](http://ctan.org/pkg/tcolorbox)
    package allows this:
    ```latex
    \begin{tcbverbatimwrite}{<file name>}
    ...
    \end{tcbverbatimwrite}
    ```
    which (as one might guess) writes to the named file; load the saved
    contents using `\input{<file name>}`
  

    A second environment puts your verbatim material in an (apparently)
    anonymous temporary file:
    ```latex
    \begin{tcbwritetemp}{<file name>}
    ...
    \end{tcbverbatimwrite}
    ```
    In this case, you use the anonymous file with the `\tcbusetemp`
    macro.  (You can change the name used for the 'anonymous' file, if
    its default proves troublesome.)
  

    The [`moreverb`](http://ctan.org/pkg/moreverb) package provides a `\verbatimwrite`
    command, which doesn't provide an anonynous file.
  

    Macros, to achieve the same effect, are outlined in the
    documentation of the [`verbatim`](http://ctan.org/pkg/verbatim) package; the macros use the
    facilities of the package, but the user has to write a mini-package
    actually to use them.

