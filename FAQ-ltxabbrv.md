# LaTeX internal ''abbreviations'', etc.

In the deeps of time, when TeX first happened, computers had
extremely limited memory, and were (by today's standards) painfully
slow.  When LaTeX came along, things weren't much better, and even
when LaTeX 2e appeared, there was a strong imperative to save memory
space (and to a lesser extent) CPU time.

From the very earliest days, Knuth used shortcut macros to speed
things up.  LaTeX, over the years, has extended Knuth's list by a
substantial amount.  An interesting feature  of the ''abbreviations'' is
that on paper, they may look longer than the thing they stand for;
however, to (La)TeX they _feel_ smaller&hellip;

The table at the end of this answer lists the commonest of these
''abbreviations''.  It is not complete; as always, if the table
doesn't help, try the LaTeX source.  The table lists each
abbreviation's _name_ and its _value_, which provide most of
what a user needs to know.  The table also lists the abbreviation's
_type_, which is a trickier concept: if you need to know, the
only real confusion is that the abbreviations labelled 'defn' are
defined using an `_xxxx_def` command.

<table><tbody>
<tr><td>Name </td><td> Type </td><td> Value </td></tr>
<tr><td>`\m@ne` </td><td> count </td><td> -1 </td></tr>
<tr><td>`\p@`  </td><td> dimen </td><td> 1pt </td></tr>
<tr><td>`\z@`  </td><td> dimen </td><td> 0pt </td></tr>
<tr><td>`\z@skip` </td><td> skip </td><td> 0pt plus 0pt minus 0pt </td></tr>
<tr><td>`ne` </td><td> defn </td><td> 1 </td></tr>
<tr><td>`\tw@` </td><td> defn </td><td> 2</td></tr>
<tr><td>`\thr@@` </td><td> defn </td><td> 3 </td></tr>
<tr><td>`\sixt@@n` </td><td> defn </td><td> 16 </td></tr>
<tr><td>`cclv` </td><td> defn </td><td> 255 </td></tr>
<tr><td>`cclvi` </td><td> defn </td><td> 256 </td></tr>
<tr><td>`m` </td><td> defn </td><td> 1000 </td></tr>
<tr><td>`M` </td><td> defn </td><td> 10000 </td></tr>
<tr><td>`MM` </td><td> defn </td><td> 20000 </td></tr>
<tr><td>`vpt` </td><td> macro </td><td> 5 </td></tr>
<tr><td>`vipt` </td><td> macro </td><td> 6 </td></tr>
<tr><td>`viipt` </td><td> macro </td><td> 7 </td></tr>
<tr><td>`viiipt` </td><td> macro </td><td> 8 </td></tr>
<tr><td>`ixpt` </td><td> macro </td><td> 9 </td></tr>
<tr><td>`xpt` </td><td> macro </td><td> 10 </td></tr>
<tr><td>`xipt` </td><td> macro </td><td> 10.95 </td></tr>
<tr><td>`xiipt` </td><td> macro </td><td> 12 </td></tr>
<tr><td>`xivpt` </td><td> macro </td><td> 14.4 </td></tr>
<tr><td>`xviipt` </td><td> macro </td><td> 17.28 </td></tr>
<tr><td>`xxpt` </td><td> macro </td><td> 20.74 </td></tr>
<tr><td>`xxvpt` </td><td> macro </td><td> 24.88 </td></tr>
<tr><td>`plus` </td><td> macro </td><td> `plus` </td></tr>
<tr><td>`minus` </td><td> macro </td><td> `minus` </td></tr>
</tbody></table>

