# Which tree to use




In almost all cases, new material that you install should go into the
''local'' tree of your (La)TeX installation.  (A discussion of
reasons _not_ to use the local tree appears below.)


On a Unix(-alike) system, using TeX&nbsp;Live or teTeX, the root
directory will be named something like `/usr/share/texmf-local/`
or `/usr/local/share/texmf/`
You can ask such a system where it believes a local tree should be:
```latex
kpsewhich -var-value TEXMFLOCAL
```
the output being the actual path, for example (on the workstation this
author is using today):
```latex
/usr/local/share/texmf
```


In a MiKTeX installation, the location will in fact typically be
something you specified yourself when you installed MiKTeX in the
first place, but you may find you need to create one.  The MiKTeX
''Settings'' window (
  `Start`&rarr;
  `Programs`&rarr;
  `MiKTeX`&rarr;
  `Settings`)
has a tab `Roots`; that tab gives a list of current
TDS roots (they're typically not called
`texmf`-anything).  If there's not one there with
`local` in its name, create an appropriate one (see below),
and register it using the window's
`Add` button.


The 
[MiKTeX FAQ](http://docs.miktex.org/faq/maintenance.html)
suggests that you should create 
`C: Local TeX Files`, which is good if you
manage your own machine, but often not even possible in corporate, or
similar, environments&nbsp;&mdash; in such situations, the user may have no
control over the hard disc of the computer, at all.


So the real criterion is that your local tree should be somewhere that
_you_, rather than the system, control.  Restrictive systems often
provide a ''home directory'' for each user, mounted as a network
drive; this is a natural home for the user's local tree.  Other (often
academic) environments assume the user is going to provide a memory
stick, and will assign it a defined drive letter&nbsp;&mdash; another good
candidate location.  Note that the semantics of such a tree are
indistinguishable from those of a 
[''home'' TEXMF tree](./FAQ-privinst.html).


You might not wish to use the 'local' tree:
  

-  if the package, or whatever, is ''personal'' (for example,
    something commercial that has been licensed to you alone, or
    something you're developing yourself), it should go in your
    [''home'' TEXMF tree](./FAQ-privinst.html);
-  if you _know_ that the package you are installing is a
    replacement for the copy on the TEXMF tree of your (La)TeX
    distribution; in this case it is reasonable to replace the existing
    copy in the TEXMF tree.


If the system is upgraded (or otherwise re-installed), a copy made in
the TEXMF tree will probably be overwritten or deleted.  This
may be what you want, but otherwise it's a powerful incentive to use a
tree that is _not_ ''part of the installed system''.


The reason one might place upgrades the distribution's main tree is to
avoid confusion.  Suppose you were to place the file on the local
tree, and then install a new version of the distribution&nbsp;&mdash; you might
have an effect like:
  

-  distribution comes with package version n;
-  you install package version n+1 on the local tree; and
-  the updated distribution provides package version n+2.


In such a situation, you could find yourself using version
n+1 (from the local tree) _after_ the new
distribution has been installed.


If you install in the local tree, the only way to avoid such problems
is to carefully purge the local tree when installing a new
distribution.  This is tedious, if you're maintaining a large
installation.


