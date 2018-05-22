# Getting MetaFont to do what you want

MetaFont allows you to create your own fonts, and most TeX users
will never need to use it&nbsp;&mdash; modern (La)TeX systems contain
rather few MetaFont fonts of any significance, and when MetaFont output is
needed the font generation is done, automatically, ''on the fly''.

If you find you have some special requirement that the system doesn't
satisfy, you need to know about MetaFont in rather more detail.  MetaFont,
unlike TeX, requires customisation for each output device: such
customisation is conventionally held in a ''mode'' associated with the
device.  Modes are commonly defined using the `mode_def`
convention described on page&nbsp;94 of _The MetaFontbook_ 
(see [TeX-related books](./FAQ-other-books.html)).  Your
distribution should provide
a file, conventionally called `local.mf`, containing all the
`mode_def`s you will be using. In the unlikely event that
`local.mf` doesn't already exist, Karl Berry's collection of
modes (`modes.mf`) is a good starting point 
(it can be used as a `local.mf` without modification in a
modern implementation of MetaFont).  
Settings for new output devices are added to `modes.mf` as they
become available.

Now create
a `plain` base file using `mf` (in ''initialisation''
mode), `plain.mf`, and `local.mf`: 
```latex
% mf -ini
This is METAFONT...
**plain # you type plain
(output)
*input local # you type this
(output)
*dump # you type this
Beginning to dump on file plain...
(output)
```
This will create a base file named `plain.base` (or something
similar; for example, it will be `PLAIN.BAS` on MS-DOS
systems).  Move the file to the directory containing the base files on
your system, and run `texhash` as necessary.

Now you need to make sure MetaFont loads this new base when it starts up. If
MetaFont loads the `plain` base by default on your system, then you're
ready to go. Under Unix (using the default TeX&nbsp;Live (and earlier)
distributions this does indeed happen, but we could for instance
define a command `plainmf`
<sup class="fmk">&dagger;</sup><span class="footnote">&dagger; 
  On the grounds that a command `plain` could be misconstrued
  as a reference to Plain TeX
</span>
which executes `mf -base=plain` (or, in more traditional
style `mf[[[&]]]lain`) which loads the `plain` base
file.

The usual way to create a font with MetaFont (with an appropriate base
file loaded) is to start MetaFont's input with the
line
```latex
\mode=<mode name>; mag=<magnification>; input <font file name>
```
in response to the `**` prompt or on the MetaFont command line. (If
`<mode name>` is unknown or omitted, the mode defaults to
'proof' mode and MetaFont will produce an output file called 
`<font file name>.2602gf`)
The `<magnification>` is a floating point number or a
'magstep' (magsteps define sizes by stating how many times you need to
multiply a base size by `1.2`, so for a base size of
`10`, `magstep 1` is `12`, `magstep 2` is
`14.4`
If `mag=<magnification>` is omitted, then the default
is `1`&nbsp;(`magstep 0`).  For example, to generate
`cmr10` at `12pt` for an Epson,
printer you might type
```latex
mf \mode=epson; mag=magstep 1; input cmr10
```
Note that under Unix the ` ` and `;`
characters must usually be quoted or escaped, so this would typically
look something like
```latex
 mf '\mode=epson; mag=magstep 1; input cmr10'
```
If you need a special mode that isn't in the base, you can put its
commands in a file (_e.g._, `ln03.mf`) and invoke it on the
fly with the `\smode` command.  For example, to create
`cmr10.300gf` for an LN03 printer, using the file
```latex
% This is ln03.mf as of 1990/02/27
% mode_def courtesy of John Sauter
proofing:=0;
fontmaking:=1;
tracingtitles:=0;
pixels_per_inch:=300;
blacker:=0.65;
fillin:=-0.1;
o_correction:=.5;
```
(note the absence of the `mode_def` and `enddef`
commands), you would type
```latex
mf \smode="ln03"; input cmr10
```
This technique isn't one you should regularly use, but it may
prove useful if you acquire a new printer and want to experiment with
parameters, or for some other reason are regularly editing the
parameters you're using.  Once you've settled on an appropriate set of
parameters, you should use them to rebuild the base file that you use.

Other sources of help are discussed in our list of 
[MetaFont and MetaPost Tutorials](./FAQ-mfptutorials.html).

