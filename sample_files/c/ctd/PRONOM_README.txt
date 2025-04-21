This document will describe the WHP-Exchange formats used by the CCHDO for CTD and bottle. The WHP-exchange formats provide simplified exchange and improved readability of hydrographic data. WHP-exchange data files carry the essential information from CTD and water sample profiles. WHP-exchange is a rigorously-described comma-delimited (csv) format designed to ease data exchange and simplify data import.

Overview
The WHP-exchange bottle and CTD data formats include these features:

UTF-8 Encoded

Spreadsheet-like

Comma-delimited values (csv)

No special meaning to blank/empty spaces

Station information in every line in the file (bottle) or in the top lines in each file (CTD)

Only one missing data value defined for all parameters

Positions in decimal degrees

Dates in ISO 8601 YYYYMMDD format

File Format Indicator
The first bytes of a WHP-exchange file MUST contain a file identifier and SHOULD have a creation stamp separated by a COMMA (U+002C) ,.

CTD File Indicator
The first bytes of a WHP-exchange CTD file must be the following 3 byte sequence 43 54 44. This is equivalent to CTD when encoded in UTF-8.

https://exchange-format.readthedocs.io/en/latest/index.html
