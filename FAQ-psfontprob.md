# Deploying Type 1 fonts

For the LaTeX user trying to use the
[PSNFSS](./FAQ-usepsfont.html) package, three questions may arise.

First, you have to declare to the DVI driver that you are using
PostScript fonts; in the case of `dvips`, this means adding
lines to the `psfonts.map` file, so that `dvips` will know
where the proper fonts are, and won't try to find PK 
files.  If the font isn't built into the printer, you have to acquire
it (which may mean that you need to purchase the font files).

Second, your previewer must know what to do with the fonts: see
[previewing type 1 fonts](./FAQ-PSpreview.html).

Third, the stretch and shrink between words is a function of the
font metric; it is not specified in AFM files, so different converters
choose different values. The PostScript metrics that come with PSNFSS 
used to produce quite tight setting, but they were revised in mid 1995
to produce a compromise between American and European practice. 
Sophisticated users may not find even the new the values to their taste, and
want to override them. Even the casual user may find  more
hyphenation or overfull boxes than Computer Modern produces; but CM
is extremely generous. 

