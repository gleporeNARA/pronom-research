ATF  -  Axon Text File format (*.atf)

ATF is a tab-delimited text file format that can be read by typical spreadsheet programs such as Microsoft Excel. It is used for GenePix Array List (GAL) files, and GenePix Results (GPR) files.

An ATF text file consists of records. Each line in the text file is a record. Each record may consist of several fields, separated by a field separator (column delimiter). The tab and comma characters are field separators. Space characters around a tab or comma are ignored and considered part of the field separator. Text strings are enclosed in quotation marks to ensure that any embedded spaces, commas and tabs are not mistaken for field separators.

The group of records at the beginning of the file is called the file header. The file header describes the file structure and includes column titles, units, and comments.

ATF File Structure

First header record    Format: ATF (all caps), Version number

https://web.archive.org/web/20050305032050/http://www.axon.com/gn_GenePix_File_Formats.html#example
