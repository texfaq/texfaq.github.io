# Float(s) lost

The error
```latex
! LaTeX Error: Float(s) lost.
```
seldom occurs, but always seems deeply cryptic when it _does_
appear.

The message means what it says: one or more figures, tables, etc., or
marginpars has not been typeset.  (Marginpars are treated internally
as floats, which is how they come to be lumped into this error
message.)

The most likely reason is that you placed a float or a `\marginpar`
command inside another float or marginpar, or inside a
`minipage` environment, a `\parbox` or `\footnote`.
Note that the error may be detected a long way from the problematic
command(s), so the techniques of 
[tracking down elusive errors](./FAQ-erroradvice.html) all need to be
called into play.

This author has also encountered the error when developing macros that
used the LaTeX internal float mechanisms.  Most people doing that
sort of thing are expected to be able to work out their own problems&hellip;

