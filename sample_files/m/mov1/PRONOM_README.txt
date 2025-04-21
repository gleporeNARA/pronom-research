This document,which supersedes the previous QuickTimeFileFormatSpecification, June, 2000, describes
the format and content of QuickTime files. It is current as of March, 2001, and is intended primarily
for developers who need to work with QuickTime files outside the context of the QuickTime
environment.For example, ifyou are developinga non-QuickTime application that imports QuickTime
files or works with QuickTime VR, you need to understand the material in this book.
QuickTime itself provides a number of high-level functions thatyou can use to create and manipulate
QuickTime files, without requiring you to understand the actual file format. These functions serve
to insulate developers from the low-level details of operation. But not all kinds of QuickTime files
can be created without the information presented here.
This document assumes that the reader is familiar with the basic concepts of digital video and digital
audio, as well as with QuickTime.

Overview of the File Format
A QuickTime file is simply a collection of atoms. QuickTime does not impose any rules about the
order of these atoms.
Figure 1-6 (page 24) depicts a typical QuickTime file.
Figure 1-6 The structure of a QuickTime file
Atom size 4
Data Type = 'mdat' Bytes 4
Variable

https://developer.apple.com/standards/qtff-2001.pdf
