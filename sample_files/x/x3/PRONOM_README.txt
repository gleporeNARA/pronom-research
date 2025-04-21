VCDIFF is a format and an algorithm for delta encoding, described in IETF's RFC 3284. The algorithm is based on Jon Bentley and Douglas McIlroy's paper "Data Compression Using Long Common Strings"[1] written in 1999.[citation needed] VCDIFF is used as one of the delta encoding algorithms in "Delta encoding in HTTP" (RFC 3229) and was employed in Google's Shared Dictionary Compression Over HTTP technology, formerly used in their Chrome browser.

https://en.wikipedia.org/wiki/VCDIFF


4.1 The Header Section

   Each delta file starts with a header section organized as below.
   Note the convention that square-brackets enclose optional items.

         Header1                                  - byte = 0xD6
         Header2                                  - byte = 0xC3
         Header3                                  - byte = 0xC4
         Header4                                  - byte
         Hdr_Indicator                            - byte
         [Secondary compressor ID]                - byte
         [Length of code table data]              - integer
         [Code table data]

         
         
https://datatracker.ietf.org/doc/html/rfc3284
