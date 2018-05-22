# Finding if a label is undefined

People seem to want to know (at run time) if a label is undefined (I
don't actually understand _why_, particularly: it's a transient
state, and LaTeX deals with it quite well).

A resolved label is simply a command:
`\r@``&lsaquo;_label-name_&rsaquo;`; determining if the label is set is
then simply a matter of detecting if the command exists.  The usual
LaTeX internal way of doing this is to use the command
`ifundefined`:
  `ifundefined{r@label-name}{undef-cmds}{def-cmds}`
In which, &lsaquo;_label-name_&rsaquo; is exactly what you would use in
a `\label` command, and the remaining two arguments are command
sequences to be used if the label is undefined
(&lsaquo;_undef-cmds_&rsaquo;) or if it is defined
(&lsaquo;_def-cmds_&rsaquo;).

Note that any command that incorporates `ifundefined` is naturally
fragile, so remember to create it with `\DeclareRobustCommand` or to
use it with `\protect` in a moving argument.

If you're into this game, you may well not care about LaTeX's
warning about undefined labels at the end of the document; however,
if you are, include the command `\G@refundefinedtrue` in
&lsaquo;_`undef-cmds`_&rsaquo;.

And of course, remember you're dealing in internal commands, and pay
attention to the [at-signs](./FAQ-atsigns.html).

All the above can be avoided by using the [`labelcas`](http://ctan.org/pkg/labelcas) package:
it provides commands that enable you to switch according to the state
of a single label, or the states of a list of labels.  The package's
definition is a bit complicated, but the package itself is pretty
powerful.

