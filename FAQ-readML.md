# Using TeX to read SGML or XML directly

[Context (mark IV)](./FAQ-context.html) can process some
*ML, to produce typeset output directly.  Details of what can
(and can not) be done, are discussed in 
[The Context WIKI](http://wiki.contextgarden.net/XML).
Context is probably the system of choice for (La)TeX users who
also need to work in XML (and friends).  (Note that Context
mark&nbsp;IV requires [LuaTeX](./FAQ-luatex.html), and should
therefore be regarded as experimental, though many people _do_
use it successfully).

Older systems also manage, using no more than (La)TeX macro
programming, to process XML and the like.  David Carlisle's
[`xmltex`](http://ctan.org/pkg/xmltex) is the prime example; it offers a solution
for typesetting XML files, and is still in active (though not
very widespread) use.

One use of a TeX that can typeset XML files is as a backend
processor for XSL formatting objects, serialized as XML.
Sebastian Rahtz's PassiveTeX uses [`xmltex`](http://ctan.org/pkg/xmltex) to
achieve this end.

However, modern usage would proceed via XSL or XSLT2 to
produce a formattable version.

