NOTE: STILL CAN'T FIGURE OUT HOW TO HAVE VARIOUS XML FORMATS TAKE PRECEDENT OVER THE FORMAT ID 638...


MINiML (MIAME Notation in Markup Language)
What is MINiML?
Why another data exchange format?
MINiML Elements and Content Guidelines
What is MINiML?Back to top
MINiML (MIAME Notation in Markup Language, pronounced 'minimal') is a data exchange format optimized for microarray gene expression data, as well as many other types of high-throughput molecular abundance data. MINiML assumes only very basic relations between objects: Platform (e.g., array), Sample (e.g., hybridization), and Series (experiment). MINiML captures all components of the MIAME checklist, as well as any additional information that the submitter wants to provide. MINiML uses XML Schema as syntax.

MINiML XML Schema definition is available.

GEO supports both data submissions and data retrievals in MINiML:

All GEO data can be downloaded as MINiML files from our FTP site.
MINiML files can be uploaded using our batch submission page.
Why another data exchange format?Back to top
GEO has been using SOFT (Simple Omnibus Format in Text) as a data exchange format. An advantage of SOFT is its simplicity which makes it suitable for parsing and generation by virtually any text manipulating language. However, excellent tools exist today to programmatically support XML formats and provide better document structure, syntax definitions or data rendering. MINiML is effectively an XML rendering of SOFT.

GEO fully supports both SOFT and MINiML.

https://www.ncbi.nlm.nih.gov/geo/info/MINiML.html
