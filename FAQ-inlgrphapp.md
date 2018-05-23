---
ID: Q-inlgrphapp
section: Graphics
revised: 2014-06-10
---
# In-line source for graphics applications

Some of the free-standing graphics applications may also be used
(effectively) in-line in LaTeX documents; examples are

- asymptoteThe package [`asymptote`](https://ctan.org/pkg/asymptote) (provided in the
  `asymptote` distribution) defines an environment
  `asy` which arranges that its contents are available for
  processing, and will therefore be typeset (after ''enough'' runs, in
  the ''usual'' LaTeX way).

  Basically, you write
  ```latex
  \begin{asy}`
  <asymptote code>`

  \end{asy}
  ```
  and then execute
   ```latex
   latex document
   asy document-*.asy
   latex document
    ```
- egplotAllows you to incorporate `GNUplot`
  instructions in your document, for processing outside of LaTeX.
  The package provides commands that enable the user to do calculation
  in `GNUplot`, feeding the results into the diagram
  to be drawn.
- gmpAllows you to include the source of MetaPost diagrams, with
  parameters of the diagram passed from the environment call.
- empAn earlier package providing facilities similar to those of
  [`gmp`](https://ctan.org/pkg/gmp) ([`gmp`](https://ctan.org/pkg/gmp)'s author hopes that his package will
  support the facilities [`emp`](https://ctan.org/pkg/emp), which he believes is in need
  of update.)
- mpgraphicsAgain, allows you to program parameters of MetaPost
  diagrams from your LaTeX document, including the preamble details
  of the LaTeX code in any recursive call from MetaPost.

In all cases (other than [`asymptote`](https://ctan.org/pkg/asymptote)), these packages require
that you can 
[run external programs from within your document](FAQ-spawnprog.md).

