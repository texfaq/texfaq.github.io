# Option clash for package

So you've innocently added:
`\usepackage[draft]{foo}`
to your document, and LaTeX responds with
```latex
! LaTeX Error: Option clash for package foo.
```

The error is a complaint about loading a package 
_with options_, more than once.  LaTeX complains because it
has no means of examining the options, rather than because it
_knows_ there is a problem.  (You may load a package any number
of times in a document's preamble, with no options, and LaTeX will
ignore every loading request after the first; but you may only supply
options when you first load the package.)

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
''[How to approach errors](./FAQ-erroradvice.html)''; the trick to remember
is that that the process of loading each file is parenthesised in the
log; so if package [`foo`](http://ctan.org/pkg/foo) loads [`graphics`](http://ctan.org/pkg/graphics), the log
will contain something like:
```latex
(<path>/foo.sty ...
...
(<path>/graphics.sty ...
...)
...
)
```
(the parentheses for [`graphics`](http://ctan.org/pkg/graphics) are completely enclosed in
those for [`foo`](http://ctan.org/pkg/foo); the same is of course true if your class
[`bar`](http://ctan.org/pkg/bar) is the culprit, except that the line will start with the
path to `bar.cls`).

If we're dealing with a package that loads the package you are
interested in, you need to ask LaTeX to slip in options when
[`foo`](http://ctan.org/pkg/foo) loads it.  Instead of:
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

However, if the [`foo`](http://ctan.org/pkg/foo) package or the [`bar`](http://ctan.org/pkg/bar) class loads
[`graphics`](http://ctan.org/pkg/graphics) with an option of its own that clashes with
what you need in some way, you're stymied.  For example:
`\PassOptionsToPackage{draft}{graphics}`
where the package or class does:
`\usepackage[final]{graphics}`
sets `final` _after_ it's dealt with option you passed to
it, so your `draft` will get forgotten.  In extreme cases,
the package might generate an error here ([`graphics`](http://ctan.org/pkg/graphics) doesn't
go in for that kind of thing, and there's no indication that
`draft` has been forgotten).

In such a case, you have to modify the package or class itself
(subject to the terms of its licence).  It may prove useful to contact
the author: she may have a useful alternative to suggest.

