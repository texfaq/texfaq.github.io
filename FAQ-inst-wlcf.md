# Installing files ''where (La)TeX can find them''




In the past, package documentation used always to tell you to put your
files ''where LaTeX can find them''; this was always unhelpful&nbsp;&mdash;
if you knew where that _was_, you didn't need telling, but if you
_didn't_ know, you were completely stuck.


It was from this issue that the whole idea of the TDS sprang;
''where to put'' questions now come down to ''where's the TDS
tree?''.


We therefore answer the question by considering:
  

-  [what tree to use](./FAQ-what-TDS.html), and
-  [where in the tree to put the files](./FAQ-install-where.html).




Once we know the answer to both questions, and we've created any
directories that are needed, we simply copy files to their rightful
location.


This has done what the old requirement specified: LaTeX (or
whatever) _can_ (in principle) find the files.  However, in order
that the software _will_ find the files, we need to update an
index file.


On a MiKTeX system, open the window
  `Start`&rarr;
  `All Programs`&rarr;
  `MiKTeX &lsaquo;_version_&rsaquo;`&rarr;
  `Settings`,
and click on `Refresh FNDB`.
The job may also be done in a command window, using the command:
```latex
initexmf --update-fndb
```
The 
[MiKTeX documentation](http://docs.miktex.org/manual/initexmf.html)
gives further details about `initexmf`.


On a TeX&nbsp;Live-based system (or its predecessor teTeX, use the command
`texhash` (or if that's not available, `mktexlsr`&nbsp;&mdash;
they ought to be different names for the same program).


Having done all this, the new package will be available for use.


