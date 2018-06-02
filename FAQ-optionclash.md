---
title: Option clash for package
category: errors
permalink: /FAQ-optionclash
redirect_from: /FAQ-optclash
date: 201-06-10
---

The error message
```latex
! LaTeX Error: Option clash for package footmisc
```
means what it says&nbsp;&mdash; your document contains a (potentially) clashing
pair of options; sadly, it is not always obvious how the error has
arisen.

If you simply write:
```latex
\usepackage[a]{foo}
...
\usepackage{foo}
```
LaTeX is happy, as it is with:
```latex
\usepackage[a]{foo}
...
\usepackage[a]{foo}
```
since LaTeX can see there's no conflict (in fact, the second load
does nothing).

Similarly,
```latex
\usepackage[a,b]{foo}
...
\usepackage[a]{foo}
```
produces no error and does nothing for the second load.

However
```latex
\usepackage[a]{foo}
...
\usepackage[b]{foo}
```
produces the error; even if option `b` is an alias for
option `a`&nbsp;&mdash; LaTeX doesn't ''look inside'' the package
to check anything like that.

The general rule is: the first load of a package defines a set of
options; if a further `\usepackage` or `\RequirePackage` also
calls for the package, the options on that call may not extend the set
on the first load.

Fortunately, the error (in that sort of case) is easily curable
once you've examined the preamble of your document.

Now, suppose package `foo` loads `bar` with option
`b`, and your document says:
```latex
\usepackage{foo}
...
\usepackage[a]{bar}
```
or
```latex
\usepackage[a]{bar}
...
\usepackage{foo}
```
the error will be detected, even though you have only explicitly
loaded `bar` once.  Debugging such errors is tricky: it may
involve reading the logs (to spot which packages were called), or the
documentation of package `foo`.

So perhaps you weren't entirely innocent&nbsp;&mdash; the error would have
occurred on the second line of:
`\usepackage[dvips]{graphics}`

`\usepackage[draft]{graphics}`
which could quite reasonably (and indeed correctly) have been typed:
`\usepackage[dvips,draft]{graphics}`

But if you've not made that mistake (even with several lines
separating the `\usepackage` commands, it's pretty easy to spot),
the problem could arise from something else loading the package for
you.  How do you find the culprit?  The "`h`" response to the
error message tells you which options were loaded each time.
Otherwise, it's down to the log analysis games discussed in 
''[How to approach errors](FAQ-erroradvice)''; the trick to remember
is that that the process of loading each file is parenthesised in the
log; so if package `foo` loads [`graphics`](https://ctan.org/pkg/graphics), the log
will contain something like:
```latex
(<path>/foo.sty ...
...
(<path>/graphics.sty ...
...)
...
)
```
(the parentheses for [`graphics`](https://ctan.org/pkg/graphics) are completely enclosed in
those for `foo`; the same is of course true if your class
`bar` is the culprit, except that the line will start with the
path to `bar.cls`).

If we're dealing with a package that loads the package you are
interested in, you need to ask LaTeX to slip in options when
`foo` loads it.  Instead of:
`\usepackage{foo}`

`\usepackage[draft]{graphics}`
you would write:
`\PassOptionsToPackage{draft}{graphics}`

`\usepackage{foo}`
The command `\PassOptionsToPackage` tells LaTeX to behave as if
its options were passed, when it finally loads a package.  As you would
expect from its name, `\PassOptionsToPackage` can deal with a list
of options, just as you would have in the the options brackets of
`\usepackage`.

The problem is more tricky if your document class loads a package you
want options for.  In this case, instead of:
`\documentclass[...]{bar}`

`\usepackage[draft]{graphics}`
you would write:
`\PassOptionsToPackage{draft}{graphics}`

`\documentclass[...]{bar}`
with `\PassOptionsToPackage` _before_ the `\documentclass`
command.

However, if the `foo` package or the `bar` class loads
[`graphics`](https://ctan.org/pkg/graphics) with an option of its own that clashes with
what you need in some way, you're stymied.  For example:
`\PassOptionsToPackage{draft}{graphics}`
where the package or class does:
`\usepackage[final]{graphics}`
sets `final` _after_ it's dealt with option you passed to
it, so your `draft` will get forgotten.  In extreme cases,
the package might generate an error here ([`graphics`](https://ctan.org/pkg/graphics) doesn't
go in for that kind of thing, and there's no indication that
`draft` has been forgotten).

In such a case, you have to modify the package or class itself
(subject to the terms of its licence).  It may prove useful to contact
the author: she may have a useful alternative to suggest.

