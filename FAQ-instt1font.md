# Installing a Type&nbsp;1 font

Once you have a prepared Type&nbsp;1 font, either direct from CTAN
or the like, or having ['prepared' it yourself](./FAQ-prept1font.html),
you can get on with installation.

The procedure is merely an extension of that for packages, etc., so
much of what follows will be familiar:
  

-  Install the files, in your local `texmf` tree (the advice
    about installing non-standard things applies here, too).  The
    following list gives reasonable destinations for the various files
    related to a font family &lsaquo;_fname_&rsaquo;:
    ```latex
    .pfb,
    .pfa  .../fonts/type1/<foundry>/<fname>
    .tfm  .../fonts/tfm/<foundry>/<fname>
    .vf   .../fonts/vf/<foundry>/<fname>
    .sty,
    .fd   .../tex/latex/<fname>
    .map  .../fonts/map/dvips/<foundry>
    ```
    but if you are lucky, you will be starting from a distribution from
    CTAN and there is a corresponding `tds.zip` file:
    using this TDS-file saves the bother of deciding where to put
    your files in the TDS tree.
-  Regenerate the file indexes (as described in
    [package installation](./FAQ-inst-wlcf.html)).
-  Update the `dvips`, PDFTeX and other maps:
  

  -  On any current TeX&nbsp;Live-based system, or a teTeX v3.0
      system, execute the command
    ```latex
    updmap-sys --enable Map <fname>.map
    ```
      as root.  (If you _can_ use `updmap-sys`&nbsp;&mdash; do; if
      not&nbsp;&mdash; presumably because your (La)TeX system was set up by
      someone else&nbsp;&mdash; you have to fall back on plain `updmap`,
      but be aware that it's a potent source of confusion, setting up
      map sets that might be changed behind your back.)
  -  On a current MiKTeX system, update the system file
      `updmap.cfg`, using the shell command
    ```latex
    initexmf --edit-config-file updmap
    ```
      adding a line at the end:
    ```latex
    Map <fname>.map
    ```
      for each font family &lsaquo;_fname_&rsaquo; you are adding to the system.
      Now generate revised maps with the shell command
    ```latex
    initexmf --mkmaps
    ```
      This, and other matters, are described in MiKTeX 
      [''advanced'' documentation](http://docs.miktex.org/manual/advanced.html).

Both processes (preparing and installing a font) are very well (and
thoroughly) described in Philipp Lehman's guide to font installation,
which may be found on CTAN.

