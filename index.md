<h1>Welcome to the UK List of<br>
TeX Frequently Asked Questions</h1>
<script>  (function() {var cx = '012439869432470945129:rdb1e0hqrou';var gcse = document.createElement('script');gcse.type = 'text/javascript';gcse.async = true;gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +'//cse.google.com/cse.js?cx=' + cx;var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(gcse, s);})();
</script>
<div class="gcse-search"></div>

<h2>Introduction</h2>


This is a set of Frequently Asked Questions (FAQ) for
English-speaking users of TeX.


The questions answered here cover a wide range of topics, but
typesetting issues are mostly covered from the viewpoint of a LaTeX
user.  Some of the questions answered have little relevance to today's
users; this is inevitable&nbsp;&mdash; it's easier to add information than it
is to decide that information is no longer needed.  The set of
answered questions is therefore in a state of slow flux: new questions
are answered, while old questions are deleted&nbsp;&hellip;&nbsp;but the whole
process depends on the time available for FAQ maintenance.


 You may use the FAQ
  

-  by reading a printed document,
-  by viewing a PDF file, with hyperlinks to assist
    browsing: copies are available formatted so that they could be
    printed on [A4 paper](http://www.ctan.org/tex-archive/help/uk-tex-faq/newfaq.pdf) or on 
    [North American &ldquo;letter&rdquo; paper](http://www.ctan.org/tex-archive/help/uk-tex-faq/letterfaq.pdf), or
-  via Scott Pakin's [Visual FAQ](http://www.ctan.org/tex-archive/info/visualFAQ/visualFAQ.pdf), which shows
    LaTeX constructions with links to FAQ explanations of how
    they may be created.




<h3>Licence of the FAQ</h3>


The source of the FAQ, available in the 
[FAQ's CTAN directory](http://www.ctan.org/pkg/uk-tex-faq), and its derived
representations (currently, the HTML found at
[http://www.tex.ac.uk/faq] and PDF copies, also in the
[FAQ's CTAN directory](http://www.ctan.org/pkg/uk-tex-faq)) are all placed in the
public domain.


<h3>Finding the Files</h3>
Almost all files suggested in any answer in these FAQs are
available from [CTAN archives](./FAQ-archives.html), and may be
reached via links in the file list at the end of the answer.  In
particular, documentation (when available) is linked from the
CTAN Catalogue entry, which is also listed in the file list.


Unless doing so is unavoidable, the answers do not mention things that
are not on the CTAN archives.  An obvious exception is web
resources such as supplementary documents, etc.


  *Origins*
The FAQ was originated by the Committee of the UK
TeX Users' Group (UK&nbsp;TUG), in 1994, as a development of a
regular posting to the _Usenet_ newsgroup
`comp.text.tex` that was maintained for some time by Bobby
Bodenheimer.  The first UK version was much re-arranged and
corrected from the original, and little of Bodenheimer's work now
remains.



<div class="toc">
<ul>
  <li class="tocsec" id="TheBackground"><span>The Background</span>
      <li class="tocqn" id="Q-startup"><a href="FAQ-startup.html">Getting started</a></li>
      <li class="tocqn" id="Q-whatTeX"><a href="FAQ-whatTeX.html">What is TeX?</a></li>
      <li class="tocqn" id="Q-plaintex"><a href="FAQ-plaintex.html">What's ''writing in TeX''?</a></li>
      <li class="tocqn" id="Q-TeXpronounce"><a href="FAQ-TeXpronounce.html">How should I pronounce ''TeX''?</a></li>
      <li class="tocqn" id="Q-MF"><a href="FAQ-MF.html">What is MetaFont?</a></li>
      <li class="tocqn" id="Q-MP"><a href="FAQ-MP.html">What is MetaPost?</a></li>
      <li class="tocqn" id="Q-texthings"><a href="FAQ-texthings.html">Things with ''TeX'' in the name</a></li>
      <li class="tocqn" id="Q-ctan"><a href="FAQ-ctan.html">What is CTAN?</a></li>
      <li class="tocqn" id="Q-catalogue"><a href="FAQ-catalogue.html">The (CTAN) catalogue</a></li>
      <li class="tocqn" id="Q-triptrap"><a href="FAQ-triptrap.html">How can I be sure it's really TeX?</a></li>
      <li class="tocqn" id="Q-etex"><a href="FAQ-etex.html">What is &epsilon;-TeX?</a></li>
      <li class="tocqn" id="Q-whatpdftex"><a href="FAQ-whatpdftex.html">What is PDFTeX?</a></li>
      <li class="tocqn" id="Q-latex"><a href="FAQ-latex.html">What is LaTeX?</a></li>
      <li class="tocqn" id="Q-latex2e"><a href="FAQ-latex2e.html">What is LaTeX 2e?</a></li>
      <li class="tocqn" id="Q-latexpronounce"><a href="FAQ-latexpronounce.html">How should I pronounce ''LaTeX(2<sub>&epsilon;</sub>)''?</a></li>
      <li class="tocqn" id="Q-plainvltx"><a href="FAQ-plainvltx.html">Should I use Plain TeX or LaTeX?</a></li>
      <li class="tocqn" id="Q-LaTeXandPlain"><a href="FAQ-LaTeXandPlain.html">How does LaTeX relate to Plain TeX?</a></li>
      <li class="tocqn" id="Q-context"><a href="FAQ-context.html">What is Context?</a></li>
      <li class="tocqn" id="Q-AMSpkg"><a href="FAQ-AMSpkg.html">What are the AMS packages (AMSTeX, _etc_.)?</a></li>
      <li class="tocqn" id="Q-eplain"><a href="FAQ-eplain.html">What is Eplain?</a></li>
      <li class="tocqn" id="Q-texinfo"><a href="FAQ-texinfo.html">What is Texinfo?</a></li>
      <li class="tocqn" id="Q-lollipop"><a href="FAQ-lollipop.html">Lollipop</a></li>
      <li class="tocqn" id="Q-whyfree"><a href="FAQ-whyfree.html">If TeX is so good, how come it's free?</a></li>
      <li class="tocqn" id="Q-TeXfuture"><a href="FAQ-TeXfuture.html">What is the future of TeX?</a></li>
      <li class="tocqn" id="Q-readtex"><a href="FAQ-readtex.html">Reading (La)TeX files</a></li>
      <li class="tocqn" id="Q-notWYSIWYG"><a href="FAQ-notWYSIWYG.html">Why is TeX not a WYSIWYG system?</a></li>
      <li class="tocqn" id="Q-TUGstar"><a href="FAQ-TUGstar.html">TeX User Groups</a></li>
  <li class="tocsec" id="DocumentationandHelp"><span>Documentation and Help</span>
      <li class="tocqn" id="Q-book-lists"><a href="FAQ-book-lists.html">Books relevant to TeX and friends</a></li>
      <li class="tocqn" id="Q-tex-books"><a href="FAQ-tex-books.html">Books on TeX, Plain TeX and relations</a></li>
      <li class="tocqn" id="Q-latex-books"><a href="FAQ-latex-books.html">Books on LaTeX</a></li>
      <li class="tocqn" id="Q-other-books"><a href="FAQ-other-books.html">Books on other TeX-related matters</a></li>
      <li class="tocqn" id="Q-type-books"><a href="FAQ-type-books.html">Books on Type</a></li>
      <li class="tocqn" id="Q-whereFAQ"><a href="FAQ-whereFAQ.html">Where to find FAQs</a></li>
      <li class="tocqn" id="Q-gethelp"><a href="FAQ-gethelp.html">Getting help online</a></li>
      <li class="tocqn" id="Q-maillistsstar"><a href="FAQ-maillistsstar.html">Specialist mailing lists</a></li>
      <li class="tocqn" id="Q-askquestion"><a href="FAQ-askquestion.html">How to ask a question</a></li>
      <li class="tocqn" id="Q-minxampl"><a href="FAQ-minxampl.html">How to make a ''minimum example''</a></li>
      <li class="tocqn" id="Q-tutorialsstar"><a href="FAQ-tutorialsstar.html">Tutorials, etc., for TeX-based systems</a></li>
      <li class="tocqn" id="Q-man-tex"><a href="FAQ-man-tex.html">Online introductions: Plain TeX</a></li>
      <li class="tocqn" id="Q-man-latex"><a href="FAQ-man-latex.html">Online introductions: LaTeX</a></li>
      <li class="tocqn" id="Q-tutbitslatex"><a href="FAQ-tutbitslatex.html">(La)TeX tutorials</a></li>
      <li class="tocqn" id="Q-ref-doc"><a href="FAQ-ref-doc.html">Reference documents</a></li>
      <li class="tocqn" id="Q-doc-wiki"><a href="FAQ-doc-wiki.html">WIKI books for TeX and friends</a></li>
      <li class="tocqn" id="Q-typo-style"><a href="FAQ-typo-style.html">Typography tutorials</a></li>
      <li class="tocqn" id="Q-ol-books"><a href="FAQ-ol-books.html">Freely available (La)TeX books</a></li>
      <li class="tocqn" id="Q-pkgdoc"><a href="FAQ-pkgdoc.html">Documentation of packages</a></li>
      <li class="tocqn" id="Q-writecls"><a href="FAQ-writecls.html">Learning to write LaTeX classes and packages</a></li>
      <li class="tocqn" id="Q-latex3-prog"><a href="FAQ-latex3-prog.html">LaTeX3 programming</a></li>
      <li class="tocqn" id="Q-mfptutorials"><a href="FAQ-mfptutorials.html">MetaFont and MetaPost Tutorials</a></li>
      <li class="tocqn" id="Q-BibTeXing"><a href="FAQ-BibTeXing.html">BibTeX Documentation</a></li>
      <li class="tocqn" id="Q-symbols"><a href="FAQ-symbols.html">Where can I find the symbol for &hellip;</a></li>
      <li class="tocqn" id="Q-docpictex"><a href="FAQ-docpictex.html">The PicTeX manual</a></li>
  <li class="tocsec" id="BitsandpiecesofLaTeX"><span>Bits and pieces of (La)TeX</span>
      <li class="tocqn" id="Q-dvi"><a href="FAQ-dvi.html">What is a DVI file?</a></li>
      <li class="tocqn" id="Q-driver"><a href="FAQ-driver.html">What is a DVI driver?</a></li>
      <li class="tocqn" id="Q-pk"><a href="FAQ-pk.html">What are PK files?</a></li>
      <li class="tocqn" id="Q-tfm"><a href="FAQ-tfm.html">What are TFM files?</a></li>
      <li class="tocqn" id="Q-virtualfonts"><a href="FAQ-virtualfonts.html">What are virtual fonts?</a></li>
      <li class="tocqn" id="Q-whatmacros"><a href="FAQ-whatmacros.html">What are (TeX) macros</a></li>
      <li class="tocqn" id="Q-specials"><a href="FAQ-specials.html">`\special` commands</a></li>
      <li class="tocqn" id="Q-write"><a href="FAQ-write.html">Writing (text) files from TeX</a></li>
      <li class="tocqn" id="Q-spawnprog"><a href="FAQ-spawnprog.html">Spawning programs from (La)TeX: `\write18`</a></li>
      <li class="tocqn" id="Q-hyphen"><a href="FAQ-hyphen.html">How does hyphenation work in TeX?</a></li>
      <li class="tocqn" id="Q-clsvpkg"><a href="FAQ-clsvpkg.html">What are LaTeX classes and packages?</a></li>
      <li class="tocqn" id="Q-whatenv"><a href="FAQ-whatenv.html">What are LaTeX ''environments''</a></li>
      <li class="tocqn" id="Q-dtx"><a href="FAQ-dtx.html">Documented LaTeX sources (`dtx` files)</a></li>
      <li class="tocqn" id="Q-whatenc"><a href="FAQ-whatenc.html">What are encodings?</a></li>
      <li class="tocqn" id="Q-ECfonts"><a href="FAQ-ECfonts.html">What are the EC fonts?</a></li>
      <li class="tocqn" id="Q-unicode"><a href="FAQ-unicode.html">Unicode and TeX</a></li>
      <li class="tocqn" id="Q-tds"><a href="FAQ-tds.html">What is the TDS?</a></li>
      <li class="tocqn" id="Q-eps"><a href="FAQ-eps.html">What is ''Encapsulated PostScript'' (''EPS'')?</a></li>
      <li class="tocqn" id="Q-adobetypen"><a href="FAQ-adobetypen.html">Adobe font formats</a></li>
      <li class="tocqn" id="Q-resolns"><a href="FAQ-resolns.html">What are ''resolutions''?</a></li>
      <li class="tocqn" id="Q-fontname"><a href="FAQ-fontname.html">What is the ''Berry naming scheme''?</a></li>
  <li class="tocsec" id="AcquiringtheSoftware"><span>Acquiring the Software</span>
      <li class="tocqn" id="Q-archives"><a href="FAQ-archives.html">Repositories of TeX material</a></li>
      <li class="tocqn" id="Q-tds-zip"><a href="FAQ-tds-zip.html">Ready-built installation files on the archive</a></li>
      <li class="tocqn" id="Q-nonfree"><a href="FAQ-nonfree.html">What was the CTAN `nonfree` tree?</a></li>
      <li class="tocqn" id="Q-uploads"><a href="FAQ-uploads.html">Contributing a file to the archives</a></li>
      <li class="tocqn" id="Q-findfiles"><a href="FAQ-findfiles.html">Finding (La)TeX files</a></li>
      <li class="tocqn" id="Q-findfont"><a href="FAQ-findfont.html">Finding new fonts</a></li>
      <li class="tocqn" id="Q-CD"><a href="FAQ-CD.html">The TeX collection</a></li>
  <li class="tocsec" id="TeXSystems"><span>TeX Systems</span>
      <li class="tocqn" id="Q-TeXsystems"><a href="FAQ-TeXsystems.html">(La)TeX for different machines</a></li>
      <li class="tocqn" id="Q-sysunix"><a href="FAQ-sysunix.html">Unix and GNU Linux systems</a></li>
      <li class="tocqn" id="Q-syswin32"><a href="FAQ-syswin32.html">(Modern) Windows systems</a></li>
      <li class="tocqn" id="Q-sysmac"><a href="FAQ-sysmac.html">Macintosh systems</a></li>
      <li class="tocqn" id="Q-sysother"><a href="FAQ-sysother.html">Other systems' TeX availability</a></li>
      <li class="tocqn" id="Q-editors"><a href="FAQ-editors.html">TeX-friendly editors and shells</a></li>
      <li class="tocqn" id="Q-commercial"><a href="FAQ-commercial.html">Commercial TeX implementations</a></li>
  <li class="tocsec" id="DVIDriversandPreviewers"><span>DVI Drivers and Previewers</span>
      <li class="tocqn" id="Q-dvips"><a href="FAQ-dvips.html">DVI to PostScript conversion programs</a></li>
      <li class="tocqn" id="Q-HPdrivers"><a href="FAQ-HPdrivers.html">DVI drivers for HP LaserJet</a></li>
      <li class="tocqn" id="Q-otherprinters"><a href="FAQ-otherprinters.html">Output to ''other'' printers</a></li>
      <li class="tocqn" id="Q-previewers"><a href="FAQ-previewers.html">DVI previewers</a></li>
      <li class="tocqn" id="Q-dvi-bmp"><a href="FAQ-dvi-bmp.html">Generating bitmaps from DVI</a></li>
  <li class="tocsec" id="SupportPackagesforTeX"><span>Support Packages for TeX</span>
      <li class="tocqn" id="Q-xfigetc"><a href="FAQ-xfigetc.html">(La)TeX-friendly drawing packages</a></li>
      <li class="tocqn" id="Q-texcad"><a href="FAQ-texcad.html">TeXCAD, a drawing package for LaTeX</a></li>
      <li class="tocqn" id="Q-spell"><a href="FAQ-spell.html">Spelling checkers for work with TeX</a></li>
      <li class="tocqn" id="Q-wordcount"><a href="FAQ-wordcount.html">How many words have you written?</a></li>
  <li class="tocsec" id="Literateprogramming"><span>Literate programming</span>
      <li class="tocqn" id="Q-lit"><a href="FAQ-lit.html">What is Literate Programming?</a></li>
      <li class="tocqn" id="Q-webpkgs"><a href="FAQ-webpkgs.html">WEB systems for various languages</a></li>
  <li class="tocsec" id="Formatconversions"><span>Format conversions</span>
      <li class="tocqn" id="Q-toascii"><a href="FAQ-toascii.html">Conversion from (La)TeX to plain text</a></li>
      <li class="tocqn" id="Q-SGML2TeX"><a href="FAQ-SGML2TeX.html">Conversion from SGML or HTML to TeX</a></li>
      <li class="tocqn" id="Q-LaTeX2HTML"><a href="FAQ-LaTeX2HTML.html">Conversion from (La)TeX to HTML</a></li>
      <li class="tocqn" id="Q-fmtconv"><a href="FAQ-fmtconv.html">Other conversions to and from (La)TeX</a></li>
      <li class="tocqn" id="Q-readML"><a href="FAQ-readML.html">Using TeX to read SGML or XML directly</a></li>
      <li class="tocqn" id="Q-recovertex"><a href="FAQ-recovertex.html">Retrieving (La)TeX from DVI, etc.</a></li>
      <li class="tocqn" id="Q-LaTeXtoPlain"><a href="FAQ-LaTeXtoPlain.html">Translating LaTeX to Plain TeX</a></li>
  <li class="tocsec" id="InstallingLaTeXfiles"><span>Installing (La)TeX files</span>
      <li class="tocqn" id="Q-installthings"><a href="FAQ-installthings.html">Installing things on a (La)TeX system</a></li>
      <li class="tocqn" id="Q-install-find"><a href="FAQ-install-find.html">Finding packages to install</a></li>
      <li class="tocqn" id="Q-install-unpack"><a href="FAQ-install-unpack.html">Unpacking LaTeX packages</a></li>
      <li class="tocqn" id="Q-install-doc"><a href="FAQ-install-doc.html">Generating package documentation</a></li>
      <li class="tocqn" id="Q-inst-wlcf"><a href="FAQ-inst-wlcf.html">Installing files ''where (La)TeX can find them''</a></li>
      <li class="tocqn" id="Q-what-TDS"><a href="FAQ-what-TDS.html">Which tree to use</a></li>
      <li class="tocqn" id="Q-install-where"><a href="FAQ-install-where.html">Where to install packages</a></li>
      <li class="tocqn" id="Q-inst-tidy"><a href="FAQ-inst-tidy.html">Tidying up after installation</a></li>
      <li class="tocqn" id="Q-inst-scut"><a href="FAQ-inst-scut.html">Shortcuts to installing files</a></li>
      <li class="tocqn" id="Q-inst-miktexstar"><a href="FAQ-inst-miktexstar.html">Installation using MiKTeX package manager</a></li>
      <li class="tocqn" id="Q-inst-texlive"><a href="FAQ-inst-texlive.html">Installation using TeX&nbsp;Live manager</a></li>
      <li class="tocqn" id="Q-inst-tds-zip"><a href="FAQ-inst-tds-zip.html">Installing using ready-built ZIP files</a></li>
      <li class="tocqn" id="Q-tempinst"><a href="FAQ-tempinst.html">''Temporary'' installation of (La)TeX files</a></li>
      <li class="tocqn" id="Q-privinst"><a href="FAQ-privinst.html">''Private'' installations of files</a></li>
      <li class="tocqn" id="Q-instfont"><a href="FAQ-instfont.html">Installing a new font</a></li>
      <li class="tocqn" id="Q-instmffont"><a href="FAQ-instmffont.html">Installing a font provided as MetaFont source</a></li>
      <li class="tocqn" id="Q-instprinterfont"><a href="FAQ-instprinterfont.html">'Installing' a PostScript printer built-in font</a></li>
      <li class="tocqn" id="Q-prept1font"><a href="FAQ-prept1font.html">Preparing a Type&nbsp;1 font</a></li>
      <li class="tocqn" id="Q-instt1font"><a href="FAQ-instt1font.html">Installing a Type&nbsp;1 font</a></li>
      <li class="tocqn" id="Q-inst1cm"><a href="FAQ-inst1cm.html">Installing the Type&nbsp;1 versions of the CM&nbsp;fonts</a></li>
  <li class="tocsec" id="Fonts"><span>Fonts</span>
    <li class="tocsubsec" id="AdobeTypenbspPostScriptfonts"><span>Adobe Type&nbsp;1 (''PostScript'') fonts</span>
      <li class="tocqn" id="Q-usepsfont"><a href="FAQ-usepsfont.html">Using Adobe Type 1 fonts with TeX</a></li>
      <li class="tocqn" id="Q-PSpreview"><a href="FAQ-PSpreview.html">Previewing files using Type 1 fonts</a></li>
      <li class="tocqn" id="Q-metrics"><a href="FAQ-metrics.html">TeX font metric files for Type 1 fonts</a></li>
      <li class="tocqn" id="Q-psfontprob"><a href="FAQ-psfontprob.html">Deploying Type 1 fonts</a></li>
      <li class="tocqn" id="Q-psfchoice"><a href="FAQ-psfchoice.html">Choice of Type&nbsp;1 fonts for typesetting Maths</a></li>
      <li class="tocqn" id="Q-otf-maths"><a href="FAQ-otf-maths.html">Unicode Maths using OpenType fonts</a></li>
      <li class="tocqn" id="Q-charshift"><a href="FAQ-charshift.html">Weird characters in `dvips` output</a></li>
    <li class="tocsubsec" id="Macrosforusingfonts"><span>Macros for using fonts</span>
      <li class="tocqn" id="Q-fonts-pln"><a href="FAQ-fonts-pln.html">Using non-standard fonts in Plain TeX</a></li>
    <li class="tocsubsec" id="Particularfontfamilies"><span>Particular font families</span>
      <li class="tocqn" id="Q-concrete"><a href="FAQ-concrete.html">Using the ''Concrete'' fonts</a></li>
      <li class="tocqn" id="Q-uselmfonts"><a href="FAQ-uselmfonts.html">Using the Latin Modern fonts</a></li>
      <li class="tocqn" id="Q-getnff"><a href="FAQ-getnff.html">Getting 'free' fonts not in your distribution</a></li>
    <li class="tocsubsec" id="MetaFontfonts"><span>MetaFont fonts</span>
      <li class="tocqn" id="Q-useMF"><a href="FAQ-useMF.html">Getting MetaFont to do what you want</a></li>
      <li class="tocqn" id="Q-keepfonts"><a href="FAQ-keepfonts.html">Which font files should be kept</a></li>
      <li class="tocqn" id="Q-getbitmap"><a href="FAQ-getbitmap.html">Acquiring bitmap fonts</a></li>
  <li class="tocsec" id="HypertextandPDF"><span>Hypertext and PDF</span>
      <li class="tocqn" id="Q-acrobat"><a href="FAQ-acrobat.html">Making PDF documents from (La)TeX</a></li>
      <li class="tocqn" id="Q-hyper"><a href="FAQ-hyper.html">Making hypertext documents from TeX</a></li>
      <li class="tocqn" id="Q-hypertex"><a href="FAQ-hypertex.html">The _hyperTeX_ project</a></li>
      <li class="tocqn" id="Q-dvips-pdf"><a href="FAQ-dvips-pdf.html">Quality of PDF from PostScript</a></li>
      <li class="tocqn" id="Q-fuzzy-type3"><a href="FAQ-fuzzy-type3.html">The wrong type of fonts in PDF</a></li>
      <li class="tocqn" id="Q-fuzzy-gs"><a href="FAQ-fuzzy-gs.html">Fuzzy fonts because `Ghostscript` too old</a></li>
      <li class="tocqn" id="Q-fuzzy-T1"><a href="FAQ-fuzzy-T1.html">Fonts go fuzzy when you switch to T1</a></li>
      <li class="tocqn" id="Q-distill-prob"><a href="FAQ-distill-prob.html">Characters missing from PDF output</a></li>
      <li class="tocqn" id="Q-type1T1"><a href="FAQ-type1T1.html">Finding '8-bit' Type&nbsp;1 fonts</a></li>
      <li class="tocqn" id="Q-pkfix"><a href="FAQ-pkfix.html">Replacing Type 3 fonts in PostScript</a></li>
      <li class="tocqn" id="Q-pdfpagelabels"><a href="FAQ-pdfpagelabels.html">[`Hyperref`](http://ctan.org/pkg/Hyperref) and repeated page numbers</a></li>
      <li class="tocqn" id="Q-cpy-srchpdf"><a href="FAQ-cpy-srchpdf.html">Copy-paste-able/searchable PDF files</a></li>
  <li class="tocsec" id="Graphics"><span>Graphics</span>
      <li class="tocqn" id="Q-impgraph"><a href="FAQ-impgraph.html">Importing graphics into (La)TeX documents</a></li>
      <li class="tocqn" id="Q-dvipsgraphics"><a href="FAQ-dvipsgraphics.html">Imported graphics in `dvips`</a></li>
      <li class="tocqn" id="Q-pdftexgraphics"><a href="FAQ-pdftexgraphics.html">Imported graphics in PDFLaTeX</a></li>
      <li class="tocqn" id="Q-dvipdfmgraphics"><a href="FAQ-dvipdfmgraphics.html">Imported graphics in `dvipdfm`</a></li>
      <li class="tocqn" id="Q-grffilenames"><a href="FAQ-grffilenames.html">''Modern'' graphics file names</a></li>
      <li class="tocqn" id="Q-graphicspath"><a href="FAQ-graphicspath.html">Importing graphics from ''somewhere else''</a></li>
      <li class="tocqn" id="Q-graph-pspdf"><a href="FAQ-graph-pspdf.html">Portable imported graphics</a></li>
      <li class="tocqn" id="Q-repeatgrf"><a href="FAQ-repeatgrf.html">Repeated graphics in a document</a></li>
      <li class="tocqn" id="Q-grmaxwidth"><a href="FAQ-grmaxwidth.html">Limit the width of imported graphics</a></li>
      <li class="tocqn" id="Q-topgraph"><a href="FAQ-topgraph.html">Top-aligning imported graphics</a></li>
      <li class="tocqn" id="Q-mpprologues"><a href="FAQ-mpprologues.html">Displaying MetaPost output in `ghostscript`</a></li>
      <li class="tocqn" id="Q-drawing"><a href="FAQ-drawing.html">Drawing with TeX</a></li>
      <li class="tocqn" id="Q-inlgrphapp"><a href="FAQ-inlgrphapp.html">In-line source for graphics applications</a></li>
      <li class="tocqn" id="Q-drawFeyn"><a href="FAQ-drawFeyn.html">Drawing Feynman diagrams in LaTeX</a></li>
      <li class="tocqn" id="Q-labelfig"><a href="FAQ-labelfig.html">Labelling graphics</a></li>
  <li class="tocsec" id="Bibliographiesandcitations"><span>Bibliographies and citations</span>
    <li class="tocsubsec" id="Creatingbibliographies"><span>Creating bibliographies</span>
      <li class="tocqn" id="Q-buildbib"><a href="FAQ-buildbib.html">Creating a BibTeX bibliography file</a></li>
      <li class="tocqn" id="Q-custbib"><a href="FAQ-custbib.html">Creating a bibliography style</a></li>
      <li class="tocqn" id="Q-capbibtex"><a href="FAQ-capbibtex.html">Capitalisation in BibTeX</a></li>
      <li class="tocqn" id="Q-bibaccent"><a href="FAQ-bibaccent.html">Accents in bibliographies</a></li>
      <li class="tocqn" id="Q-bibstrtl"><a href="FAQ-bibstrtl.html">'String too long' in BibTeX</a></li>
      <li class="tocqn" id="Q-manyauthor"><a href="FAQ-manyauthor.html">BibTeX doesn't understand lists of names</a></li>
      <li class="tocqn" id="Q-citeURL"><a href="FAQ-citeURL.html">URLs in BibTeX bibliographies</a></li>
      <li class="tocqn" id="Q-bibplain"><a href="FAQ-bibplain.html">Using BibTeX with Plain TeX</a></li>
      <li class="tocqn" id="Q-makebib"><a href="FAQ-makebib.html">Reconstructing `bib` files</a></li>
      <li class="tocqn" id="Q-bibprefixsort"><a href="FAQ-bibprefixsort.html">BibTeX sorting and name prefixes</a></li>
      <li class="tocqn" id="Q-bibtranscinit"><a href="FAQ-bibtranscinit.html">'Multi-letter' initials in BibTeX</a></li>
    <li class="tocsubsec" id="Creatingcitations"><span>Creating citations</span>
      <li class="tocqn" id="Q-usebibtex"><a href="FAQ-usebibtex.html">''Normal'' use of BibTeX from LaTeX</a></li>
      <li class="tocqn" id="Q-whatbst"><a href="FAQ-whatbst.html">Choosing a bibliography style</a></li>
      <li class="tocqn" id="Q-chapbib"><a href="FAQ-chapbib.html">Separate bibliographies per chapter?</a></li>
      <li class="tocqn" id="Q-multbib"><a href="FAQ-multbib.html">Multiple bibliographies?</a></li>
      <li class="tocqn" id="Q-bibinline"><a href="FAQ-bibinline.html">Putting bibliography entries in text</a></li>
      <li class="tocqn" id="Q-citesort"><a href="FAQ-citesort.html">Sorting and compressing citations</a></li>
      <li class="tocqn" id="Q-mcite"><a href="FAQ-mcite.html">Multiple citations</a></li>
      <li class="tocqn" id="Q-backref"><a href="FAQ-backref.html">References from the bibliography to the citation</a></li>
      <li class="tocqn" id="Q-sortbib"><a href="FAQ-sortbib.html">Sorting lists of citations</a></li>
      <li class="tocqn" id="Q-compactbib"><a href="FAQ-compactbib.html">Reducing spacing in the bibliography</a></li>
      <li class="tocqn" id="Q-bibtocorder"><a href="FAQ-bibtocorder.html">Table of contents rearranges ''[`unsrt`](http://ctan.org/pkg/unsrt)'' ordering</a></li>
      <li class="tocqn" id="Q-i18nbib"><a href="FAQ-i18nbib.html">Non-english bibliographies</a></li>
      <li class="tocqn" id="Q-formbiblabel"><a href="FAQ-formbiblabel.html">Format of numbers in the bibliography</a></li>
    <li class="tocsubsec" id="Manipulatingwholebibliographies"><span>Manipulating whole bibliographies</span>
      <li class="tocqn" id="Q-nocitestar"><a href="FAQ-nocitestar.html">Listing all your BibTeX entries</a></li>
      <li class="tocqn" id="Q-htmlbib"><a href="FAQ-htmlbib.html">Making HTML of your Bibliography</a></li>
  <li class="tocsec" id="Adjustingthetypesetting"><span>Adjusting the typesetting</span>
    <li class="tocsubsec" id="Alternativedocumentclasses"><span>Alternative document classes</span>
      <li class="tocqn" id="Q-replstdcls"><a href="FAQ-replstdcls.html">Replacing the standard classes</a></li>
      <li class="tocqn" id="Q-slidecls"><a href="FAQ-slidecls.html">Producing presentations (including slides)</a></li>
      <li class="tocqn" id="Q-poster"><a href="FAQ-poster.html">Creating posters with LaTeX</a></li>
      <li class="tocqn" id="Q-thesis"><a href="FAQ-thesis.html">Formatting a thesis in LaTeX</a></li>
      <li class="tocqn" id="Q-journalpaper"><a href="FAQ-journalpaper.html">Setting papers for journals</a></li>
      <li class="tocqn" id="Q-multidoc"><a href="FAQ-multidoc.html">A 'report' from lots of 'article's</a></li>
      <li class="tocqn" id="Q-cv"><a href="FAQ-cv.html">_Curriculum Vitae_ (R&eacute;sum&eacute;)</a></li>
      <li class="tocqn" id="Q-letterclass"><a href="FAQ-letterclass.html">Letters and the like</a></li>
      <li class="tocqn" id="Q-extsizes"><a href="FAQ-extsizes.html">Other ''document font'' sizes?</a></li>
    <li class="tocsubsec" id="Documentstructure"><span>Document structure</span>
      <li class="tocqn" id="Q-titlsty"><a href="FAQ-titlsty.html">The style of document titles</a></li>
      <li class="tocqn" id="Q-secthead"><a href="FAQ-secthead.html">The style of section headings</a></li>
      <li class="tocqn" id="Q-appendix"><a href="FAQ-appendix.html">Appendixes</a></li>
      <li class="tocqn" id="Q-secindent"><a href="FAQ-secindent.html">Indent after section headings</a></li>
      <li class="tocqn" id="Q-subsubsub"><a href="FAQ-subsubsub.html">How to create a `\subsubsubsection`</a></li>
      <li class="tocqn" id="Q-captsty"><a href="FAQ-captsty.html">The style of captions</a></li>
      <li class="tocqn" id="Q-fancyhdr"><a href="FAQ-fancyhdr.html">Alternative head- and footlines in LaTeX</a></li>
      <li class="tocqn" id="Q-widefigs"><a href="FAQ-widefigs.html">Wide figures in two-column documents</a></li>
      <li class="tocqn" id="Q-onecolabs"><a href="FAQ-onecolabs.html">1-column abstract in 2-column document</a></li>
      <li class="tocqn" id="Q-reallyblank"><a href="FAQ-reallyblank.html">Really blank pages between chapters</a></li>
      <li class="tocqn" id="Q-balance"><a href="FAQ-balance.html">Balancing columns at the end of a document</a></li>
      <li class="tocqn" id="Q-runheadtoobig"><a href="FAQ-runheadtoobig.html">My section title is too wide for the page header</a></li>
      <li class="tocqn" id="Q-nofm"><a href="FAQ-nofm.html">Page numbering ''&lsaquo;_n_&rsaquo; of &lsaquo;_m_&rsaquo;''</a></li>
      <li class="tocqn" id="Q-pagebychap"><a href="FAQ-pagebychap.html">Page numbering by chapter</a></li>
    <li class="tocsubsec" id="Pagelayout"><span>Page layout</span>
      <li class="tocqn" id="Q-papersize"><a href="FAQ-papersize.html">The size of printed output</a></li>
      <li class="tocqn" id="Q-acroantics"><a href="FAQ-acroantics.html">Adobe `Reader` messing with print size</a></li>
      <li class="tocqn" id="Q-papergeom"><a href="FAQ-papergeom.html">Getting the right paper geometry from (La)TeX</a></li>
      <li class="tocqn" id="Q-changemargin"><a href="FAQ-changemargin.html">Changing the margins in LaTeX</a></li>
      <li class="tocqn" id="Q-marginpkgs"><a href="FAQ-marginpkgs.html">Packages to set up page designs</a></li>
      <li class="tocqn" id="Q-marginmanual"><a href="FAQ-marginmanual.html">How to set up page layout ''by hand''</a></li>
      <li class="tocqn" id="Q-chngmargonfly"><a href="FAQ-chngmargonfly.html">Changing margins ''on the fly''</a></li>
      <li class="tocqn" id="Q-nopageno"><a href="FAQ-nopageno.html">How to get rid of page numbers</a></li>
      <li class="tocqn" id="Q-crop"><a href="FAQ-crop.html">How to create crop marks</a></li>
      <li class="tocqn" id="Q-watermark"><a href="FAQ-watermark.html">'Watermarks' on every page</a></li>
      <li class="tocqn" id="Q-landscape"><a href="FAQ-landscape.html">Typesetting things in landscape orientation</a></li>
      <li class="tocqn" id="Q-abspos"><a href="FAQ-abspos.html">Putting things at fixed positions on the page</a></li>
      <li class="tocqn" id="Q-nopagebrk"><a href="FAQ-nopagebrk.html">Preventing page breaks between lines</a></li>
      <li class="tocqn" id="Q-parallel"><a href="FAQ-parallel.html">Parallel setting of text</a></li>
      <li class="tocqn" id="Q-epigraph"><a href="FAQ-epigraph.html">Typesetting epigraphs</a></li>
    <li class="tocsubsec" id="Spacingofcharactersandlines"><span>Spacing of characters and lines</span>
      <li class="tocqn" id="Q-linespace"><a href="FAQ-linespace.html">Double-spaced documents in LaTeX</a></li>
      <li class="tocqn" id="Q-letterspace"><a href="FAQ-letterspace.html">Changing the space between letters</a></li>
      <li class="tocqn" id="Q-ragright"><a href="FAQ-ragright.html">Setting text ragged right</a></li>
      <li class="tocqn" id="Q-flushboth"><a href="FAQ-flushboth.html">Cancelling `\ragged` commands</a></li>
    <li class="tocsubsec" id="Typesettingspecialities"><span>Typesetting specialities</span>
      <li class="tocqn" id="Q-verbfile"><a href="FAQ-verbfile.html">Including a file verbatim in LaTeX</a></li>
      <li class="tocqn" id="Q-linenos"><a href="FAQ-linenos.html">Including line numbers in typeset output</a></li>
      <li class="tocqn" id="Q-codelist"><a href="FAQ-codelist.html">Code listings in LaTeX</a></li>
      <li class="tocqn" id="Q-algorithms"><a href="FAQ-algorithms.html">Typesetting pseudocode in LaTeX</a></li>
      <li class="tocqn" id="Q-makeindex"><a href="FAQ-makeindex.html">Generating an index in (La)TeX</a></li>
      <li class="tocqn" id="Q-setURL"><a href="FAQ-setURL.html">Typesetting URLs</a></li>
      <li class="tocqn" id="Q-music"><a href="FAQ-music.html">Typesetting music in TeX</a></li>
      <li class="tocqn" id="Q-parskip"><a href="FAQ-parskip.html">Zero paragraph indent</a></li>
      <li class="tocqn" id="Q-dropping"><a href="FAQ-dropping.html">Big letters at the start of a paragraph</a></li>
      <li class="tocqn" id="Q-dec_comma"><a href="FAQ-dec_comma.html">The comma as a decimal separator</a></li>
      <li class="tocqn" id="Q-breakbox"><a href="FAQ-breakbox.html">Breaking boxes of text</a></li>
      <li class="tocqn" id="Q-overstrike"><a href="FAQ-overstrike.html">Overstriking characters</a></li>
      <li class="tocqn" id="Q-upquot"><a href="FAQ-upquot.html">Realistic quotes for verbatim listings</a></li>
      <li class="tocqn" id="Q-time"><a href="FAQ-time.html">Printing the time</a></li>
      <li class="tocqn" id="Q-the-commands"><a href="FAQ-the-commands.html">Redefining counters' `\the-`commands</a></li>
    <li class="tocsubsec" id="Tablesofcontentsandindexes"><span>Tables of contents and indexes</span>
      <li class="tocqn" id="Q-tocloft"><a href="FAQ-tocloft.html">The format of the Table of Contents, etc.</a></li>
      <li class="tocqn" id="Q-secnumdep"><a href="FAQ-secnumdep.html">Unnumbered sections in the Table of Contents</a></li>
      <li class="tocqn" id="Q-tocbibind"><a href="FAQ-tocbibind.html">Bibliography, index, etc., in TOC</a></li>
      <li class="tocqn" id="Q-minitoc"><a href="FAQ-minitoc.html">Table of contents, etc., per chapter</a></li>
      <li class="tocqn" id="Q-multind"><a href="FAQ-multind.html">Multiple indexes</a></li>
    <li class="tocsubsec" id="Labelsandreferences"><span>Labels and references</span>
      <li class="tocqn" id="Q-nameref"><a href="FAQ-nameref.html">Referring to things by their name</a></li>
      <li class="tocqn" id="Q-extref"><a href="FAQ-extref.html">Referring to labels in other documents</a></li>
  <li class="tocsec" id="HowdoIdohellip"><span>How do I do&hellip;?</span>
    <li class="tocsubsec" id="Mathematics"><span>Mathematics</span>
      <li class="tocqn" id="Q-proof"><a href="FAQ-proof.html">Proof environment</a></li>
      <li class="tocqn" id="Q-theoremfmt"><a href="FAQ-theoremfmt.html">Theorem bodies printed in a roman font</a></li>
      <li class="tocqn" id="Q-newfunction"><a href="FAQ-newfunction.html">Defining a new log-like function in LaTeX</a></li>
      <li class="tocqn" id="Q-braket"><a href="FAQ-braket.html">Set specifications and Dirac brackets</a></li>
      <li class="tocqn" id="Q-cancellation"><a href="FAQ-cancellation.html">Cancelling terms in maths expressions</a></li>
      <li class="tocqn" id="Q-mathsize"><a href="FAQ-mathsize.html">Adjusting maths font sizes</a></li>
      <li class="tocqn" id="Q-mathlips"><a href="FAQ-mathlips.html">Ellipses</a></li>
      <li class="tocqn" id="Q-limits"><a href="FAQ-limits.html">Sub- and superscript positioning for operators</a></li>
      <li class="tocqn" id="Q-mathstext"><a href="FAQ-mathstext.html">Text inside maths</a></li>
      <li class="tocqn" id="Q-reuseq"><a href="FAQ-reuseq.html">Re-using an equation</a></li>
      <li class="tocqn" id="Q-brkinline"><a href="FAQ-brkinline.html">Line-breaking in in-line maths</a></li>
      <li class="tocqn" id="Q-mathonlyref"><a href="FAQ-mathonlyref.html">Numbers for referenced equations only</a></li>
      <li class="tocqn" id="Q-subheight"><a href="FAQ-subheight.html">Even subscript height</a></li>
    <li class="tocsubsec" id="Lists"><span>Lists</span>
      <li class="tocqn" id="Q-enumerate"><a href="FAQ-enumerate.html">Fancy enumeration lists</a></li>
      <li class="tocqn" id="Q-complist"><a href="FAQ-complist.html">How to adjust list spacing</a></li>
      <li class="tocqn" id="Q-interruptlist"><a href="FAQ-interruptlist.html">Interrupting enumerated lists</a></li>
    <li class="tocsubsec" id="Tablesfiguresanddiagrams"><span>Tables, figures and diagrams</span>
      <li class="tocqn" id="Q-destable"><a href="FAQ-destable.html">The design of tables</a></li>
      <li class="tocqn" id="Q-fixwidtab"><a href="FAQ-fixwidtab.html">Fixed-width tables</a></li>
      <li class="tocqn" id="Q-varwidcol"><a href="FAQ-varwidcol.html">Variable-width columns in tables</a></li>
      <li class="tocqn" id="Q-struttab"><a href="FAQ-struttab.html">Spacing lines in tables</a></li>
      <li class="tocqn" id="Q-longtab"><a href="FAQ-longtab.html">Tables longer than a single page</a></li>
      <li class="tocqn" id="Q-tabcellalign"><a href="FAQ-tabcellalign.html">How to alter the alignment of tabular cells</a></li>
      <li class="tocqn" id="Q-rulethk"><a href="FAQ-rulethk.html">The thickness of rules in LaTeX tables</a></li>
      <li class="tocqn" id="Q-textflow"><a href="FAQ-textflow.html">Flowing text around figures</a></li>
      <li class="tocqn" id="Q-slashbox"><a href="FAQ-slashbox.html">Diagonal separation in corner cells of tables</a></li>
      <li class="tocqn" id="Q-wholerow"><a href="FAQ-wholerow.html">How to change a whole row of a table</a></li>
      <li class="tocqn" id="Q-multirow"><a href="FAQ-multirow.html">Merging cells in a column of a table</a></li>
    <li class="tocsubsec" id="Floatingtablesfiguresetc"><span>Floating tables, figures, etc.</span>
      <li class="tocqn" id="Q-floatpages"><a href="FAQ-floatpages.html">Floats on their own on float pages</a></li>
      <li class="tocqn" id="Q-wideflt"><a href="FAQ-wideflt.html">Centring a very wide figure or table</a></li>
      <li class="tocqn" id="Q-2colfloat"><a href="FAQ-2colfloat.html">Placing two-column floats at bottom of page</a></li>
      <li class="tocqn" id="Q-mcfloat"><a href="FAQ-mcfloat.html">Floats in multicolumn setting</a></li>
      <li class="tocqn" id="Q-dpfloat"><a href="FAQ-dpfloat.html">Facing floats on 2-page spread</a></li>
      <li class="tocqn" id="Q-vertposfp"><a href="FAQ-vertposfp.html">Vertical layout of float pages</a></li>
      <li class="tocqn" id="Q-figurehere"><a href="FAQ-figurehere.html">Figure (or table) _exactly_ where I want it</a></li>
    <li class="tocsubsec" id="Footnotes"><span>Footnotes</span>
      <li class="tocqn" id="Q-footintab"><a href="FAQ-footintab.html">Footnotes in tables</a></li>
      <li class="tocqn" id="Q-ftnsect"><a href="FAQ-ftnsect.html">Footnotes in LaTeX section headings</a></li>
      <li class="tocqn" id="Q-ftncapt"><a href="FAQ-ftncapt.html">Footnotes in captions</a></li>
      <li class="tocqn" id="Q-repfootnote"><a href="FAQ-repfootnote.html">Footnotes whose texts are identical</a></li>
      <li class="tocqn" id="Q-multfoot"><a href="FAQ-multfoot.html">More than one sequence of footnotes</a></li>
      <li class="tocqn" id="Q-footnpp"><a href="FAQ-footnpp.html">Footnotes numbered ''per page''</a></li>
      <li class="tocqn" id="Q-run-fn-nos"><a href="FAQ-run-fn-nos.html">Not resetting footnote numbers per chapter</a></li>
    <li class="tocsubsec" id="Documentmanagement"><span>Document management</span>
      <li class="tocqn" id="Q-filename"><a href="FAQ-filename.html">What's the name of this file</a></li>
      <li class="tocqn" id="Q-filesused"><a href="FAQ-filesused.html">All the files used by this document</a></li>
      <li class="tocqn" id="Q-changebars"><a href="FAQ-changebars.html">Marking changed parts of your document</a></li>
      <li class="tocqn" id="Q-conditional"><a href="FAQ-conditional.html">Conditional compilation and ''comments''</a></li>
      <li class="tocqn" id="Q-docotherdir"><a href="FAQ-docotherdir.html">Bits of document from other directories</a></li>
      <li class="tocqn" id="Q-RCS"><a href="FAQ-RCS.html">Version control using RCS, CVS or the like</a></li>
      <li class="tocqn" id="Q-make"><a href="FAQ-make.html">Makefiles for LaTeX documents</a></li>
      <li class="tocqn" id="Q-howmanypp"><a href="FAQ-howmanypp.html">How many pages are there in my document?</a></li>
      <li class="tocqn" id="Q-inclplain"><a href="FAQ-inclplain.html">Including Plain TeX files in LaTeX</a></li>
    <li class="tocsubsec" id="Hyphenation"><span>Hyphenation</span>
      <li class="tocqn" id="Q-nohyph"><a href="FAQ-nohyph.html">My words aren't being hyphenated</a></li>
      <li class="tocqn" id="Q-weirdhyphen"><a href="FAQ-weirdhyphen.html">Weird hyphenation of words</a></li>
      <li class="tocqn" id="Q-oddhyphen"><a href="FAQ-oddhyphen.html">(Merely) peculiar hyphenation</a></li>
      <li class="tocqn" id="Q-hyphenaccents"><a href="FAQ-hyphenaccents.html">Accented words aren't hyphenated</a></li>
      <li class="tocqn" id="Q-newlang"><a href="FAQ-newlang.html">Using a new language with Babel</a></li>
      <li class="tocqn" id="Q-hyphoff"><a href="FAQ-hyphoff.html">Stopping all hyphenation</a></li>
      <li class="tocqn" id="Q-wdnohyph"><a href="FAQ-wdnohyph.html">Preventing hyphenation of a particular word</a></li>
      <li class="tocqn" id="Q-hyphexcept"><a href="FAQ-hyphexcept.html">Hyphenation exceptions</a></li>
    <li class="tocsubsec" id="Oddsandends"><span>Odds and ends</span>
      <li class="tocqn" id="Q-logos"><a href="FAQ-logos.html">Typesetting all those TeX-related logos</a></li>
      <li class="tocqn" id="Q-bold-extras"><a href="FAQ-bold-extras.html">How to do bold-tt or bold-sc</a></li>
      <li class="tocqn" id="Q-varwidth"><a href="FAQ-varwidth.html">Automatic sizing of `minipage`</a></li>
  <li class="tocsec" id="Symbolsetc"><span>Symbols, etc.</span>
      <li class="tocqn" id="Q-usesymb"><a href="FAQ-usesymb.html">Using symbols</a></li>
      <li class="tocqn" id="Q-numbersets"><a href="FAQ-numbersets.html">Symbols for the number sets</a></li>
      <li class="tocqn" id="Q-scriptfonts"><a href="FAQ-scriptfonts.html">Better script fonts for maths</a></li>
      <li class="tocqn" id="Q-boldgreek"><a href="FAQ-boldgreek.html">Setting bold Greek letters in LaTeX maths</a></li>
      <li class="tocqn" id="Q-prinvalint"><a href="FAQ-prinvalint.html">The Principal Value Integral symbol</a></li>
      <li class="tocqn" id="Q-underscore"><a href="FAQ-underscore.html">How to typeset an underscore character</a></li>
      <li class="tocqn" id="Q-atsign"><a href="FAQ-atsign.html">How to type an '@' sign?</a></li>
      <li class="tocqn" id="Q-euro"><a href="FAQ-euro.html">Typesetting the Euro sign</a></li>
      <li class="tocqn" id="Q-tradesyms"><a href="FAQ-tradesyms.html">How to get copyright, trademark, etc.</a></li>
      <li class="tocqn" id="Q-osf"><a href="FAQ-osf.html">Using ''old-style'' figures</a></li>
  <li class="tocsec" id="Macroprogramming"><span>Macro programming</span>
    <li class="tocsubsec" id="Genericmacrosandtechniques"><span>''Generic'' macros and techniques</span>
      <li class="tocqn" id="Q-linmacnames"><a href="FAQ-linmacnames.html">Non-letters in macro names</a></li>
      <li class="tocqn" id="Q-repeat-num"><a href="FAQ-repeat-num.html">Repeating a command _n_ times</a></li>
      <li class="tocqn" id="Q-repeat-set"><a href="FAQ-repeat-set.html">Repeating something for each 'thing' in a set</a></li>
      <li class="tocqn" id="Q-findwidth"><a href="FAQ-findwidth.html">Finding the width of a letter, word, or phrase</a></li>
      <li class="tocqn" id="Q-patch"><a href="FAQ-patch.html">Patching existing commands</a></li>
      <li class="tocqn" id="Q-compjobnam"><a href="FAQ-compjobnam.html">Comparing the ''job name''</a></li>
      <li class="tocqn" id="Q-isitanum"><a href="FAQ-isitanum.html">Is the argument a number?</a></li>
      <li class="tocqn" id="Q-hash"><a href="FAQ-hash.html">Defining macros within macros</a></li>
      <li class="tocqn" id="Q-spinmacro"><a href="FAQ-spinmacro.html">Spaces in macros</a></li>
      <li class="tocqn" id="Q-moren9"><a href="FAQ-moren9.html">How to break the 9-argument limit</a></li>
      <li class="tocqn" id="Q-keyval"><a href="FAQ-keyval.html">Key-value input for macros and package options</a></li>
      <li class="tocqn" id="Q-activechars"><a href="FAQ-activechars.html">Defining characters as macros</a></li>
      <li class="tocqn" id="Q-actinarg"><a href="FAQ-actinarg.html">Active characters in command arguments</a></li>
      <li class="tocqn" id="Q-csname"><a href="FAQ-csname.html">Defining a macro from an argument</a></li>
      <li class="tocqn" id="Q-cvtlatex"><a href="FAQ-cvtlatex.html">Transcribing LaTeX command definitions</a></li>
      <li class="tocqn" id="Q-empty"><a href="FAQ-empty.html">Detecting that something is empty</a></li>
      <li class="tocqn" id="Q-whatengine"><a href="FAQ-whatengine.html">Am I using PDFTeX, XeTeX or LuaTeX?</a></li>
      <li class="tocqn" id="Q-subverttoks"><a href="FAQ-subverttoks.html">Subverting a token register</a></li>
      <li class="tocqn" id="Q-isdef"><a href="FAQ-isdef.html">Is this command defined?</a></li>
    <li class="tocsubsec" id="LaTeXmacrotoolsandtechniques"><span>LaTeX macro tools and techniques</span>
      <li class="tocqn" id="Q-plninltxstar"><a href="FAQ-plninltxstar.html">Using Plain or primitive commands in LaTeX</a></li>
      <li class="tocqn" id="Q-atsigns"><a href="FAQ-atsigns.html">`` and `@` in macro names</a></li>
      <li class="tocqn" id="Q-protect"><a href="FAQ-protect.html">What's the reason for 'protection'?</a></li>
      <li class="tocqn" id="Q-edef"><a href="FAQ-edef.html">`\edef` does not work with `\protect`</a></li>
      <li class="tocqn" id="Q-ltxcmds"><a href="FAQ-ltxcmds.html">The definitions of LaTeX commands</a></li>
      <li class="tocqn" id="Q-oarglikesect"><a href="FAQ-oarglikesect.html">Optional arguments like `\section`</a></li>
      <li class="tocqn" id="Q-twooptarg"><a href="FAQ-twooptarg.html">More than one optional argument</a></li>
      <li class="tocqn" id="Q-cmdstar"><a href="FAQ-cmdstar.html">Commands defined with * options</a></li>
      <li class="tocqn" id="Q-ltxabbrv"><a href="FAQ-ltxabbrv.html">LaTeX internal ''abbreviations'', etc.</a></li>
      <li class="tocqn" id="Q-ltxhash"><a href="FAQ-ltxhash.html">Defining LaTeX commands within other commands</a></li>
      <li class="tocqn" id="Q-printvar"><a href="FAQ-printvar.html">How to print contents of variables?</a></li>
      <li class="tocqn" id="Q-labelcount"><a href="FAQ-labelcount.html">Using labels as counter values</a></li>
    <li class="tocsubsec" id="LaTeXmacroprogramming"><span>LaTeX macro programming</span>
      <li class="tocqn" id="Q-fixnam"><a href="FAQ-fixnam.html">How to change LaTeX's ''fixed names''</a></li>
      <li class="tocqn" id="Q-latexwords"><a href="FAQ-latexwords.html">Changing the words [`babel`](http://ctan.org/pkg/babel) uses</a></li>
      <li class="tocqn" id="Q-running-nos"><a href="FAQ-running-nos.html">Running equation, figure and table numbering</a></li>
      <li class="tocqn" id="Q-labelctr"><a href="FAQ-labelctr.html">Making labels from a counter</a></li>
      <li class="tocqn" id="Q-oddpage"><a href="FAQ-oddpage.html">Finding if you're on an odd or an even page</a></li>
      <li class="tocqn" id="Q-labelformat"><a href="FAQ-labelformat.html">How to change the format of labels</a></li>
      <li class="tocqn" id="Q-seccntfmt"><a href="FAQ-seccntfmt.html">Adjusting the presentation of section numbers</a></li>
      <li class="tocqn" id="Q-spaftend"><a href="FAQ-spaftend.html">There's a space added after my environment</a></li>
      <li class="tocqn" id="Q-labundef"><a href="FAQ-labundef.html">Finding if a label is undefined</a></li>
      <li class="tocqn" id="Q-addtoreset"><a href="FAQ-addtoreset.html">Master and slave counters</a></li>
      <li class="tocqn" id="Q-fontsize"><a href="FAQ-fontsize.html">Fonts at arbitrary sizes</a></li>
      <li class="tocqn" id="Q-latexqual"><a href="FAQ-latexqual.html">The quality of your LaTeX</a></li>
      <li class="tocqn" id="Q-ltx-csv"><a href="FAQ-ltx-csv.html">Process a CSV file in LaTeX</a></li>
  <li class="tocsec" id="ThingsareGoingWronghellip"><span>Things are Going Wrong&hellip;</span>
    <li class="tocsubsec" id="Gettingthingstofit"><span>Getting things to fit</span>
      <li class="tocqn" id="Q-enlarge"><a href="FAQ-enlarge.html">Enlarging TeX</a></li>
      <li class="tocqn" id="Q-usepictex"><a href="FAQ-usepictex.html">Why can't I load PicTeX?</a></li>
    <li class="tocsubsec" id="Makingthingsstaywhereyouwantthem"><span>Making things stay where you want them</span>
      <li class="tocqn" id="Q-floats"><a href="FAQ-floats.html">Moving tables and figures in LaTeX</a></li>
      <li class="tocqn" id="Q-underline"><a href="FAQ-underline.html">Underlined text won't break</a></li>
      <li class="tocqn" id="Q-widows"><a href="FAQ-widows.html">Controlling widows and orphans</a></li>
    <li class="tocsubsec" id="Thingshavegoneaway"><span>Things have ''gone away''</span>
      <li class="tocqn" id="Q-oldfontnames"><a href="FAQ-oldfontnames.html">Old LaTeX font references such as `\tenrm`</a></li>
      <li class="tocqn" id="Q-misssymb"><a href="FAQ-misssymb.html">Missing symbol commands</a></li>
      <li class="tocqn" id="Q-msxy"><a href="FAQ-msxy.html">Where are the `msx` and `msy` fonts?</a></li>
      <li class="tocqn" id="Q-amfonts"><a href="FAQ-amfonts.html">Where are the `am` fonts?</a></li>
      <li class="tocqn" id="Q-initex"><a href="FAQ-initex.html">What's happened to `initex`?</a></li>
  <li class="tocsec" id="Whydoesitdothat"><span>Why does it _do_ that?</span>
    <li class="tocsubsec" id="Commonerrors"><span>Common errors</span>
      <li class="tocqn" id="Q-crossref"><a href="FAQ-crossref.html">LaTeX gets cross-references wrong</a></li>
      <li class="tocqn" id="Q-newlineargs"><a href="FAQ-newlineargs.html">Start of line goes awry</a></li>
      <li class="tocqn" id="Q-verbwithin"><a href="FAQ-verbwithin.html">Why doesn't verbatim work within &hellip;?</a></li>
      <li class="tocqn" id="Q-noline"><a href="FAQ-noline.html">''No line here to end''</a></li>
      <li class="tocqn" id="Q-vertspacefloat"><a href="FAQ-vertspacefloat.html">Extra vertical space in floats</a></li>
      <li class="tocqn" id="Q-centre-flt"><a href="FAQ-centre-flt.html">Why is my table/figure/&hellip; not centred?</a></li>
      <li class="tocqn" id="Q-2colfltorder"><a href="FAQ-2colfltorder.html">Two-column float numbers out of order</a></li>
      <li class="tocqn" id="Q-tabacc"><a href="FAQ-tabacc.html">Accents misbehave in `tabbing`</a></li>
      <li class="tocqn" id="Q-alreadydef"><a href="FAQ-alreadydef.html">Package reports ''command already defined''</a></li>
      <li class="tocqn" id="Q-zerochap"><a href="FAQ-zerochap.html">Why are my sections numbered 0.1 &hellip;?</a></li>
      <li class="tocqn" id="Q-breaklinks"><a href="FAQ-breaklinks.html">Link text doesn't break at end line</a></li>
      <li class="tocqn" id="Q-wrongpn"><a href="FAQ-wrongpn.html">Page number is wrong at start of page</a></li>
      <li class="tocqn" id="Q-matchbrak"><a href="FAQ-matchbrak.html">My brackets don't match</a></li>
      <li class="tocqn" id="Q-pdf-fig-chars"><a href="FAQ-pdf-fig-chars.html">Characters disappear from figures in PDFTeX</a></li>
      <li class="tocqn" id="Q-emptynum"><a href="FAQ-emptynum.html">I asked for ''empty'', but the page is numbered</a></li>
    <li class="tocsubsec" id="Commonmisunderstandings"><span>Common misunderstandings</span>
      <li class="tocqn" id="Q-include"><a href="FAQ-include.html">What's going on in my `\include` commands?</a></li>
      <li class="tocqn" id="Q-paraparam"><a href="FAQ-paraparam.html">Why does it ignore paragraph parameters?</a></li>
      <li class="tocqn" id="Q-casechange"><a href="FAQ-casechange.html">Case-changing oddities</a></li>
      <li class="tocqn" id="Q-splitfoot"><a href="FAQ-splitfoot.html">Why does LaTeX split footnotes across pages?</a></li>
      <li class="tocqn" id="Q-marginparside"><a href="FAQ-marginparside.html">Getting `\marginpar` on the right side</a></li>
      <li class="tocqn" id="Q-misschar"><a href="FAQ-misschar.html">Where have my characters gone?</a></li>
      <li class="tocqn" id="Q-rerun"><a href="FAQ-rerun.html">''Rerun'' messages won't go away</a></li>
      <li class="tocqn" id="Q-xspace"><a href="FAQ-xspace.html">Commands gobble following space</a></li>
      <li class="tocqn" id="Q-overfull"><a href="FAQ-overfull.html">(La)TeX makes overfull lines</a></li>
      <li class="tocqn" id="Q-exscale"><a href="FAQ-exscale.html">Maths symbols don't scale up</a></li>
      <li class="tocqn" id="Q-linespread"><a href="FAQ-linespread.html">Why doesn't `\linespread` work?</a></li>
      <li class="tocqn" id="Q-baselinepar"><a href="FAQ-baselinepar.html">Only one `\baselineskip` per paragraph</a></li>
      <li class="tocqn" id="Q-tocloftwrong"><a href="FAQ-tocloftwrong.html">Numbers too large in table of contents, etc.</a></li>
      <li class="tocqn" id="Q-gutter"><a href="FAQ-gutter.html">Why is the inside margin so narrow?</a></li>
    <li class="tocsubsec" id="WhyshouldntI"><span>Why shouldn't I?</span>
      <li class="tocqn" id="Q-t1enc"><a href="FAQ-t1enc.html">Why use [`fontenc`](http://ctan.org/pkg/fontenc) rather than [`t1enc`](http://ctan.org/pkg/t1enc)?</a></li>
      <li class="tocqn" id="Q-why-inp-font"><a href="FAQ-why-inp-font.html">Why bother with [`inputenc`](http://ctan.org/pkg/inputenc) and [`fontenc`](http://ctan.org/pkg/fontenc)?</a></li>
      <li class="tocqn" id="Q-eqnarray"><a href="FAQ-eqnarray.html">Why not use `eqnarray`?</a></li>
      <li class="tocqn" id="Q-dolldoll"><a href="FAQ-dolldoll.html">Why use `\[` &hellip;`\]` in place of `$$` &hellip; `$$`?</a></li>
      <li class="tocqn" id="Q-2letterfontcmd"><a href="FAQ-2letterfontcmd.html">What's wrong with `\bf`, `\it`, etc.?</a></li>
      <li class="tocqn" id="Q-newfontstar"><a href="FAQ-newfontstar.html">What's wrong with `\newfont`?</a></li>
  <li class="tocsec" id="ThejoyofTeXerrors"><span>The joy of TeX errors</span>
      <li class="tocqn" id="Q-erroradvice"><a href="FAQ-erroradvice.html">How to approach errors</a></li>
      <li class="tocqn" id="Q-errstruct"><a href="FAQ-errstruct.html">The structure of TeX error messages</a></li>
      <li class="tocqn" id="Q-extrabrace"><a href="FAQ-extrabrace.html">An extra ``}'??</a></li>
      <li class="tocqn" id="Q-semanticnest"><a href="FAQ-semanticnest.html">Capacity exceeded [semantic nest &hellip;]</a></li>
      <li class="tocqn" id="Q-noroom"><a href="FAQ-noroom.html">No room for a new '_thing_'</a></li>
      <li class="tocqn" id="Q-epsf"><a href="FAQ-epsf.html">`epsf` gives up after a bit</a></li>
      <li class="tocqn" id="Q-badhyph"><a href="FAQ-badhyph.html">Improper `\hyphenation` will be flushed</a></li>
      <li class="tocqn" id="Q-optionclash"><a href="FAQ-optionclash.html">Option clash for package</a></li>
      <li class="tocqn" id="Q-optclash"><a href="FAQ-optclash.html">Option clash for package</a></li>
      <li class="tocqn" id="Q-tmupfl"><a href="FAQ-tmupfl.html">''Too many unprocessed floats''</a></li>
      <li class="tocqn" id="Q-atvert"><a href="FAQ-atvert.html">`\spacefactor` complaints</a></li>
      <li class="tocqn" id="Q-endingroup"><a href="FAQ-endingroup.html">`\end` occurred inside a group</a></li>
      <li class="tocqn" id="Q-nonum"><a href="FAQ-nonum.html">''Missing number, treated as zero''</a></li>
      <li class="tocqn" id="Q-typend"><a href="FAQ-typend.html">''Please type a command or say `\end`</a></li>
      <li class="tocqn" id="Q-unkgrfextn"><a href="FAQ-unkgrfextn.html">''Unknown graphics extension''</a></li>
      <li class="tocqn" id="Q-nodollar"><a href="FAQ-nodollar.html">''Missing `$` inserted''</a></li>
      <li class="tocqn" id="Q-fontunavail"><a href="FAQ-fontunavail.html">Warning: ''Font shape &hellip; not available''</a></li>
      <li class="tocqn" id="Q-buffovl"><a href="FAQ-buffovl.html">Unable to read an entire line</a></li>
      <li class="tocqn" id="Q-formatstymy"><a href="FAQ-formatstymy.html">''Fatal format file error; I'm stymied''</a></li>
      <li class="tocqn" id="Q-nonpdfsp"><a href="FAQ-nonpdfsp.html">Non-PDF special ignored!</a></li>
      <li class="tocqn" id="Q-8000"><a href="FAQ-8000.html">Mismatched mode ljfour and resolution 8000</a></li>
      <li class="tocqn" id="Q-toodeep"><a href="FAQ-toodeep.html">''Too deeply nested''</a></li>
      <li class="tocqn" id="Q-inputlev"><a href="FAQ-inputlev.html">Capacity exceeded&nbsp;&mdash; input levels</a></li>
      <li class="tocqn" id="Q-hyperdupdest"><a href="FAQ-hyperdupdest.html">PDFTeX destination &hellip; ignored</a></li>
      <li class="tocqn" id="Q-altabcr"><a href="FAQ-altabcr.html">Alignment tab changed to `\cr`</a></li>
      <li class="tocqn" id="Q-divzero"><a href="FAQ-divzero.html">Graphics division by zero</a></li>
      <li class="tocqn" id="Q-missbegdoc"><a href="FAQ-missbegdoc.html">Missing `\begin`{document}</a></li>
      <li class="tocqn" id="Q-normalszmiss"><a href="FAQ-normalszmiss.html">`\normalsize` not defined</a></li>
      <li class="tocqn" id="Q-manymathalph"><a href="FAQ-manymathalph.html">Too many math alphabets</a></li>
      <li class="tocqn" id="Q-ouparmd"><a href="FAQ-ouparmd.html">Not in outer par mode</a></li>
      <li class="tocqn" id="Q-errmissitem"><a href="FAQ-errmissitem.html">Perhaps a missing `\item`?</a></li>
      <li class="tocqn" id="Q-errparnum"><a href="FAQ-errparnum.html">Illegal parameter number in definition</a></li>
      <li class="tocqn" id="Q-fllost"><a href="FAQ-fllost.html">Float(s) lost</a></li>
      <li class="tocqn" id="Q-parmoderr"><a href="FAQ-parmoderr.html">Not in outer par mode</a></li>
      <li class="tocqn" id="Q-texorpdf"><a href="FAQ-texorpdf.html">Token not allowed in PDFDocEncoded string</a></li>
      <li class="tocqn" id="Q-checksum"><a href="FAQ-checksum.html">Checksum mismatch in font</a></li>
      <li class="tocqn" id="Q-entercompmode"><a href="FAQ-entercompmode.html">Entering compatibility mode</a></li>
      <li class="tocqn" id="Q-includeother"><a href="FAQ-includeother.html">LaTeX won't include from other directories</a></li>
      <li class="tocqn" id="Q-expl3-old"><a href="FAQ-expl3-old.html">Support package [`expl3`](http://ctan.org/pkg/expl3) too old</a></li>
  <li class="tocsec" id="CurrentTeXrelatedprojects"><span>Current TeX-related projects</span>
      <li class="tocqn" id="Q-LaTeX3"><a href="FAQ-LaTeX3.html">The LaTeX project</a></li>
      <li class="tocqn" id="Q-mathml"><a href="FAQ-mathml.html">Future WWW technologies and (La)TeX</a></li>
      <li class="tocqn" id="Q-textrace"><a href="FAQ-textrace.html">Making outline fonts from MetaFont</a></li>
      <li class="tocqn" id="Q-WYGexpts"><a href="FAQ-WYGexpts.html">The TeX document preparation environment</a></li>
      <li class="tocqn" id="Q-omegaleph"><a href="FAQ-omegaleph.html">Omega and Aleph</a></li>
      <li class="tocqn" id="Q-xetex"><a href="FAQ-xetex.html">XeTeX</a></li>
      <li class="tocqn" id="Q-luatex"><a href="FAQ-luatex.html">PDFTeX and LuaTeX</a></li>
      <li class="tocqn" id="Q-ant"><a href="FAQ-ant.html">The ANT typesetting system</a></li>
      <li class="tocqn" id="Q-extex"><a href="FAQ-extex.html">The ExTeX project</a></li>
      <li class="tocqn" id="Q-biblatex"><a href="FAQ-biblatex.html">Replacing the BibTeX&ndash;LaTeX mechanism</a></li>
  <li class="tocsec" id="Yourestillstuck"><span>You're still stuck?</span>
      <li class="tocqn" id="Q-noans"><a href="FAQ-noans.html">You don't understand the answer</a></li>
      <li class="tocqn" id="Q-newans"><a href="FAQ-newans.html">Submitting new material for the FAQ</a></li>
      <li class="tocqn" id="Q-bug"><a href="FAQ-bug.html">What to do if you find a bug</a></li>
      <li class="tocqn" id="Q-latexbug"><a href="FAQ-latexbug.html">Reporting a LaTeX bug</a></li>

</div>








