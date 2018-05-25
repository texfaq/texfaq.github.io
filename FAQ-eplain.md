---
title: What is Eplain?
category: background
permalink: /FAQ-eplain
date: 2014-06-10
---

# What is Eplain?

The [Eplain](http://tug.org/eplain/)
macro package expands on and extends the definitions in Plain TeX.
Eplain is not intended to provide ''generic typesetting
capabilities'', as do ConTeXt, LaTeX or
[Texinfo](/FAQ-texinfo).  Instead, it defines macro tools that
should be useful whatever commands you choose to use when you prepare
your manuscript.

For example, Eplain does not have a command `\section`,
which would format section headings in an ''appropriate'' way, as
LaTeX's `\section` does.  The philosophy of Eplain is that
some people will always need or want to go beyond the macro designer's
idea of ''appropriate''.  Canned sets of macros are fine&nbsp;&mdash; as long as you
are willing to accept the resulting output.  If you don't like the
results, or if you are trying to match a different format, you may
find that Eplain is for you.

On the other hand, almost everyone would like capabilities such as
cross-referencing by labels, so that you don't have to put actual page
numbers in the manuscript.  The authors of Eplain believe it is the
only generally available macro package that does not force its
typographic style on an author, and yet provides these capabilities.

Another useful feature of Eplain is the ability to create PDF files
with hyperlinks.  The cross-referencing macros can implicitly generate
hyperlinks for the cross-references, but you can also create explicit
hyperlinks, both internal (pointing to a destination within the
current document) and external (pointing to another local document or
a URL).

Several LaTeX packages provide capabilities which Plain TeX
users are lacking, most notably text coloring and rotation provided by
the [`graphics`](https://ctan.org/pkg/graphics) bundle (packages [`color`](https://ctan.org/pkg/color) and
[`graphics`](https://ctan.org/pkg/graphics)).  Although the [`graphics`](https://ctan.org/pkg/graphics) bundle provides
a Plain TeX ''loader'' for some of the packages, it is not a
trivial job to pass options to those packages under Plain TeX, and
much of the functionality of the packages is accessed through package
options.  Eplain extends the loader so that options can be passed
to the packages just as they are in LaTeX.  The following packages are
known to work with Eplain:  [`graphics`](https://ctan.org/pkg/graphics), [`graphicx`](https://ctan.org/pkg/graphicx),
[`color`](https://ctan.org/pkg/color), [`autopict`](https://ctan.org/pkg/autopict) (LaTeX picture environment),
[`psfrag`](https://ctan.org/pkg/psfrag), and [`url`](https://ctan.org/pkg/url).

[Eplain documentation](https://www.tug.org/eplain/doc/eplain.html) is
available online (there's a PDF copy in the CTAN
package as well), and there's also a mailing list&nbsp;&mdash; sign up, or
browse the list archives, via
[https://tug.org/mailman/listinfo/tex-eplain]

