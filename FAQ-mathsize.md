# Adjusting maths font sizes

In Plain TeX, when you introduce a new font size you must also
declare what size fonts are to be used in mathematics with it.  This
is done by declaring `\textfont`, `\scriptfont` and
`\scriptscriptfont` for the maths families you're using; all such
things are described in chapter&nbsp;17 of the 
[TeXbook](./FAQ-tex-books.html) and in other books and
[tutorials](./FAQ-man-tex.html) that discuss Plain TeX in sufficient
detail.

In LaTeX, of course, all this stuff is automated: there is a scheme
that, for each (text) font size, determines what maths font sizes are
to be used.  The scheme first checks a set of ''known'' text sizes,
for each of which maths sizes are declared in advance.  If the text
size isn't ''known'', the script- and scriptscriptfont sizes are
calculated as fixed ratios of the tex font size.  (The values used are
`\defaultscriptratio`=0.7, and
`\defaultscriptscriptratio`=0.5.)

The fixed-ratio formula is capable of producing inconvenient results
(particularly if you are using fonts which LaTeX believes are only
available in a fixed set of sizes).  You may also want to replace
LaTeX's ideas altogether, for example by setting maths noticeably
larger or smaller than its surrounding text.  For this purpose, the
LaTeX command
`\DeclareMathSizes{&lsaquo;_tfs_&rsaquo;}{&lsaquo;_ts_&rsaquo;}{&lsaquo;_ss_&rsaquo;}{&lsaquo;_sss_&rsaquo;}`
may be used (this is the same command that LaTeX itself uses to
define its own set of sizes).  This establishes (or re-establishes)
the maths font sizes to be used when the surrounding text font size is
`&lsaquo;_tfs_&rsaquo;`; (`&lsaquo;_ts_&rsaquo;` being the size used for
`\textfont`, `&lsaquo;_ss_&rsaquo;` for `\scriptfont` and
`&lsaquo;_sss_&rsaquo;` for `\scriptscriptfont`).

For example, you might want to use a font with a smaller body height
than Computer Modern, but still prefer CM math to any of the
alternatives.  In this case, you might use:
```latex
\DeclareMathSizes{10}{9}{7}{5}
```
to get 9pt maths when the surrounding body text is (nominal) 10pt.

`\DeclareMathSizes` may only be used in the preamble of the
document: only one association is available for each text font size
for the whole document.  The default settings are specified in
`fontdef.dtx` in the latex distribution, and are compiled into
`fontmath.ltx`; the arguments to the command are just numbers
(`pt` is assumed), but some of them are written using
[LaTeX abbreviations](./FAQ-ltxabbrv.html) for standard font sizes.
Beware simply copying (parts of) the LaTeX definitions&nbsp;&mdash; since
they contain those internal abbreviations, they need to be treated as
[internal commands](./FAQ-atsigns.html).

