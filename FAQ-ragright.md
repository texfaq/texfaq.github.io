# Setting text ragged right

The trick with typesetting ragged right is to be sure you've told the
TeX engine ''make this paragraph ragged, but never _too_
ragged''.  The LaTeX `\raggedright` command (and the
corresponding `flushleft` environment) has a tendency to
miss the ''never'' part, and will often create ridiculously short
lines, for some minor benefit later in the paragraph.  The
Plain TeX version of the command doesn't suffer this failing, but
is rather conservative: it is loath to create too large a gap at the
end of the line, but in some circumstances&nbsp;&mdash; such as where
[hyphenation is suppressed](./FAQ-hyphoff.html)&nbsp;&mdash; painfully large gaps
may sometimes be required.

Martin Schr&ouml;der's [`ragged2e`](http://ctan.org/pkg/ragged2e) package offers the best of both
worlds: it provides raggedness which is built on the Plain TeX
model, but which is easily configurable.  It defines easily-remembered
command (e.g., `\RaggedRight`) and environment (e.g.,
`FlushLeft`) names that are simply capitalised
transformations of the LaTeX kernel originals.  The documentation
discusses the issues and explains the significance of the various
parameters of [`ragged2e`](http://ctan.org/pkg/ragged2e)'s operation.

