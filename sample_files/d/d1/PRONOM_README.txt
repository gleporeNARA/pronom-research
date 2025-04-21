The CITIfile Data Format
Description and Overview
CITIfile is a standardized data format, used for exchanging data between different
computers and instruments. CITIfile is an abbreviation for “Common Instrumentation
Transfer and Interchange file”. This standard has been a group effort between instrument
designers and designers of computer-aided design programs. As much as possible, CITIfile
meets current needs for data transfer, and it was designed to be expandable so it can meet
future needs.
CITIfile defines how the data inside an ASCII package is formatted. Since it is not tied to
any particular disk or transfer format, it can be used with any operating system (BASIC,
DOS, UNIX, etc.), with any disk format (LIF, DOS, HFS, etc.), or with any transfer
mechanism (disk, LAN, GPIB, etc.). By careful implementation of the standard,
instruments and software packages using CITIfile are able to load and work with data
created on another instrument or computer. It is possible, for example, for a network
analyzer to directly load and display data measured on a scalar analyzer, or for a software
package running on a computer to read data measured on the network analyzer.
Data Formats
There are two main types of data formats: binary and ASCII. CITIfile uses the ASCII text
format. While this format does take up more bytes of space than a binary format, ASCII
data is a transportable, standard type of format which is supported by all operating
systems. In addition, the ASCII format is accepted by most text editors. This allows files to
be created, examined, and edited easily, making CITIfile easier to test and debug.
File and Operating System Formats
CITIfile was designed to be independent of the data storage mechanism, and therefore may
be implemented for any file system. However transfer between file systems may sometimes
be necessary. Any commercially available software that has the ability to transfer ASCII
files between systems may be used to transfer CITIfile data.

A CITIfile Package
A typical package is divided into two parts: The first part, the header, is made up of
keywords and setup information. The second part, the data, usually consists of one or more
arrays of data. Example 1 shows the basic structure of a CITIfile package:
Example 1, A CITIfile Package
The “header” part CITIFILE A.01.00
NAME MEMORY
VAR FREQ MAG 3
DATA S RI

https://www.changpuak.ch/electronics/downloads/HP%208753%20ES_ET%20ref.pdf
