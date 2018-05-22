# The structure of TeX error messages

TeX's error messages are reminiscent of the time when TeX itself
was conceived (the 1970s): they're not terribly user-friendly, though
they do contain all the information that TeX can offer, usually in
a pretty concise way.

TeX's error reports all have the same structure:
  

-  An error message
-  Some 'context'
-  An error prompt

The error message will relate to the _TeX_ condition that is
causing a problem.  Sadly, in the case of complex macro packages such
as LaTeX, the underlying TeX problem may be superficially
difficult to relate to the actual problem in the ''higher-level''
macros.  Many LaTeX-detected problems manifest themselves as
'generic' errors, with error text provided by LaTeX itself (or by a
LaTeX class or package).

The context of the error is a stylised representation of what TeX
was doing at the point that it detected the error.  As noted in
[approaching errors](./FAQ-erroradvice.html), a macro package
can tell TeX how much context to display, and the user may need to
undo what the package has done.  Each line of context is split at the
point of the error; if the error _actually_ occurred in a macro
called from the present line, the break is at the point of the call.
(If the called object is defined with arguments, the ''point of call''
is after all the arguments have been scanned.)  For example:
```latex
\blah and so on
```
produces the error report
```latex
! Undefined control sequence.
l.4 \blah
          and so on
```
while:
```latex
\newcommand{\blah}[1]{\bleah #1}
\blah{to you}, folks
```
produces the error report
```latex
! Undefined control sequence.
\blah #1->\bleah 
                 #1
l.5 \blah{to you}
                 , folks
```
If the argument itself is in error, we will see things such as
```latex
\newcommand{\blah}[1]{#1 to you}
\blah{\bleah}, folks
```
producing
```latex
! Undefined control sequence.
<argument> \bleah 
                  
l.5 \blah{\bleah}
                 , folks
```

The prompt accepts single-character commands: the list of what's
available may be had by typing `?`.  One immediately valuable
command is `h`, which gives you an expansion of TeXs original
pr&eacute;cis message, sometimes accompanied by a hint on what to do to
work round the problem in the short term.  If you simply type 'return'
(or whatever else your system uses to signal the end of a line) at the
prompt, TeX will attempt to carry on (often with rather little
success).

