AmigaGuide is a hypertext document file format designed for the Amiga. Files are stored in ASCII so it is possible to read and edit a file without the need for special software.

Since Workbench 2.1 an Amiga Guide system for O.S. inline help files and reading manuals with hypertext formatting elements was launched in AmigaOS and based on a viewer called simply "AmigaGuide" and it has been included as standard feature on the Amiga system. Users with earlier versions of Workbench could view the files by downloading the program and library AmigaGuide 34 distributed with public domain collections of floppy disks (for example on Fred Fish collection) or it could be downloaded directly from Aminet software repository.[1] Starting from AmigaOS 3.0 the AmigaGuide tool was replaced with more the complete and flexible MultiView.

AmigaGuide and MultiView
AmigaGuide is the default tool for viewing AmigaGuide files used with AmigaOS 2.1, and is also a basic text viewer for ASCII documents. It can handle multiple files thanks to cross-linking tables called XREF.[2]

MultiView is basically a void container and a natural GUI for the various datatypes that open MultiView as a default tool when any media file (including AmigaGuide files) are invoked by mouse clicking and recognized by the existing correspondent datatype.

AmigaGuide readers on various platforms
Although the AmigaGuide format is almost solely used for documenting Amiga programs, viewers are available for several other platforms:

Java - JAGUaR
DOS - AGView[permanent dead link]
Windows - AGWViewer WinGuide (LHA archive) WinGuide (ZIP archive)
Linux - AGReader
Macintosh - Grotag A little free Open Source viewer of AmigaGuide files on Macintosh computers.
Syntax
An AmigaGuide document is a simple ASCII-formatted document, so it can be edited by any normal text editor and viewed by any text reader software.

AmigaGuide commands all begin with the '@' (pronounced 'at') symbol. To be recognized as an AmigaGuide document, the first line should include this text:

@database Amigaguide.guide

There are three categories of commands: Global, Node, and Attributes. Global commands are usually specified at the beginning of the document, before any nodes are defined, and apply to all the nodes in the document. Technically, they can be anywhere. Many commands can be used both globally and in nodes.

Node commands are usable inside a node (after an '@NODE' and before an "@ENDNODE"), and affect only the node in which they are used.

Attributes may be specified anywhere in a normal line. In addition to the '@' symbol, attributes always use a pair of braces ('{' and '}') to enclose the attribute name and possibly additional arguments.

Main commands
The commands "INDEX", "HELP", "NEXT", "PREV", and "TOC" and the all-purpose hypertext link specify other nodes to jump to. They all support the naming of nodes within the current document, but they also all support a path along with that name which lets the node be located in any AmigaGuide document.

They will be shown as simply embossed text squared buttons in the page of MultiView.

https://en.wikipedia.org/wiki/AmigaGuide
