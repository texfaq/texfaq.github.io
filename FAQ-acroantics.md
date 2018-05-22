# Adobe `Reader` messing with print size

Printing from Adobe `Reader` shrinks the page ''to fit''
(_by default_).  Unfortunately, its calculation doesn't consider
the existing margins of the document, so that it shrinks what it
believes is your whole page onto what it believes is its output page.
The effect typically looks as if your margins have expanded.

Solve this problem by adjusting the `Reader`s default in the
print dialogue; unfortunately, this dialogue varies from one version
to the next:
  

-  `Reader` version 7:

     Page Scaling (default: ''Fit to printer margins'')&nbsp;&mdash; change to
     ''None'', and

     Scale (default 95
     ''100
-   Adobe Reader 6:

    in the print dialogue, on the ''copies[[[&]]]pages'' pane, you'll find a
    popup menu/drop-down list titled ''Page Scaling''&nbsp;&mdash; change to ''None''.
-  Windows, Linux Acrobat (Reader) 5.0:

    In the print dialog, make sure the ''Shrink oversized pages to fit''
    checkbox is unchecked.  It may also be useful to uncheck the
    ''Expand small pages to fit paper size'' checkbox as well.

