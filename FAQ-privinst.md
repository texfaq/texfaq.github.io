# ''Private'' installations of files

It sometimes happens that you need a new version of some macro package
or font, but that the machine you use is maintained by someone who's
unwilling to update and won't give you privileges to do the job
yourself.  A [''temporary'' installation](./FAQ-tempinst.html) is
sometimes the correct approach, but if there's the slightest chance
that the installation will be needed on more than one project,
temporary installations aren't right.

In circumstances where you have plenty of quota on backed-up media, or
adequate local scratch space, the correct approach is to create a
private installation of (La)TeX which includes the new stuff you
need; this is the ideal, but is not generally possible.

So, since you can't install into the public `texmf` tree, you
have to install into a `texmf` tree of your own; fortunately, the
TDS standard allows for this, and modern distributions allow
you to do it.  The most modern distributions refer to the tree as
`$TEXMFHOME`, but it used to be called `$HOMETEXMF`;
so to check that your TeX system does indeed support the mechanism
you should start with
```latex
kpsewhich -var-value TEXMFHOME
```
(for example).  This will almost invariably return a pointer to a
subdirectory `texmf` of your home directory; the commonest
exception is Macintoshes, using MacTeX, where the diretory is
conventionally `Library/texmf` in your home directory.

If you can confirm that the technique does indeed work, install your
new package (or whatever) in the [correct place](./FAQ-install-where.html)
in a tree based on `$HOME/texmf`, 
and generate an index of that tree
```latex
texhash $HOME/texmf
```
(the argument specifies which tree you are indexing: it's necessary
since you don't, by hypothesis, have access to the main tree, and
`texhash` without the argument would try to write the main
tree.

There are two wrinkles to this simple formula: first, the installation
you're using may _not_ define a home TEXMF directory, and second,
there may be some obstruction to using `$HOME/texmf` 
as the
default name.  In either case, a good solution is to have your own
`texmf.cnf`&nbsp;&mdash; an idea that sounds more frightening that it
actually is.  The installation's existing file may be located with the
command:
```latex
kpsewhich texmf.cnf
```
Take a copy of the file and put it into a directory of your own; this
could be any directory, but an obvious choice is the `web2c`
directory of the tree you want to create, i.e.,
`$HOME/texmf/web2c` 
or the like.  Make an environment variable to
point to this directory:
```latex
TEXMFCNF=$HOME/texmf/web2c
export TEXMFCNF
```
(for a Bourne shell style system), or
```latex
setenv TEXMFCNF $HOME/texmf/web2c
```
(for a C-shell style system).  Now edit the copy of `texmf.cnf`

There will be a line in the existing file that defines the tree where
everything searches; the simplest form of the line is:
```latex
TEXMF = !!$TEXMFMAIN
```
but, there are likely to be several alternative settings behind
comment markers ('[[[texttt]]]
installed your system may have left them there.  Whatever, you need to
modify the line that's in effect: change the above to three lines:
```latex
HOMETEXMF = $HOME/texmf
TEXMF = {$HOMETEXMF,!!$TEXMFMAIN}
% TEXMF = !!$TEXMFMAIN
```
the important point being that `$HOMETEXMF` must come before
whatever was there before, inside the braces.  For example, if the
original was
```latex
TEXMF = {!!$LOCALTEXMF,!!$TEXMFMAIN}
```
it should be converted to:
```latex
HOMETEXMF = $HOME/texmf
TEXMF = {$HOMETEXMF,!!$LOCALTEXMF,!!$TEXMFMAIN}
% TEXMF = {!!$LOCALTEXMF,!!$TEXMFMAIN}
```
(retaining the original, as a comment, is merely an aide-memoir in
case you need to make another change, later).  The `!!` signs
tell the file-searching library that it should insist on a
`texhash`-ed directory tree; if you can count on yourself
remembering to run `texhash` on your new tree every time you
change it, then it's worth adding the marks to your tree:
```latex
TEXMF = {!!$HOMETEXMF,!!$LOCALTEXMF,!!$TEXMFMAIN}
```
as this will make (La)TeX find its files marginally faster.

Having made all these changes, (La)TeX should ''just use'' files in
your new tree, in preference to anything in the main tree&nbsp;&mdash; you can
use it for updates to packages in the main tree, as well as for
installing new versions of things.

