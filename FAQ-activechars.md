# Defining characters as macros

Single characters can act as macros (defined commands), and both
Plain TeX and LaTeX define the character
`&#x7e;` as a ''non-breakable space''.  A
character is made definable, or ''active'', by setting its
_category code_ (catcode) to be `\active` (13):
```latex
\catcode`\_=\active
```
Any character could, in principle, be activated this way and defined
as a macro:
```latex
\def_{\_}
```
which could be characterised as an over-simple answer to 
[using underscores](./FAQ-underscore.html).  However, you must be
wary: whereas people expect an active tilde, other active characters
may be unexpected and interact badly with other macros.  Furthermore,
by defining an active character, you preclude the character's use for
other purposes, and there are few characters ''free'' to be subverted
in this way.

To define the character `z` as a command, one would say something
like:
```latex
\catcode`\z=\active
\def z{Yawn, I'm tired}%
```
and each subsequent `z` in the text would become a
yawn. This would be an astoundingly bad idea for most documents, but
might have special applications.  (Note that, in 
`\def``  z`, 
`z` is no longer interpreted as a letter; the space
is therefore not necessary&nbsp;&mdash; `\defz` would do; we choose to
retain the space, for what little clarity we can manage.)
Some LaTeX packages facilitate such definitions. For example, the
[`shortvrb`](http://ctan.org/pkg/shortvrb) package with its `\MakeShortVerb` command.

TeX uses category codes to interpret characters as they are read 
from the input.
_Changing a catcode value will not affect characters that have already been read_.
Therefore, it is best if characters have fixed category codes for the
duration of a document.  If catcodes are changed for particular
purposes (the `\verb` command does this), then the altered
characters will not be interpreted properly when they  appear in the
argument to another command (as, for example, in
''[`\verb` in command arguments](./FAQ-verbwithin.html)'').
An exemplary case is the [`doc`](http://ctan.org/pkg/doc) package, which processes .dtx
files using the [`shortvrb`](http://ctan.org/pkg/shortvrb) package to define
`&#x7c;&hellip;&#x7c;` as a shorthand for
`\verb``&#x7c;&hellip;&#x7c;`. But `&#x7c;` is
also used in the preambles of tabular environments, so that tables in
`dtx` files can only have vertical line separation between
columns by employing special measures of some sort.

Another consequence is that catcode assignments made
in macros often don't work as expected 
(see ''[Active characters in command arguments](./FAQ-actinarg.html)'').
For example, the definition
```latex
\def\mistake{%
\catcode`_=\active
\def_{\textunderscore\-}%
}
```
does not work because it attempts to define an ordinary `_` character:
When the macro is used, the category change does not apply to the 
underscore character already in the macro definition.  Instead, one may
use:
```latex
\begingroup
\catcode`_=\active
\gdef\works{%    note the global \gdef
  \catcode`_=\active
  \def_{\textunderscore\-}%
}
\endgroup
```
The alternative (''tricksy'') way of creating such an isolated
definition depends on the curious properties of `\lowercase`, which
changes characters without altering their catcodes.  Since there is
always _one_ active character (`&#x7e;`), we
can fool `\lowercase` into patching up a definition without ever
explicitly changing a catcode:
```latex
\begingroup
  \lccode`\~=`\_
  \lowercase{\endgroup
    \def~{\textunderscore\-}%
  }%
```
The two definitions have the same overall effect (the character is
defined as a command, but the character does not remain active),
except that the first defines a `\global` command.

For active characters to be used only in maths mode, it is much better
to leave the character having its ordinary catcode, but assign it a
special active _maths code_, as with
```latex
\begingroup
  \lccode`~=`x
  \lowercase{\endgroup
    \def~{\times}%
  }%
\mathcode`x="8000
```
The special character does not need to be redefined whenever it is
made active&nbsp;&mdash; the definition of the command persists even if the
character's catcode reverts to its original value; the definition
becomes accessible again if the character once again becomes active.

