InfoViewer

InfoViewer (IV) is a web browser and search engine built into MSDS, together with a hierarchical database of documents variously called InfoViewer Titles, InfoViewer Topics, or IVTs for short.

IVTs are displayed in child windows of the MSDOS main window, just like source, header, and text files. Unfortunately, only one IVT can be displayed at a time.

Although IV will display ordinary web pages (.html files,) IVTs are contained in .ivt files, which can't be displayed using the Netscape or Internet Explorer browsers. (Typical of Microsoft, right?) Like web pages, IVTs can contain links to other IVTs and to web pages.

IV provides three ways to locate IVTs: the table of contents tree control, the search engine, and the F1 key (a.k.a. context-sensitive help).

http://www.cs.sjsu.edu/faculty/pearce/lab/lab5/lab5.html

.ivt files are the file format of the Microsoft InfoViewer program. This format was the native help format used with DevStudio for a while, also the MSDN subscriber CD's shipped during at least 1998 contained their documentation in this format.
ivtdir.wcx adds support of .ivt file format to Total Commander, allows you to extract and search files in .ivt.

https://totalcmd.net/plugring/ivtdir.html

A cunning utility that converts .ivt files back into standard html. .ivt files are the file format of the Microsoft InfoViewer program. This format was the native help format used with DevStudio for a while, also the MSDN subscriber CD's shipped during at least 1998 contained their documentation in this format.

The reason I wrote it was to convert the MSDN documentation for the Office 97 File Formats into readable HTML for the wv project (http://www.wvWare.com). The infoviewer program only ran under windows which was not acceptable.

Install
 make
copy ivt2html manually to a bin directory


http://www.skynet.ie/~caolan/Packages/ivt2html.html
