# ''Temporary'' installation of (La)TeX files

Operating systems and applications need to know where to find files:
many files that they need are ''just named''&nbsp;&mdash; the user doesn't
necessarily know _where_ they are, but knows to ask for them.
The commonest case, of course, is the commands whose names you type to
a shell (yes, even Windows' ''MS-DOS prompt'') are using a shell to read what
you type: many of the commands simply involve loading and executing a
file, and the `PATH` variable tells the shell where to find those files.

Modern TeX implementations come with a bunch of search paths
built in to them.  In most circumstances these paths are adequate, but
one sometimes needs to extend them to pick up files in strange
places: for example, we may wish to try a new bundle of packages
before [installing them 'properly'](./FAQ-installthings.html).  To do
this, we need to change the relevant path as TeX perceives it.
However, we don't want to throw away TeX's built-in path (all of a
sudden, TeX won't know how to deal with all sorts of things).

To _extend_ a TeX path, we define an operating system
environment variable in 'path format', but leaving a gap which TeX
will fill with its built-in value for the path.  The commonest case is
that we want to place our extension in front of the path, so that our
new things will be chosen in preference, so we leave our 'gap to be
filled' at the end of the environment variable.  The syntax is simple
(though it depends which shell you're actually using): so on a
Unix-like system, using the `bash` shell, the job might be
done like:
```latex
export TEXINPUTS=/tmp:
```
while in a Windows system, within a MS-DOS window, it would be:
```latex
set TEXINPUTS=C:/temp;
```
In either case, we're asking TeX to load files from the root disc
temporary files directory; in the Unix case, the ''empty slot'' is
designated by putting the path separator `:` on its own at the end
of the line, while in the Windows case, the technique is the same, but
the path separator is `;`.

Note that in either sort of system, the change will only affect
instances of TeX that are started from the shell where the
environment variable was set.  If you run TeX from another window,
it will use the original input path.  To make a change of input path
that will ''stick'' for all windows, set the environment variable in
your login script or profile (or whatever) in a Unix system and log
out and in again, or in `autoexec.bat` in a Windows system, and
reboot the system.

While all of the above has talked about where TeX finds its macro
files, it's applicable to pretty much any sort of file any
TeX-related program reads&nbsp;&mdash; there are lots of these paths, and of
their corresponding environment variables.  In a
`web2c`-based system, the copious annotations in the
`texmf.cnf` system configuration file help you to learn which
path names correspond to which type of file.

