# The _hyperTeX_ project

The _hyperTeX_ project extended the functionality of all the
LaTeX cross-referencing commands (including the table of contents)
to produce `\special` commands which are parsed by DVI processors
conforming to the HyperTeX guidelines;
it provides general hypertext links, including those
to external documents.

The HyperTeX specification says that conformant viewers/translators
must recognize the following set of `\special` commands:

- href: |html:<a href = "href_string">|
- name: |html:<a name = "name_string">|
- end: `html:</a>`
- image: |html:<img src = "href_string">|
- base_name: |html:<base href = "href_string">|

The _href_, _name_ and _end_ commands are used to do
the basic hypertext operations of establishing links between sections
of documents. 

Further details are available on [http://arXiv.org/hypertex/]; there
are two commonly-used implementations of the specification, a
modified `xdvi` and (recent releases of)
`dvips`. Output from the latter may be used in recent
releases of [`ghostscript`](http://www.ghostscript.com/)
or Acrobat Distiller.

