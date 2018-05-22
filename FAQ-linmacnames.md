# Non-letters in macro names

New LaTeX users are often suprised that macro definitions
containing non-letters, such as
```latex
\newcommand{\cul8r}{Goodbye!}
```
fail to compile.  The reason is that the TeX macro language, unlike
most programming languages, allows 
[nothing but letters in macro names](./FAQ-whatmacros.html).

There are a number of techniques for defining a macro with a name like
`\cul8r`.  Unfortunately, none of the techniques is particularly
good:
  

1.  Use `\csname`&hellip;`\endcsname` to define and invoke the
    macro:
    ```latex
    \expandafter\newcommand\csname cul8r\endcsname{Goodbye!}
    I said, ``\csname cul8r\endcsname''.
    ```
    

    - Pro: No unexpected side effects
    - Con: So verbose as to be unusable
    

2.  Define a ''special-command generator'', and  use the resulting
    commands:
    ```latex
    \newcommand{\DefineRemark}[2]{%
      \expandafter\newcommand\csname rmk-#1\endcsname{#2}%
    }
    \newcommand{\Remark}[1]{\csname rmk-#1\endcsname}
    ...
    \DefineRemark{cul8r}{Goodbye!}
    ...
    \Remark{cul8r}
    ```
    

    - Pro: Straightforward to use, not too untidy
    - Con: It's hardly doing what we set out to do (experts will
      see that you are defining a macro, but others likely won't)
    

3.  Convince TeX that `8` is a letter:
    ```latex
    \catcode`8 = 11 
    \newcommand{\cul8r}{Goodbye!}
    I said, ``\cul8r''.
    ```
    

    - Pro: `\cul8r` can be used directly
    - Con: Likely to break other uses of `8` (such as
      numbers or dimensions; so
      `\setlength{`\paperwidth`}{8in}` tells us:
    ```latex
    ! Missing number, treated as zero.
    <to be read again> 
                       8
    ```
    

    As a general rule, changing category codes is something to use
    _in extremis_, after detailed examination of options.  It is
    conceivable that such drastic action could be useful for you, but
    most ordinary users are well advised not even to try such a
    technique.
4.  Define a macro `\cul` which must always be followed by
    `8r`:
    ```latex
    \def\cul8r{Goodbye!}
    I said, ``\cul8r''.
    ```
    

    - Pro: `\cul8r` can be used directly
    - Con&nbsp;#1: Breaks if `\cul` is followed by anything other
      than `8r`, with a confusing diagnostic&nbsp;&mdash;
      `\cul99` produces:
    ```latex
    ! Use of \cul doesn't match its definition.
    <*> \cul9
             9
    ```
      (which would confuse someone who hadn't even realised there
      _was_ a definition of `\cul` in the document).
    - Con&nbsp;#2: Silently redefines existing `\cul`, if any;
      as a result, the technique cannot be used to define both a
      `\cul8r` and, say, a `\cul123` macro in the same
      document.
    

Technique&nbsp;3 is in fact commonly used&nbsp;&mdash; in a limited form&nbsp;&mdash; within
most LaTeX packages and within LaTeX itself.  The convention is to
use `@` within the names of internal macros to hide them
from the user and thereby prevent naming conflicts.  To this end,
LaTeX automatically treats `@` as a letter while
processing classes and packages and as a non-letter while processing
the user's document.  The key to this technique is the separation:
internally a non-letter is used for macro names, and the user doesn't
see anything of it, while the status remains ''frozen'' in all the
definitions created within the class or package.  See 
[`` and `@` in macro names](./FAQ-atsigns.html) for
more information.

Note that analogous use of technique&nbsp;3 in this example would give us
```latex
\begingroup
  \catcode`8 = 11 
  \gdef\cul8r{Goodbye!}
  \gdef\later{\cul8r}
\endgroup
I said, ``\later''.
```
which works, but rather defeats the object of the exercise.
(`\later` has the ''frozen'' catcode for '8', even though the value
has reverted to normal by the time it's used; note, also, the use of
the primitive command `\gdef`, since `\newcommand` can't make a
macro that's available outside the group.)

_Recommendation_: Either choose another mechanism (such as
`\DefineRemark` above), or choose another name for your macro, one
that contains only ordinary letters.  A common approach is to use
roman numerals in place of arabic ones:
```latex
\newcommand{\culVIIIr}{Goodbye!}
```
which rather spoils the intent of the joke implicit in the example
`\cul8r`!

