# Enlarging TeX

The TeX error message 'capacity exceeded' covers a multitude of
problems.  What has been exhausted is listed in brackets after the
error message itself, as in:
```latex
! TeX capacity exceeded, sorry
...              [main memory size=263001].
```
Most of the time this error can be fixed
_without_ enlarging TeX. The most common causes are unmatched braces,
extra-long lines, and poorly-written macros. Extra-long lines are
often introduced when files are transferred incorrectly between
operating systems, and line-endings are not preserved properly (the
tell-tale sign of an extra-long line error is the complaint
that the `buf_size` has overflowed).

If you really need to extend your TeX's capacity, the proper method
depends on your installation.  There is no need (with modern TeX
implementations) to change the defaults in Knuth's WEB source;
but if you do need to do so, use a change file to modify the values set in
module 11, recompile your TeX and regenerate all format files.

Modern implementations allow the sizes of the various bits of TeX's
memory to be changed semi-dynamically.  Some (such as emTeX) allow
the memory parameters to be changed in command-line switches when
TeX is started; most frequently, a configuration file is read which
specifies the size of the memory.  On `web2c`-based systems,
this file is called `texmf.cnf`: see the documentation that comes
with the distribution for other implementations.  Almost invariably,
after such a change, the format files need to be regenerated after
changing the memory parameters.

