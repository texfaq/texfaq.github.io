# Subverting a token register

A common requirement is to ''subvert'' a token register that other
macros may use.  The requirement arises when you want to add something
to a system token register (`\output` or `\every*`), but know
that other macros use the token register, too.  (A common requirement
is to work on `\everypar`, but LaTeX changes `\everypar` at
every touch and turn.)

The following technique, due to David Kastrup, does what you need, and
allows an independent package to play the exact same game:
```latex
\let\mypkg@@everypar\everypar
\newtoks\mypkg@everypar
\mypkg@everypar\expandafter{\the\everypar}
\mypkg@@everypar{\mypkgs@ownstuff\the\mypkg@everypar}
\def\mypkgs@ownstuff{%
  <stuff to do at the start of the token register>%
}
\let\everypar\mypkg@everypar
```
As you can see, the package ([`mypkg`](http://ctan.org/pkg/mypkg))
  

-  creates an alias for the existing ''system'' `\everypar`
    (which is frozen into any surrounding environment, which will carry
    on using the original);
-  creates a token register to subvert `\everypar` and
    initialises it with the current contents of `\everypar`;
-  sets the ''old'' `\everypar` to execute its own extra code,
    as well as the contents of its own token register;
-  defines the macro for the extra code; and
-  points the token `\everypar` at the new token register.

and away we go.

The form `\mypkg@...` is (sort of) blessed for LaTeX package
internal names, which is why this example uses macros of that form.

