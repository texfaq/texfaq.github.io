# `\edef` does not work with `\protect`

Robust LaTeX commands are either ''naturally robust''&nbsp;&mdash; meaning that
they never need `\protect`, or ''self-protected''&nbsp;&mdash; meaning that
they have `\protect` built in to their definition in some
way.  Self-protected commands, and fragile commands with
`\protect`ion are only robust in a context where the `\protect`
mechanism is properly handled.  The body of an `\edef` definition
doesn't handle `\protect` properly, since `\edef` is a TeX
primitive rather than a LaTeX command.

This problem is resolved by a LaTeX internal command
`\protected@edef`, which does the job of `\edef` while keeping the
`\protect` mechanism working.  There's a corresponding
`\protected@xdef` which does the job of `\xdef`.

Of course, these commands need to be tended carefully, since they're
internal: see ['@' in control sequence names](./FAQ-atsigns.html).

