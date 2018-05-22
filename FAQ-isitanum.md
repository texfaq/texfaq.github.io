# Is the argument a number?

TeX's own lexical analysis doesn't offer the macro programmer
terribly much support: while category codes will distinguish letters
(or what TeX currently thinks of as letters) from everything else,
there's no support for analysing numbers.

The simple-minded solution is to compare numeric characters with the
characters of the argument, one by one, by a sequence of direct tests,
and to declare the argument ''not a number'' if any character fails
all comparisons:
```latex
\ifx1#1
\else\ifx2#1
...
\else\ifx9#1
\else\isanumfalse
\fi\fi...\fi
```
which one would then use in a tail-recursing macro to gobble an
argument.  One could do slightly better by assuming (pretty safely)
that the digits' character codes are consecutive:
```latex
\ifnum`#1<`0 \isanumfalse
\else\ifnum`#1>`9 \isanumfalse
     \fi
\fi
```
again used in tail-recursion.  However, these forms aren't very
satisfactory: getting the recursion ''right'' is troublesome (it has a
tendency to gobble spaces in the argument), and in any case TeX
itself has mechanisms for reading numbers, and it would be nice to use
them.

Donald Arseneau's [`cite`](http://ctan.org/pkg/cite) package offers the following test
for an argument being a strictly positive integer:
```latex
\def\IsPositive#1{%
  TT\fi
  \ifcat_\ifnum0<0#1 _\else A\fi
}
```
which can be adapted to a test for a non-negative integer thus:
```latex
\def\IsNonNegative{%
  \ifcat_\ifnum9<1#1 _\else A\fi
}
```
or a test for any integer:
```latex
\def\gobbleminus#1{\ifx-#1\else#1\fi}
\def\IsInteger#1{%
  TT\fi
  \ifcat_\ifnum9<1\gobbleminus#1 _\else A\fi
}
```
but this surely stretches the technique further than is reasonable.

If we don't care about the sign, we can use TeX to remove the
entire number (sign and all) from the input stream, and then look at
what's left:
```latex
\def\testnum#1{\afterassignment\testresult\count255=0#1 \end}
\def\testresult#1\end{\ifx\end#1\end\isanumtrue\else\isanumfalse\fi}
```
(which technique is due to David Kastrup; the trick for avoiding the
errors, noted in an earlier version of this answer, was suggested by
Andreas Matthias).
In a later thread on the same topic, Michael Downes offered:
```latex
\def\IsInteger#1{%
  TT\fi
  \begingroup \lccode`\-=`\0 \lccode`+=`\0
    \lccode`\1=`\0 \lccode`\2=`\0 \lccode`\3=`\0
    \lccode`\4=`\0 \lccode`\5=`\0 \lccode`\6=`\0
    \lccode`\7=`\0 \lccode`\8=`\0 \lccode`\9=`\0
  \lowercase{\endgroup
    \expandafter\ifx\expandafter\delimiter
    \romannumeral0\string#1}\delimiter
}
```
which relies on `\romannumeral` producing an empty result if its
argument is zero.  Sadly, this technique has the unfortunate property
that it accepts simple expressions such as `1+2-3`; this
could be solved by an initial `\gobbleminus`-like construction.

All the complete functions above are designed to be used in TeX
conditionals written ''naturally''&nbsp;&mdash; for example:
```latex
\if\IsInteger{<subject of test>}%
  <deal with integer>%
\else
  <deal with non-integer>%
\fi
```
The LaTeX [`memoir`](http://ctan.org/pkg/memoir) class has an internal command of its own,
`\checkifinteger{num}`, that sets the conditional command
`\ifinteger` according to whether the argument was an integer.

Of course, all this kerfuffle would be (essentially) void if there was
a simple means of ''catching'' TeX errors.  Imagining an
error-catching primitive `\ifnoerror`, one might write:
```latex
\def\IsInteger#1{%
  TT%
  \ifnoerror
    \tempcount=#1\relax
% carries on if no error
    \expandafter\iftrue
  \else
% here if there was an error
    \expandafter\iffalse
  \fi
}
```
thus using TeX's own integer-parsing code to do the check.  It's a
pity that such a mechanism was never defined (it could be that it's
impossible to program within TeX!).

