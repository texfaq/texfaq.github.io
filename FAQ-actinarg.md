# Active characters in command arguments

Occasionally, it's nice to make one or two characters active in the
argument of a command, to make it easier for authors to code the
arguments.

Active characters _can_ be used safely in such situations; but
care is needed.

An example arose while this answer was being considered: an aspirant
macro writer posted to `comp.text.tex` asking for help to
make `#` and `b` produce musical sharp and flat signs, respectively,
in a macro for specifying chords.

The first problem is that both `#` and `b` have rather important uses
elsewhere in TeX (to say the least!), so that the characters can
only be made active while the command is executing.

Using the techniques discussed in 
''[characters as commands](./FAQ-activechars.html)'',
we can define:
```latex
\begingroup
  \catcode`\#=\active
  \gdef#{$\sharp$}
\endgroup
```
and:
```latex
\begingroup
  \lccode`\~=`\b
  \lowercase{\endgroup
    \def~{$\flat$}%
  }
```
The second problem is one of timing: the command has to make each
character active _before_ its arguments are read: this means that
the command can't actually ''have'' arguments itself, but must be
split in two.  So we write:
```latex
\def\chord{%
  \begingroup
    \catcode`\#=\active
    \catcode`\b=\active
    \Xchord
}
\def\Xchord#1{%
    \chordfont#1%
  \endgroup
}
```
and we can use the command as `\chord{F#}` or
`\chord{Bb minor}`.

Two features of the coding are important:
  

-  `\begingroup` in `\chord` opens a group that is closed by
    `\endgroup` in `\Xchord`; this group limits the change of
    category codes, which is the _raison d'&ecirc;tre_ of the whole
    exercise.
-  Although `#` is active while `\Xchord` is executed, it's
    _not_ active when it's being defined, so that the use of `#1`
    doesn't require any special attention.

Note that the technique used in such macros as `\chord`, here, is
analogous to that used in such commands as `\verb`; and, in just the
same way as `\verb` (see
''[`\verb` doesn't work in arguments](./FAQ-verbwithin.html)''),
`\chord` won't work inside the argument of another command (the
error messages, if they appear at all, will probably be rather odd).

