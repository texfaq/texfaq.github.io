# How to change the format of labels

By default, when a label is created, it takes on the appearance of the
counter labelled, so the label appears as
`\the``&lsaquo;_counter_&rsaquo;`&nbsp;&mdash; what would be used if you
asked to typeset the counter in your text.  This isn't always what you
need: for example, if you have nested enumerated lists with the outer
numbered and the inner labelled with letters, one might expect to want
to refer to items in the inner list as ''2(c)''.   (Remember, you can
[change the structure of list items](./FAQ-enumerate.html).)
The change is of course
possible by explicit labelling of the parent and using that label to
construct the typeset result&nbsp;&mdash; something like
```latex
\ref{parent-item}(\ref{child-item})
```
which would be both tedious and error-prone.  What's more, it would be
undesirable, since you would be constructing a visual representation
which is inflexible (you couldn't change all the references to elements
of a list at one fell swoop).

LaTeX in fact has a label-formatting command built into every label
definition; by default it's null, but it's available for the user to
program.  For any label &lsaquo;_counter_&rsaquo; there's a LaTeX internal
command `\p@`&lsaquo;_`counter`_&rsaquo;; for example, a label definition
on an inner list item is supposedly done using the command
`\p@enumii{`\theenumii`}`.  Unfortunately, the internal
workings of this aren't quite right, and you need to patch the
`\refstepcounter` command:
```latex
\renewcommand*\refstepcounter[1]{\stepcounter{#1}%
  \protected@edef\@currentlabel{%
    \csname p@#1\expandafter\endcsname
      \csname the#1\endcsname
  }%
}
```
With the patch in place you can now, for example, change the labels on
all inner lists by adding the following code in your preamble:
```latex
\makeatletter
\renewcommand{\p@enumii}[1]{\theenumi(#1)}
\makeatother
```
This would make the labels for second-level enumerated lists appear as
''1(a)'' (and so on).  The analogous change works for any counter that
gets used in a `\label` command.

In fact, the [`fncylab`](http://ctan.org/pkg/fncylab) package does all the above (including
the patch to LaTeX itself).  With the package, the code above is
(actually quite efficiently) rendered by the command:
```latex
\labelformat{enumii}{\theenumi(#1)}
```
In fact, the above example, which we can do in several different ways,
has been rendered obsolete by the appearance of the [`enumitem`](http://ctan.org/pkg/enumitem)
package, which is discussed in the answer about 
[decorating enumeration lists](./FAQ-enumerate.html).

